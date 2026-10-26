# Downloads a starter sound library for the OctopusEAX soundboard.
#   Funny, Cinematic, Animals : Mixkit free sound effects (https://mixkit.co/license/#sfxFree)
#   Minecraft                 : official Mojang asset CDN, for your own use only
# Output: %APPDATA%\OctopusEAX\sounds\<Category>\*.mp3  (the app scans this folder on start)
param(
    [string]$Out = (Join-Path $env:APPDATA 'OctopusEAX\sounds'),
    [int]$PerTag = 12
)
$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$ffmpeg = (Get-Command ffmpeg -ErrorAction SilentlyContinue).Source

function Clean([string]$s) { ($s -replace '[\\/:*?"<>|]', '').Trim() }

function Get-Mixkit([string]$category, [string[]]$tags, [int]$limit) {
    $dir = Join-Path $Out $category
    New-Item -ItemType Directory -Force $dir | Out-Null
    $seen = @{}
    foreach ($tag in $tags) {
        $taken = 0
        try { $html = (Invoke-WebRequest -UseBasicParsing "https://mixkit.co/free-sound-effects/$tag/" -TimeoutSec 30).Content }
        catch { Write-Host "skip $tag"; continue }
        $cards = $html -split 'item-grid-card__title'
        for ($i = 1; $i -lt $cards.Count -and $taken -lt $limit; ++$i) {
            $t = [regex]::Match($cards[$i], '>\s*([^<]+?)\s*</h2>').Groups[1].Value
            $u = [regex]::Match($cards[$i], 'https://assets\.mixkit\.co/active_storage/sfx/(\d+)/\d+-preview\.mp3')
            if (-not $t -or -not $u.Success -or $seen[$u.Groups[1].Value]) { continue }
            $seen[$u.Groups[1].Value] = $true
            $file = Join-Path $dir ((Clean $t) + '.mp3')
            if (-not (Test-Path $file)) { Invoke-WebRequest -UseBasicParsing $u.Value -OutFile $file -TimeoutSec 60 }
            ++$taken
        }
        Write-Host "$category / $tag : $taken"
    }
}

function Get-Minecraft {
    $dir = Join-Path $Out 'Minecraft'
    New-Item -ItemType Directory -Force $dir | Out-Null
    $m = Invoke-RestMethod 'https://piston-meta.mojang.com/mc/game/version_manifest_v2.json'
    $v = Invoke-RestMethod (($m.versions | Where-Object id -eq $m.latest.release).url)
    $objects = (Invoke-RestMethod $v.assetIndex.url).objects
    $pick = [ordered]@{
        'random/explode1' = 'TNT explosion'; 'random/fuse' = 'TNT fuse'; 'mob/creeper/say1' = 'Creeper hiss';
        'mob/creeper/death' = 'Creeper death'; 'random/levelup' = 'Level up'; 'random/orb' = 'XP orb';
        'random/anvil_land' = 'Anvil land'; 'random/anvil_use' = 'Anvil use'; 'random/bow' = 'Bow shot';
        'random/pop' = 'Item pop'; 'random/click' = 'Click'; 'random/door_open' = 'Door open';
        'random/burp' = 'Burp'; 'random/eat1' = 'Eating'; 'random/glass1' = 'Glass break'; 'random/break' = 'Tool break';
        'damage/hit1' = 'Oof hit'; 'item/totem/use_totem' = 'Totem of undying';
        'mob/endermen/scream1' = 'Enderman scream'; 'mob/endermen/stare' = 'Enderman stare';
        'mob/enderdragon/growl1' = 'Ender dragon growl'; 'mob/enderdragon/end' = 'Ender dragon death';
        'mob/wither/spawn' = 'Wither spawn'; 'mob/zombie/say1' = 'Zombie';
        'mob/skeleton/say1' = 'Skeleton'; 'mob/spider/say1' = 'Spider'; 'mob/silverfish/say1' = 'Silverfish';
        'mob/ghast/scream1' = 'Ghast scream'; 'mob/ghast/moan1' = 'Ghast moan'; 'mob/guardian/curse' = 'Guardian curse';
        'mob/phantom/bite1' = 'Phantom bite'; 'mob/slime/big1' = 'Slime'; 'mob/blaze/breathe1' = 'Blaze breath';
        'mob/villager/no1' = 'Villager no'; 'mob/villager/yes1' = 'Villager yes'; 'mob/villager/idle1' = 'Villager hmm';
        'mob/villager/haggle1' = 'Villager haggle'; 'mob/villager/hit1' = 'Villager hurt';
        'mob/warden/roar_1' = 'Warden roar'; 'mob/warden/sonic_boom1' = 'Warden sonic boom';
        'mob/hoglin/angry1' = 'Hoglin'; 'mob/panda/pre_sneeze' = 'Panda sneeze'; 'mob/axolotl/idle_air1' = 'Axolotl';
        'fireworks/blast1' = 'Firework blast'; 'mob/cat/meow1' = 'Cat meow'; 'mob/cow/say1' = 'Cow';
        'mob/pig/say1' = 'Pig'; 'mob/sheep/say1' = 'Sheep'; 'mob/chicken/say1' = 'Chicken'; 'mob/horse/idle1' = 'Horse'
    }
    $taken = 0
    foreach ($k in $pick.Keys) {
        $o = $objects.PSObject.Properties["minecraft/sounds/$k.ogg"]
        if (-not $o) { continue }
        $hash = $o.Value.hash
        $ogg = Join-Path $dir ($pick[$k] + '.ogg')
        $mp3 = Join-Path $dir ($pick[$k] + '.mp3')
        if (Test-Path $mp3) { ++$taken; continue }
        Invoke-WebRequest -UseBasicParsing "https://resources.download.minecraft.net/$($hash.Substring(0, 2))/$hash" -OutFile $ogg -TimeoutSec 60
        if ($ffmpeg) {
            & $ffmpeg -y -loglevel error -i $ogg -ar 48000 -b:a 160k $mp3
            Remove-Item $ogg
        }
        ++$taken
    }
    Write-Host "Minecraft : $taken"
}

Get-Mixkit 'Funny' @('cartoon', 'laugh', 'fart', 'funny', 'clown') $PerTag
Get-Mixkit 'Cinematic' @('cinematic', 'horror', 'movie', 'boom', 'whoosh') $PerTag
Get-Mixkit 'Animals' @('animals', 'cat', 'dog', 'bird', 'chicken', 'monkey') $PerTag
Get-Minecraft
Write-Host "Done: $Out"
