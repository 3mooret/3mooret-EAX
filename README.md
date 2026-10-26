<h1 align="center">3mooret EAX</h1>

<p align="center">
  <b>Voice effects, a real mixer and a soundboard for Discord and games on Windows.</b><br>
  <b>مؤثرات صوت وميكسر ولوحة أصوات لديسكورد والألعاب على ويندوز.</b><br>
  Free and open source &bull; مجاني ومفتوح المصدر
</p>

<p align="center">
  <a href="https://github.com/3mooret/3mooret-EAX/releases/latest"><img alt="Download" src="https://img.shields.io/badge/Download-latest%20release-8b5cf6?style=for-the-badge"></a>
  <img alt="Windows 10/11" src="https://img.shields.io/badge/Windows-10%20%7C%2011-3b82f6?style=for-the-badge">
  <img alt="License MIT" src="https://img.shields.io/badge/License-MIT-22c55e?style=for-the-badge">
</p>

<p align="center">
  <img src="docs/main.png" alt="3mooret EAX main window" width="860">
</p>

<p align="center">
  Made by <b>3mooret</b> &bull; <b>AMMAR</b> &bull; Instagram <a href="https://www.instagram.com/064_/"><b>@064_</b></a> &bull; <a href="https://discord.gg/8c4JqV64xA">Discord</a>
</p>

---

**Contents / المحتويات:**
[Install](#install) &bull; [التثبيت](#التثبيت) &bull; [Features](#features-in-english) &bull; [الخصائص](#الخصائص-بالعربي) &bull; [Build from source](#building-from-source) &bull; [For developers](#for-developers) &bull; [Credits](#credits)

## What it does

3mooret EAX sits between your microphone and Discord (or a game). Your voice goes in, the program changes it, and the result leaves through a virtual microphone called **CABLE Output (VB-Audio Virtual Cable)**. You pick that virtual microphone in Discord or the game. Sound clips, the soundboard and the sound of other programs can go into the same virtual microphone.

| | |
| --- | --- |
| **Rooms** | 32 echo rooms, from Bathroom and Cathedral to Cave, Hangar and Haunted Cavern |
| **Voice** | 42 voice masks, pitch, size, speed and a glitch pad |
| **Clean mic** | Noise isolation with 5 modes, a 7-band equalizer and a bass control from -12 to +30 dB |
| **Mixer** | A Voicemeeter-style mixer: faders in dB, animated meters, solo, mono, pan, bass, treble |
| **Sound card** | Pick the input and output, set their Windows volume, choose the buffer size |
| **Programs** | Play the sound of up to **4 programs at once** into your mic |
| **Soundboard** | 12 pads with global hotkeys and a sound library in categories |
| **Recorder** | Keeps the last minutes of what was said or played, with an editor |
| **Look** | Glass theme, rounded cards, animated GIF background, 14 colour themes |
| **Handy** | System tray, remembers your last settings, Arabic (Saudi dialect) |

## وش يسوي البرنامج

برنامج 3mooret EAX يقف بين المايك وديسكورد (أو اللعبة). صوتك يدخل البرنامج، يغيّره، ثم يطلع من مايك وهمي اسمه **CABLE Output (VB-Audio Virtual Cable)**. أنت تختار هذا المايك في ديسكورد أو اللعبة. ويقدر يدخل نفس المايك الوهمي مقاطع صوتية ولوحة الأصوات وصوت البرامج الثانية.

---

## Install

### What you need

- Windows 10 or 11, 64-bit
- A microphone (and speakers or headphones)
- The free [VB-Audio Virtual Cable](https://vb-audio.com/Cable/). The program downloads and installs it for you the first time (internet and administrator permission needed once)

### Steps

1. **Download.** Open the [latest release](https://github.com/3mooret/3mooret-EAX/releases/latest) and download `3mooretEAX-v1.0.0-win64.zip`. Unzip it anywhere (for example `C:\3mooretEAX`). You can also download only `3mooretEAX.exe`: it is the whole program, and the animated background is built into it.
2. **Run** `3mooretEAX.exe`. If Windows SmartScreen says "Windows protected your PC", click **More info**, then **Run anyway** (the program is not code-signed).
3. **Install the virtual microphone** (first run only). The window asks for the virtual mic. Press **Install**. The program downloads VB-CABLE and unpacks it. Windows then asks for permission: click **Yes**, then **Install Driver**. When it asks to restart, restart your PC and open 3mooret EAX again. If you already have VB-CABLE, this step is skipped.
4. **Pick your devices.** At the top left choose your **Microphone** and your **Speakers or headphones**.
5. **Set Discord or the game.** In Discord: *User Settings, Voice & Video, Input Device* and choose **CABLE Output (VB-Audio Virtual Cable)**. In a game, choose the same device as the microphone. The bottom bar of the program shows this name too.
6. **Try it.** Pick a room, raise **Effects amount**, tick **Hear myself** to hear the result, and speak.
7. **Keep the program running** while you talk. Closing the window hides it to the system tray (the icon near the clock). Right-click the icon and choose **Exit** to quit.

### Optional

- **Sound library** (Funny, Minecraft, Cinematic, Animals): run `tools\get-sounds.ps1` once. Right-click it and choose *Run with PowerShell*, or run in PowerShell: `powershell -ExecutionPolicy Bypass -File tools\get-sounds.ps1`. It downloads about 190 sounds into `%APPDATA%\OctopusEAX\sounds\<Category>`. Funny, Cinematic and Animals come from [Mixkit](https://mixkit.co/license/#sfxFree) (free licence). Minecraft sounds come from Mojang's servers and belong to Mojang Studios: keep them for yourself and do not redistribute them. [FFmpeg](https://ffmpeg.org) on your PATH converts the Minecraft sounds to MP3.
- **Arabic:** Settings (gear), **Behaviour**, tick **العربية (Arabic)**. It is saved for the next start.
- **Start with Windows:** tick it on the main window.

### If something does not work

| Problem | What to do |
| --- | --- |
| Others cannot hear you | Check that Discord's input is **CABLE Output**, that the program is running, and that **Enable audio effects** or the mic level is not zero |
| The program says the virtual mic is turned off | In Windows *Sound settings*, turn **CABLE Output** and **CABLE Input** on |
| "Another app is holding CABLE Input" | Close Voicemeeter or OBS, or change their output |
| Your voice goes louder and quieter by itself | Tick **Raw mic (no auto gain)** |
| Crackles or dropouts | In the **Mixer**, Sound card panel, set **Buffer** to **Safe** |
| Echo covers your voice | Lower **Effects amount** (above 50 the echo starts to cover the voice) |
| You cannot hear yourself | Tick **Hear myself** and check the **Speakers** choice |
| A program's sound is not on the mic | Make sure it is playing sound, then pick it again in **Program on the mic** |

### Uninstall

Close the program (tray icon, Exit) and delete its folder. To remove its settings, delete `%APPDATA%\OctopusEAX` and the registry key `HKEY_CURRENT_USER\Software\OctopusEAX`. VB-CABLE can be removed from Windows *Apps*.

## التثبيت

### وش تحتاج

- ويندوز 10 أو 11، 64 بت
- مايك (وسماعات أو سماعة رأس)
- الكيبل الوهمي المجاني [VB-Audio Virtual Cable](https://vb-audio.com/Cable/). البرنامج ينزّله ويثبّته لك أول مرة (يحتاج نت وصلاحية المدير مرة وحدة)

### الخطوات

1. **التنزيل.** افتح [صفحة آخر إصدار](https://github.com/3mooret/3mooret-EAX/releases/latest) ونزّل `3mooretEAX-v1.0.0-win64.zip` وفك الضغط في أي مكان (مثلًا `C:\3mooretEAX`). وتقدر تنزّل `3mooretEAX.exe` لحاله: هو البرنامج كامل، والخلفية المتحركة مدمجة فيه.
2. **شغّل** `3mooretEAX.exe`. لو طلعت لك رسالة SmartScreen "Windows protected your PC" اضغط **More info** وبعدين **Run anyway** (البرنامج غير موقّع).
3. **ثبّت المايك الوهمي** (أول مرة بس). النافذة تطلب المايك الوهمي. اضغط **Install** (ثبّت). البرنامج ينزّل VB-CABLE ويفك ضغطه. بعدين ويندوز يطلب الإذن: اضغط **Yes** وبعدها **Install Driver**. لو طلب إعادة التشغيل، أعد تشغيل الجهاز وافتح البرنامج من جديد. لو عندك VB-CABLE من قبل، تنتقل هالخطوة.
4. **اختر أجهزتك.** فوق على اليسار اختر **المايك** و**السماعات**.
5. **ضبط ديسكورد أو اللعبة.** في ديسكورد: *User Settings ثم Voice & Video ثم Input Device* واختر **CABLE Output (VB-Audio Virtual Cable)**. في اللعبة اختر نفس الجهاز كمايك. والشريط السفلي في البرنامج يعرض هالاسم بعد.
6. **جرّب.** اختر غرفة، ارفع **قوة المؤثرات**، علّم على **اسمع صوتي** عشان تسمع النتيجة، وتكلم.
7. **خلّ البرنامج شغّال** وأنت تتكلم. إغلاق النافذة يخفيها في صينية النظام (الأيقونة جنب الساعة). كليك يمين على الأيقونة واختر **Exit (طلوع)** عشان تقفل البرنامج.

### اختياري

- **مكتبة الأصوات** (مضحك، ماين كرافت، سينمائي، حيوانات): شغّل `tools\get-sounds.ps1` مرة وحدة. كليك يمين عليه واختر *Run with PowerShell*، أو في PowerShell: `powershell -ExecutionPolicy Bypass -File tools\get-sounds.ps1`. ينزّل نحو 190 صوت في `%APPDATA%\OctopusEAX\sounds\<التصنيف>`. المضحك والسينمائي والحيوانات من [Mixkit](https://mixkit.co/license/#sfxFree) (رخصة مجانية). وأصوات ماين كرافت من سيرفرات Mojang وهي ملك Mojang Studios: خلّها لاستخدامك وما توزعها. وبرنامج [FFmpeg](https://ffmpeg.org) في الـPATH يحوّل أصوات ماين كرافت إلى MP3.
- **العربية:** الإعدادات (الترس) ثم **Behaviour** وعلّم على **العربية (Arabic)**. وتنحفظ للتشغيل الجاي.
- **التشغيل مع الويندوز:** علّم عليه من النافذة الرئيسية.

### لو شي ما اشتغل

| المشكلة | الحل |
| --- | --- |
| الناس ما يسمعونك | تأكد إن إدخال ديسكورد هو **CABLE Output**، وإن البرنامج شغّال، وإن **Enable audio effects** أو مستوى المايك مو صفر |
| البرنامج يقول إن المايك الوهمي مطفّي | في *Sound settings* بويندوز شغّل **CABLE Output** و**CABLE Input** |
| "Another app is holding CABLE Input" | اقفل Voicemeeter أو OBS، أو غيّر خرجهم |
| صوتك يعلى وينزل لحاله | علّم على **Raw mic (no auto gain)** |
| تقطيع أو انقطاع | في **الميكسر** لوحة كرت الصوت، خلّ **Buffer** على **Safe** |
| الصدى يغطي على صوتك | خفّض **قوة المؤثرات** (فوق الخمسين الصدى يبدأ يغطي) |
| ما تسمع نفسك | علّم على **اسمع صوتي** وتأكد من اختيار **السماعات** |
| صوت برنامج ما يطلع في المايك | تأكد إنه يشغّل صوت، وبعدين اخترّه من جديد في **برنامج على المايك** |

### الحذف

اقفل البرنامج (أيقونة الصينية ثم Exit) واحذف مجلده. ولحذف إعداداته احذف `%APPDATA%\OctopusEAX` ومفتاح الريجستري `HKEY_CURRENT_USER\Software\OctopusEAX`. وVB-CABLE تقدر تحذفه من *Apps* في ويندوز.

---

# Features in English

3mooret EAX sits between your microphone and Discord (or a game). Your voice goes in, the program changes it, and the result leaves through a virtual microphone called **CABLE Output (VB-Audio Virtual Cable)**. You pick that virtual microphone in Discord or the game. Sound clips, the soundboard and the sound of other programs can go into the same virtual microphone.

## 1. Top bar

<img src="docs/title-bar.png" width="600">

| Control | What it does |
| --- | --- |
| **Mixer** | Opens the mixer window (section 9) |
| **Tone** | Opens the tone window: a pad to make the voice deeper or sharper, and the Vocal settings (section 8) |
| **Soundboard** | Opens the 12-pad soundboard (section 10) |
| **Setup arrows and name** | A *setup* keeps every setting of the main window. The arrows switch between saved setups |
| **Save as** | Saves all current settings as a setup with a name |
| **Trash** | Deletes the setup in use |
| **Gear** | Opens Settings (section 11) |
| **Minimise / Close** | Hide the window to the system tray. Right-click the tray icon and choose Exit to quit. Turn this off with **Minimize to tray** |

## 2. Microphone, speakers and noise isolation

<img src="docs/devices.png" width="600">

- **Microphone**: the microphone the program listens to. The refresh button looks again for devices you just plugged in.
- **Speakers**: where you hear yourself and the program sound.
- **Noise isolation** (tick box, arrows and a strength slider) cuts room noise, keyboard clicks and other voices. Five modes:
  - **Vocal**: a voice gate with its own low, mid and high lift (set in the Tone window). Strength 50 is normal.
  - **Gate**: only shuts the mic between words.
  - **Clean**, **Studio**, **Broadcast**: also clean up the sound.
  - Higher values cut more noise but can clip quiet words.
- **Start with Windows**: opens the program when Windows starts.
- **Minimize to tray**: the minimise and close buttons hide the window to the system tray instead of quitting.

## 3. Environment (rooms)

<img src="docs/rooms.png" width="600">

- **Environment list**: 32 echo rooms. 15 classic ones (Auditorium, Ball Park, Bathroom, Cathedral, Chapel, Church, Concert Hall, Garage, Haunted Cavern, Indoor Arena, Jazz Club, Living Room, Opera House, Small Room, Theater) and 17 new ones (Cave, Underwater, Forest, Mountains, Hangar, Sewer Pipe, Stone Corridor, Alley, Hallway, Parking Lot, Arena, Padded Cell, Quarry, Dizzy, Bell Tower, Metal Tank, Robot Room).
- **Effects amount**: how much echo others hear. 0 turns it off. Above 50 the echo starts to cover your voice.
- **Microphone level**: your mic volume. 100 is normal, above it the voice is pushed harder. The dB value is shown next to it.
- **Enable audio effects**: master switch for the echo and the voice changes. Off, your mic goes through untouched.
- **Hear myself**: plays your processed voice in your headphones.
- **Wide echo in headphones**: spreads the echo left and right in your headphones only. Others hear the normal echo.
- **Raw mic (no auto gain)**: turns off Windows automatic mic gain. Try it if your voice keeps getting louder and quieter by itself.
- **CMSS 3D**: the sound card's 3D widening on the echo.
- **Echo on**: choose what goes through the room: **My voice**, **Sound clip**, **Program**, or any mix.

## 4. Voice mask

<img src="docs/voice-mask.png" width="600">

- **Two mask lists**: **X-Fi** (18 masks of the X-Fi card, for example Alien Brute, Demon, Robot, Elf) and **3mooret EAX masks** (24 more, for example Anonymous, Ghost, Chipmunk, Megaphone, Whisper). 42 in total.
- **Pitch**: raise or lower your voice in Hz.
- **Size**: makes the voice bigger (darker) or smaller.
- **Voice changer**: from smaller to bigger in one move.
- **Speed**: speak faster or slower. At other speeds others hear you a little late (the delay is shown). **Keep pitch** keeps the pitch while the speed changes.
- **Off** button: puts the mask back to normal.
- **Glitch**: hold the button to glitch your voice. The list picks the style (Repeat, Beep, Stutter, Reverse, Tape stop, Scratch, Robot, Crush, Chipmunk, Deep, Echo, Cut, Glitch). The key button sets a key that holds the glitch from any program.
- **Mask on**: choose what gets the mask: **My voice**, **Sound clip**, **Program**.

## 5. Graphic equalizer and bass

<img src="docs/equalizer.png" width="600">

- **7 bands** (125 Hz to 8 kHz) from -12 to +12 dB, and an overall **Level**. Double-click a band to put it back to 0.
- **Presets**: Flat, Bass, Treble, Vocal, Rock, Pop, Jazz, Classical, Dance, Acoustic. Save your own with the save button and delete it with the trash. **Default** resets everything.
- **Enable equalizer**: turns the equalizer on or off. It shapes everything that goes to the mic.
- **Bass slider** (under the equalizer): from -12 to +30 dB. It is added on top of the automatic bass boost that grows with the mic level.

## 6. Sound clip

<img src="docs/sound-clip.png" width="600">

- Paste a link or open a sound file, then press **Play**. **Pause**, **Stop**, a **position** slider and **10 s** back/forward buttons.
- **Volume** (100 is normal) and **Speed**. **Keep pitch** keeps the pitch while the speed changes. **Voice speed** matches the clip speed to your voice speed.
- **Hear it myself**: you hear the clip too. **Send to the mic**: others hear it.

## 7. Program on the mic

<img src="docs/program.png" width="600">

- Pick a running game or app and its sound goes into your mic. You can pick **up to 4 programs at once**: open the list, click a program to add it, click it again to remove it. The closed box shows the first name and how many more, for example `Chrome +2`. Choose `(none)` to remove all.
- **Level**: program sound level (100 is normal).
- **Only I hear it**: the sound stays in your headphones and never reaches the mic.
- **Hear it through the card / from the app**: how you hear the program yourself.
- The program sound can also get the echo and the mask (see Echo on and Mask on).

## 8. Recorder and Tone window

<img src="docs/recorder.png" width="600">

**Recorder** (below the program section):
- **Record** records your voice with the effects, what you hear, or both at once. Choose with the two source buttons.
- **Last** keeps the last part of what was said or played all the time, from 5 seconds up to 10 minutes, and puts it in the editor with one click. The arrows next to it pick how much to keep. Lit **quiet cut** removes silence automatically.
- **Editor**: click the wave to play from that point, drag across it to pick a part. **Cut out** removes it, **Keep only** keeps only it. **Fade in / Fade out** soften the start and end. **Undo / Redo** (Ctrl+Z, Ctrl+Y). A button cuts the silence out of the whole recording.
- **Send to mic** plays the recording into the mic. **Save as** saves MP3, WAV, M4A, WMA or FLAC. The folder is set in Settings.

**Tone window:**
- A square pad: move the dot to make the voice deeper or sharper, with more or less middle.
- **Vocal** part: strength, low, mid and high lift and output level of the Vocal noise isolation.

## 9. Mixer

<img src="docs/mixer.png" width="600">

A window with five strips, like Voicemeeter:

| Strip | Fader controls | Buttons |
| --- | --- | --- |
| **MIC** | Microphone level | HEAR, RAW, SOLO, MUTE, bass, treble |
| **CLIP** | Sound clip volume | HEAR, MIC, SOLO, MONO, MUTE, pan, bass, treble |
| **PROGRAM** | Program level | ONLY, CARD, SOLO, MONO, MUTE, pan, bass, treble |
| **ROOM** | Effects amount | WIDE, CMSS, BYPASS |
| **OUT** | Overall output level | EQ (equalizer on/off) |

- Faders are in dB (0 dB at 60% of the travel). Double-click a fader to reset it, use the mouse wheel to fine-tune.
- **Animated level meters** with a peak hold line.
- **SOLO** plays only that strip and silences the others. **MUTE** silences a strip. **MONO** sums left and right. **PAN** moves the sound left or right. **BASS** and **TREB** (treble) shape the strip. Drag the small sliders, double-click to reset. While you drag, the box under the fader shows the value.
- **Sound card panel**: choose the **input** and **output** device with the arrows, set their **Windows volume** and **mute**, and choose the **buffer** size: **Low** (50 ms in, 40 ms out), **Normal** (100/80), **Safe** (200/160). Lower reacts faster, higher is safer against crackles.

## 10. Soundboard

<img src="docs/soundboard.png" width="600">

- **12 pads**. Click a pad to play it. Give a pad a key (**Set key**) and it plays from any program, even inside a game. **Stop all** and a **Stop key** stop every sound.
- Pick a sound in the list and press **Put on pad** (or double-click). **Add sounds** adds your own files, **Remove sound** removes one from the list. **Trim** picks a part, fades in and out. **Rename**, **Clear pad**.
- **Sound library with categories**: use the arrows above the list to switch between **All**, **Funny**, **Minecraft**, **Cinematic**, **Animals** and **Mine** (your own sounds). The library is downloaded by `tools/get-sounds.ps1` into `%APPDATA%\OctopusEAX\sounds\<Category>`. Any folder you add there becomes a new category.
- Pads follow the Sound clip volume, **Hear it myself** and **Send to the mic**.

## 11. Settings

<img src="docs/settings-look.png" width="600">

**Look**
- **Theme colour**: 14 colour themes and **Custom**. **Background brightness** slider.
- **Fine tune**: change each colour (accent, text, faded text, panels, background, edges, highlight, off). Right-click to reset.
- **Background picture**: pick a picture or an **animated GIF** (a GIF is built into the program). Sliders: **See-through panels** (glass), **Blur**, **Darken**, **Window opacity**.
- **Font**: pick, add your own font file, size and bold.
- **Reset look** brings the default look back.

**Behaviour**
- **Animations**, **Always on top**, **Remember where the window was**, **Show hints**.
- **العربية (Arabic)**: switches the whole app to Arabic (Saudi dialect). Saved for the next start.
- **Hotkeys** that work in every program, even in games: save the last part, start/stop recording, play the recording on the mic, audio effects on/off, voice mask on/off, echo on/off, noise isolation on/off, hear myself on/off, next setup, previous setup. Click a box and press the keys, right-click to clear.
- **Saved clips folder**: where recordings are saved.

## 12. Always on

<img src="docs/bottom.png" width="600">

- **Bottom meter** shows what goes into the mic. Drag the window corner to resize, double-click it for the normal size.
- **Remembers your last settings** automatically: room, devices, levels and everything else (`%APPDATA%\OctopusEAX\last-session.ini`).
- **System tray** and **Start with Windows**.
- **Hints**: rest the mouse on any control for a short explanation.
- **Virtual cable setup**: the program offers to install the free VB-Audio Virtual Cable the first time.

## 13. For developers

Rooms are rows in `src/presets/card_presets.hpp`, masks are rows in `src/voice/voice_masks.hpp`, and Arabic texts are in `src/ui/lang.hpp`. See the main README for the field-by-field guide.

---



<div dir="rtl">

# الخصائص بالعربي

برنامج 3mooret EAX يقف بين المايك وديسكورد (أو اللعبة). صوتك يدخل البرنامج، يغيّره، ثم يطلع من مايك وهمي اسمه **CABLE Output (VB-Audio Virtual Cable)**. أنت تختار هذا المايك في ديسكورد أو اللعبة. ويقدر يدخل نفس المايك الوهمي مقاطع صوتية ولوحة الأصوات وصوت البرامج الثانية.

## ١. الشريط العلوي

<img src="docs/title-bar.png" width="600">

| العنصر | وش يسوي |
| --- | --- |
| **Mixer (الميكسر)** | يفتح نافذة الميكسر (القسم ٩) |
| **Tone** | يفتح نافذة النغمة: مربع تخلّي صوتك أغلظ أو أحدّ، وإعدادات Vocal (القسم ٨) |
| **Soundboard** | يفتح لوحة الأصوات ذات الـ12 زر (القسم ١٠) |
| **أسهم الإعداد واسمه** | الإعداد (Setup) يحفظ كل إعدادات النافذة الرئيسية. الأسهم تنقلك بين الإعدادات المحفوظة |
| **Save as** | يحفظ كل إعداداتك الحالية كإعداد باسم |
| **سلة المحذوفات** | تحذف الإعداد المستخدم |
| **الترس** | يفتح الإعدادات (القسم ١١) |
| **تصغير / إغلاق** | يخفون النافذة في صينية النظام. للخروج الفعلي: كليك يمين على أيقونة الصينية واختر Exit. تقدر توقف هالسلوك من **Minimize to tray** |

<img src="docs/main-ar.png" width="700">

## ٢. المايك والسماعات وعزل الضوضاء

- **Microphone (المايك):** المايك اللي يسمع منه البرنامج. زر التحديث يدوّر على الأجهزة اللي توك موصلها.
- **Speakers (السماعات):** المكان اللي تسمع فيه نفسك وصوت البرنامج.
- **Noise isolation (عزل الضوضاء):** يشيل ضوضاء الغرفة ونقرات الكيبورد والأصوات الثانية. فيه خمسة أوضاع:
  - **Vocal:** بوابة صوت مع رفع للأصوات المنخفضة والمتوسطة والعالية (تضبطه من نافذة Tone). القوة 50 هي العادية.
  - **Gate:** يقفل المايك بين الكلمات بس.
  - **Clean** و**Studio** و**Broadcast:** ينظفون الصوت بعد.
  - كل ما رفعت القيمة قطع ضوضاء أكثر، لكن ممكن يقص الكلمات الهادية.
- **Start with Windows:** يفتح البرنامج مع تشغيل الويندوز.
- **Minimize to tray:** زر التصغير وزر الإغلاق يخفون النافذة في الصينية بدل ما يقفلون البرنامج.

## ٣. البيئة (الغرف)

- **قائمة البيئات:** 32 غرفة صدى. 15 كلاسيكية (قاعة محاضرات، ملعب بيسبول، حمام، كاتدرائية، كنيسة صغيرة، كنيسة، قاعة حفلات، قراج، كهف مسكون، صالة مغطاة، نادي جاز، مجلس، دار أوبرا، غرفة صغيرة، سينما) و17 جديدة (كهف، تحت الماي، غابة، جبال، هنقر، ماسورة مجاري، ممر حجري، زقاق، ممر، موقف سيارات، ساحة، غرفة مبطّنة، محجر، دوّخني، برج الجرس، خزان معدني، غرفة الروبوت).
- **Effects amount (قوة المؤثرات):** قد إيش الصدى اللي يسمعه الناس. صفر يطفّيه، وفوق الخمسين الصدى يبدأ يغطي على صوتك.
- **Microphone level (مستوى المايك):** صوت المايك. المية عادي، وفوقها يرفع الصوت أكثر. تشوف قيمته بالديسيبل جنبه.
- **Enable audio effects:** المفتاح الرئيسي للصدى وتغييرات الصوت. لو طفّيته المايك يطلع زي ما هو.
- **Hear myself:** تسمع صوتك بعد المعالجة في السماعة.
- **Wide echo in headphones:** يوزّع الصدى يمين ويسار في سماعتك بس. الناس يسمعون الصدى العادي.
- **Raw mic:** يطفّي الرفع التلقائي للمايك في ويندوز. جرّبه لو صوتك يعلى وينزل لحاله.
- **CMSS 3D:** توسيع الصوت ثلاثي الأبعاد حق كرت الصوت على الصدى.
- **Echo on (الصدى على):** تختار وش يمر على الغرفة: **صوتي**، **مقطع صوت**، **البرنامج**، أو أي خليط منهم.

## ٤. قناع الصوت

- **قائمتان للأقنعة:** **X-Fi** (18 قناع من كرت X-Fi، مثل وحش فضائي وشيطان وروبوت وجنّي) و**أقنعة 3mooret EAX** (24 قناع ثاني، مثل مجهول وشبح وسنجاب ومكبّر صوت وهمس). المجموع 42.
- **Pitch (النغمة):** يخلّي صوتك أرفع أو أغلظ بالهرتز.
- **Size (الحجم):** يخلّي الصوت أكبر (أغلظ) أو أصغر.
- **Voice changer (مغيّر الصوت):** من الأصغر للأكبر بحركة وحدة.
- **Speed (السرعة):** تكلم أسرع أو أبطأ. مع السرعات الثانية اللي يسمعونك يوصلهم الصوت متأخر شوي (يظهر لك التأخير). **Keep pitch** يثبّت النغمة لما تتغير السرعة.
- **زر Off:** يرجّع القناع للوضع العادي.
- **Glitch (التقطيع):** امسك الزر عشان يتقطع صوتك. القائمة تختار النمط (تكرار، صفّارة، تهتهة، عكس، توقف شريط، خدش، روبوت، تكسير، سنجاب، غليظ، صدى، قطع، تقطيع). وزر المفتاح يحدد مفتاح يمسك التقطيع من أي برنامج.
- **Mask on (القناع على):** تختار وش ياخذ القناع: **صوتي**، **مقطع صوت**، **البرنامج**.

## ٥. الإكوالايزر والبيز

- **7 نطاقات** (من 125 هرتز لين 8 كيلوهرتز) من -12 لين +12 ديسيبل، مع **Level** عام. دبل كليك على النطاق يرجّعه صفر.
- **الإعدادات الجاهزة:** Flat وBass وTreble وVocal وRock وPop وJazz وClassical وDance وAcoustic. تقدر تحفظ إعدادك بزر الحفظ وتحذفه بالسلة. زر **Default** يرجّع كل شي.
- **Enable equalizer:** يشغّل الإكوالايزر أو يطفّيه. وهو يأثر على كل شي يطلع بالمايك.
- **شريط Bass** (تحت الإكوالايزر): من -12 لين +30 ديسيبل. ينضاف فوق رفع البيز التلقائي اللي يزيد مع مستوى المايك.

## ٦. المقطع الصوتي

- الصق رابط أو افتح ملف صوت واضغط **Play**. فيه **Pause** و**Stop** وشريط **الموضع** وأزرار **10 ثواني** رجوع وتقديم.
- **Volume (الصوت)** (المية عادي) و**Speed (السرعة)**. **Keep pitch** يثبّت النغمة مع تغيير السرعة. **Voice speed** يخلّي سرعة المقطع تمشي مع سرعة صوتك.
- **Hear it myself:** تسمع المقطع أنت. **Send to the mic:** يسمعه الناس.

## ٧. برنامج على المايك

- اختر لعبة أو برنامج شغّال ويطلع صوته في مايكك. تقدر تختار **لين 4 برامج مرة وحدة**: افتح القائمة واضغط على برنامج يضاف، واضغط عليه مرة ثانية يشيله. الصندوق المقفول يعرض الاسم الأول وكم باقي، مثل `Chrome +2`. الخيار `(ولا شي)` يشيل الكل.
- **Level (المستوى):** صوت البرنامج (المية عادي).
- **Only I hear it (أنا بس اللي أسمعه):** صوت البرنامج يبقى في سماعتك وما يوصل للمايك.
- **Hear it through the card / from the app:** طريقة سماعك للبرنامج.
- صوت البرنامج يقدر ياخذ الصدى والقناع بعد (من Echo on وMask on).

## ٨. المسجّل ونافذة Tone

**المسجّل** (تحت قسم البرنامج):
- **Record (سجّل)** يسجّل صوتك مع المؤثرات، أو اللي تسمعه، أو الاثنين مع بعض. تختار بزرّي المصدر.
- **Last (الأخير)** يحتفظ دايم بآخر جزء من اللي انقال أو انشغّل، من 5 ثواني لين 10 دقايق، ويحطه في المحرر بضغطة وحدة. الأسهم جنبه تحدد قد إيش يحتفظ. زر **القص الصامت** يشيل السكتات تلقائيًا.
- **المحرر:** اضغط على الموجة تشتغل من النقطة، واسحب عليها عشان تحدد جزء. **Cut out** يشيله، و**Keep only** يخلّيه هو بس. **Fade in / Fade out** يخلّون البداية والنهاية ناعمة. **Undo / Redo** (Ctrl+Z وCtrl+Y). فيه زر يقص السكتات من كل التسجيل.
- **Send to mic** يشغّل التسجيل في المايك. **Save as** يحفظ بصيغة MP3 أو WAV أو M4A أو WMA أو FLAC. ومجلد الحفظ من الإعدادات.

**نافذة Tone:**
- مربع: حرّك النقطة عشان يصير صوتك أغلظ أو أحدّ، بوسط أكثر أو أقل.
- قسم **Vocal:** قوة عزل Vocal ورفع الأصوات المنخفضة والمتوسطة والعالية ومستوى الخرج.

## ٩. الميكسر (Mixer)

<img src="docs/mixer-ar.png" width="600">

نافذة فيها خمس شرائح، شبه Voicemeeter:

| الشريحة | الفيدر يتحكم في | الأزرار |
| --- | --- | --- |
| **MIC (المايك)** | مستوى المايك | HEAR وRAW وSOLO وMUTE وبيز وحدّة |
| **CLIP (المقطع)** | صوت المقطع | HEAR وMIC وSOLO وMONO وMUTE وتوزيع وبيز وحدّة |
| **PROGRAM (البرنامج)** | مستوى البرنامج | ONLY وCARD وSOLO وMONO وMUTE وتوزيع وبيز وحدّة |
| **ROOM (الغرفة)** | قوة المؤثرات | WIDE وCMSS وBYPASS |
| **OUT (الخرج)** | مستوى الخرج العام | EQ (تشغيل الإكوالايزر) |

- الفيدرات بالديسيبل (الصفر عند 60% من المشوار). دبل كليك على الفيدر يرجّعه، وعجلة الفأرة تضبطه بدقة.
- **عدّادات مستوى متحركة** مع خط يثبت عند أعلى قمة.
- **SOLO (منفرد)** يشغّل الشريحة وحدها ويكتم الباقي. **MUTE (كتم)** يكتم الشريحة. **MONO (مونو)** يدمج اليسار واليمين. **PAN (توزيع)** يحرّك الصوت يمين أو يسار. **BASS (بيز)** و**TREB (حدّة)** يشكّلون الشريحة. اسحب الأشرطة الصغيرة ودبل كليك يرجّعها. وأثناء السحب الخانة تحت الفيدر تعرض القيمة.
- **لوحة كرت الصوت:** تختار جهاز **الدخل** و**الخرج** بالأسهم، وتضبط **حجمهم في ويندوز** و**الكتم**، وتختار حجم **البفر**: **Low** (50 مللي ثانية دخل و40 خرج) أو **Normal** (100 و80) أو **Safe** (200 و160). الأقل يستجيب أسرع، والأعلى أأمن من التقطيع.

## ١٠. لوحة الأصوات (Soundboard)

- **12 زر**. اضغط على الزر يشتغل. اعطِ الزر مفتاح (**Set key**) وبيشتغل من أي برنامج حتى داخل اللعبة. **Stop all** و**Stop key** يوقفون كل الأصوات.
- اختر صوت من القائمة واضغط **Put on pad** (أو دبل كليك). **Add sounds** تضيف ملفاتك، و**Remove sound** يشيل صوت من القائمة. **Trim** يحدد جزء ويضيف دخول وخروج تدريجي. وفيه **Rename** و**Clear pad**.
- **مكتبة أصوات بتصنيفات:** استخدم الأسهم فوق القائمة للتنقل بين **الكل** و**مضحك** و**ماين كرافت** و**سينمائي** و**حيوانات** و**أصواتي** (ملفاتك). المكتبة تنزل بتشغيل `tools/get-sounds.ps1` في `%APPDATA%\OctopusEAX\sounds\<التصنيف>`. وأي مجلد تضيفه هناك يصير تصنيف جديد.
- الأزرار تمشي على صوت المقطع وخياري **Hear it myself** و**Send to the mic**.

## ١١. الإعدادات

**المظهر (Look)**
- **Theme colour:** 14 ثيم ألوان مع **Custom**. وشريط **إضاءة الخلفية**.
- **Fine tune:** غيّر كل لون لحاله (الأساسي، النص، النص الباهت، اللوحات، الخلفية، الحدود، التمييز، الإيقاف). كليك يمين يرجّعه.
- **صورة الخلفية:** اختر صورة أو **GIF متحرك** (فيه GIF مدمج في البرنامج). الأشرطة: **لوحات شفافة** (الزجاج) و**ضبابية** و**تغميق** و**شفافية النافذة**.
- **الخط:** اختر خط أو أضف ملف خط، مع الحجم والعريض.
- **Reset look** يرجّع المظهر الأصلي.

**السلوك (Behaviour)**
- **الحركات**، **دايم فوق**، **تذكّر مكان النافذة**، **أظهر التلميحات**.
- **العربية (Arabic):** يحوّل البرنامج كله للعربي (باللهجة السعودية). ويتحفظ للتشغيل الجاي.
- **الاختصارات** اللي تشتغل في كل البرامج حتى داخل الألعاب: حفظ آخر جزء، بدء وإيقاف التسجيل، تشغيل التسجيل في المايك، المؤثرات، قناع الصوت، الصدى، عزل الضوضاء، اسمع صوتي، الإعداد التالي، الإعداد السابق. اضغط على الصندوق وبعدين المفاتيح، وكليك يمين يمسح.
- **مجلد المقاطع المحفوظة:** وين تنحفظ التسجيلات.

## ١٢. دايم شغّال

- **العدّاد السفلي** يعرض اللي يدخل المايك. اسحب زاوية النافذة عشان تكبّرها أو تصغّرها، ودبل كليك عليها يرجّع الحجم العادي.
- **يتذكر آخر إعداداتك** تلقائي: الغرفة والأجهزة والمستويات وكل شي ثاني (`%APPDATA%\OctopusEAX\last-session.ini`).
- **صينية النظام** و**التشغيل مع الويندوز**.
- **التلميحات:** وقّف الماوس على أي عنصر تطلع لك شرح قصير.
- **تثبيت الكيبل الوهمي:** البرنامج يعرض عليك تثبيت VB-Audio Virtual Cable المجاني أول مرة.

## ١٣. للمطورين

الغرف صفوف في `src/presets/card_presets.hpp`، والأقنعة صفوف في `src/voice/voice_masks.hpp`، والنصوص العربية في `src/ui/lang.hpp`. شوف README الرئيسي لشرح كل حقل.

</div>


---

## Building from source

1. Install Visual Studio 2026 with the **Desktop development with C++** workload.
2. Open `MasonEAX.sln`.
3. Choose **Release** and **x64**, then build.
4. The program is `build\MasonEAX\3mooretEAX.exe`.

| Folder | What is in it |
| --- | --- |
| `src/app.cpp`, `src/ui` | The window, the controls, fonts and the audio path |
| `src/reverb`, `src/presets` | The rooms |
| `src/voice` | Masks, pitch, speed and the glitch |
| `src/isolation` | Noise isolation |
| `src/equalizer` | The equalizer |
| `src/playback` | Sound clips, the soundboard, the recorder and program sound |
| `src/mixing`, `src/convolution`, `src/audio` | Levels, mixing and audio buffers |
| `src/cable` | VB-Audio Virtual Cable setup |
| `res` | The icons and the pictures |

## For developers

Everything below is plain C++ tables and numbers. Change a number, rebuild, and listen.

### Where the echo is

| File | What is in it |
| --- | --- |
| `src/presets/card_presets.hpp` | `CARD_PRESETS`, the 15 rooms in the order the room list shows them, and the extra Haunted Cavern tables |
| `src/reverb/reverb_params.hpp` | `eax::Params`, the fields every room row fills in, in order |
| `src/reverb/reverb_engine.hpp` | `eax::EAXReverb`, the engine that plays every room |
| `src/reverb/card_core.hpp` | `eax::CardCore`, the core room of Haunted Cavern, which is the echo others hear in that room |
| `src/mixing/amount_law.hpp` | `AmountLaw`, how **Effects amount** turns into levels |
| `src/mixing/send_level.hpp` | `SendLevel`, which splits off the loud parts of your voice for Haunted Cavern |
| `src/mixing/echo_tap.hpp` | `EchoTap`, the single clear repeat in Haunted Cavern's wide headphone room |
| `src/app.cpp` | `audioThread()` sends your voice into the room and mixes it back, and `DEFAULT_PRESET` is the room picked on the first start |

### Changing a room

A row in `CARD_PRESETS` is the room's name followed by its settings. The first 20 numbers are the same for every room:

| # | Field | What it does |
| --- | --- | --- |
| 1 | `density` | How big the room is, 0 to 1. It stretches the room's delay lines |
| 2 | `diffusion` | How smooth the tail is, 0 to 1. Low values sound grainy |
| 3 | `gain` | Overall level of the room, 1.0 is full |
| 4 | `gainHF` | Level of the highs at `hfReference`. Lower is darker |
| 5 | `gainLF` | Level of the lows at `lfReference` |
| 6 | `decayTime` | Seconds the tail takes to fall away (60 dB) |
| 7 | `decayHFRatio` | How long the highs last compared with `decayTime` |
| 8 | `decayLFRatio` | How long the lows last compared with `decayTime` |
| 9 | `reflectionsGain` | Level of the first echoes off the walls |
| 10 | `reflectionsDelay` | Seconds before the first echo |
| 11 | `lateReverbGain` | Level of the long tail |
| 12 | `lateReverbDelay` | Seconds between the first echo and the tail |
| 13 | `echoTime` | Seconds between repeats of the echo |
| 14 | `echoDepth` | How strongly the echo repeats, 0 to 1 |
| 15 | `modulationTime` | Speed of the slow wobble in the tail, in seconds per cycle |
| 16 | `modulationDepth` | Depth of that wobble, 0 to 1 |
| 17 | `airAbsorptionGainHF` | How much the air dulls the highs, 1.0 is not at all. Only used when `decayHFLimit` is 1 |
| 18 | `hfReference` | The frequency in Hz that "highs" means above |
| 19 | `lfReference` | The frequency in Hz that "lows" means below |
| 20 | `decayHFLimit` | 1 lets the air shorten the highs, 0 doesn't |

Levels are plain multipliers, so 1.0 means unchanged and 0.5 is about 6 dB quieter. For example, to make Bathroom ring longer, change its `decayTime` from `1.49` to `2.5`.

To add a room, add a new row at the end of `CARD_PRESETS`. The list in the app grows by itself. Saved setups remember a room by its place in the list, so a row added in the middle would move every room after it. `HAUNTED_CAVERN_INDEX` must stay the place of the Haunted Cavern row (8, counting from 0).

### Haunted Cavern

Haunted Cavern is the echo the Sound Blaster Live! 24-bit External (SB0490) is known for. Its parts only run while it is the picked room (`curPreset == HAUNTED_CAVERN_INDEX` in `audioThread()`).

What others hear, and what you hear with **Hear myself**, is your voice plus the **core room**. Ticking **Wide echo in headphones** adds a wider stereo room in your headphones only; it never reaches the mic.

| Part | Where | What it does |
| --- | --- | --- |
| Core room | `HC_CORE` in `src/presets/card_presets.hpp`, played by `eax::CardCore` | The card's own centre sound, the part listeners know, and the only echo that goes to the mic. In order: room level in dB, highs in dB (`-15.0`), decay in seconds (`17.01`), highs decay ratio, reflections dB, reflections delay, tail dB, tail delay, size, diffusion, air dB, echo depth, echo time, wobble depth, wobble time, highs frequency in Hz, highs limit |
| Loud voice | `HC_LOUD_DECAY`, with the split in `SendLevel` (`src/mixing/send_level.hpp`) | When your voice goes above about -4 dB (`THRESHOLD_DB`), the loud part goes to a second core room that fades over `15.0` seconds |
| Levels | `AmountLaw` in `src/mixing/amount_law.hpp` | How **Effects amount** sets the core room and the wide room, and how much your own voice is lowered so the echo can cover it |
| Wide room | The `"Haunted Cavern"` row in `src/presets/card_presets.hpp` | Headphones only, with **Wide echo in headphones** ticked. Its `decayTime` is `15.6678` seconds. The fields after the first 20 (`lineScale`, the short echoes, `earlyDecay`, the EQ bands and others, named in `reverb_params.hpp`) fine-tune it to the card |
| Early echoes | `HC_REFLECTIONS` in the same file | The wide room's 59 echoes in the first 0.6 seconds. Each line is the time in milliseconds, the left level and the right level |
| Tail feed | `HC_CORE_FEED` | The taps that feed the wide room's long tail. Each line is the time in milliseconds and the level |
| The repeat | `EchoTap` in `src/mixing/echo_tap.hpp`, with its time and level in `AmountLaw` | The wide room's single clear repeat, about half a second after you speak |
| The card's own recording | `haunted_cavern_ir.wav` next to `3mooretEAX.exe` | Optional. If the file is there when the sound starts, a recording of the real card's response replaces the model, mic included (`src/convolution`). Restart 3mooret EAX after adding it |

Some changes you can make:

- **A longer or shorter echo:** for what others hear, change the core room's decay (`17.01` in `HC_CORE`) and `HC_LOUD_DECAY` (`15.0`). For the wide room, change the row's `decayTime` (`15.6678`) and `earlyDecay` (`15.65`). With **Wide echo in headphones**, loud parts also go to a second wide room whose decay is `decayTime` × `HC_LOUD_DECAY` ÷ the core decay (about 13.8 seconds), so changing `17.01` or `15.0` changes that tail too.
- **Brighter or darker:** change the core room's highs (`-15.0` in `HC_CORE`). Closer to 0 is brighter.
- **When the repeat comes:** `SLAP_SEC` (`0.4867` seconds) holds up to amount 20 (`SLAP_SLIDE_FROM`), then the repeat moves to `SLAP_SEC_FULL` (`0.4733`) at 100. `EchoTap` holds at most half a second (`MAX_SECONDS`).
- **How loud the repeat is:** from about amount 11 up it is `SLAP_MAX`. Below that, `SLAP_CAL` and `SLAP_EXP` shape it.
- **How fast the echo covers your voice:** up to `RISE_FROM` (10) your voice is not lowered. Above it, the gap the code aims for between the echo and your voice grows to 2 × `GAP_DB` (22 dB) at 100, and `GAP_EXP_NEAR` and `GAP_EXP_FAR` shape the curve.

### Voice masks

All the masks are in `MASKS` in `src/voice/voice_masks.hpp`, one row each:

```cpp
{L"Demon", 600, 148, FX_NONE, 0.0, 0.0},
```

| Value | What it does |
| --- | --- |
| name | The name shown in the list |
| ratio | Pitch in thousandths: 1000 keeps your pitch, 2000 is an octave up, 500 an octave down. From 400 to 2500 |
| size | The size of the voice in percent: 100 keeps it, more sounds bigger and darker, less sounds smaller. From 60 to 150 |
| fx | The extra effect from the `FxKind` list at the top of the file, or `FX_NONE` |
| a, b | The effect's two settings, used by the X-Fi effects below |
| anchor | Optional. Puts every voice on the same pitch and colour, whoever speaks. Only Stranger uses it: `{on, spread, follow, rough}` |

Picking a mask sets its ratio, moves the **Size** slider to its size, and puts **Pitch** and **Voice changer** back to 0 (`pickMask` in `src/app.cpp`). **Pitch** is an extra shift in Hz on top of the ratio. Pitch and size are made by `src/voice/voice_shaper.hpp`, and the effects by `src/voice/voice_fx.hpp`.

To change a mask, change its numbers. For example, Demon gets deeper with a ratio of `520` instead of `600`.

#### The X-Fi masks

The first 18 rows of `MASKS`, from Alien Brute to Unstable, are the masks of the X-Fi (Flash version). `NUM_XFI_MASKS` is how many there are, and they fill the **X-Fi** list. Neutral (`MASK_NEUTRAL`, row 13 counting from 0) changes nothing. When it is picked, the closed box shows X-Fi.

Their effects use `a` and `b` like this, in `src/voice/voice_fx.hpp`:

| fx | a | b | Function |
| --- | --- | --- | --- |
| `FX_RING` | Ring frequency in Hz | Mix, 0 to 1 | `ring()` |
| `FX_TREMOLO` | Speed in Hz | Depth, 0 to 1 | `tremolo()` |
| `FX_RADIO` | Drive. The sound is also cut to 500-2700 Hz | Not used | `radio()` and `designRadio()` |
| `FX_VIBRATO` | Speed in Hz | Depth, 1.0 swings 4.5 ms | `vibrato()` |

For example, Robot is `{L"Robot", 1000, 100, FX_RING, 75.0, 1.00}`: your own pitch, ringing at 75 Hz at full mix.

#### The 3mooret EAX masks

The rows after the X-Fi masks fill the **3mooret EAX masks** list. `OWN_ORDER` sets their order in that list by row number. Each one has its own effect: `VoiceFx::start()` sets it up and `VoiceFx::own()` runs it, both in `src/voice/voice_fx.hpp`.

To add a mask, add a row at the end of `MASKS` and put its row number in `OWN_ORDER` where it should appear. Saved setups remember a mask by its row number, so new rows go at the end. For a new effect, add its name to the end of `FxKind`, then a `case` for it in `start()` and in `own()`.

---

Glass Edition modified by 3mooret &bull; AMMAR &bull; [@064_](https://www.instagram.com/064_/)

Original project &copy; 2026 MasonGroup (MIT licence). This edition &copy; 2026 coda Group. Join our Discord: https://discord.gg/8c4JqV64xA
