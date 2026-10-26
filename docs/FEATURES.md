# 3mooret EAX: every feature explained / شرح كل الخصائص

[English](#english) | [العربية](#arabic)

---

<a name="english"></a>

# English

3mooret EAX sits between your microphone and Discord (or a game). Your voice goes in, the program changes it, and the result leaves through a virtual microphone called **CABLE Output (VB-Audio Virtual Cable)**. You pick that virtual microphone in Discord or the game. Sound clips, the soundboard and the sound of other programs can go into the same virtual microphone.

## 1. Top bar

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

- **Two mask lists**: **X-Fi** (18 masks of the X-Fi card, for example Alien Brute, Demon, Robot, Elf) and **3mooret EAX masks** (24 more, for example Anonymous, Ghost, Chipmunk, Megaphone, Whisper). 42 in total.
- **Pitch**: raise or lower your voice in Hz.
- **Size**: makes the voice bigger (darker) or smaller.
- **Voice changer**: from smaller to bigger in one move.
- **Speed**: speak faster or slower. At other speeds others hear you a little late (the delay is shown). **Keep pitch** keeps the pitch while the speed changes.
- **Off** button: puts the mask back to normal.
- **Glitch**: hold the button to glitch your voice. The list picks the style (Repeat, Beep, Stutter, Reverse, Tape stop, Scratch, Robot, Crush, Chipmunk, Deep, Echo, Cut, Glitch). The key button sets a key that holds the glitch from any program.
- **Mask on**: choose what gets the mask: **My voice**, **Sound clip**, **Program**.

## 5. Graphic equalizer and bass

- **7 bands** (125 Hz to 8 kHz) from -12 to +12 dB, and an overall **Level**. Double-click a band to put it back to 0.
- **Presets**: Flat, Bass, Treble, Vocal, Rock, Pop, Jazz, Classical, Dance, Acoustic. Save your own with the save button and delete it with the trash. **Default** resets everything.
- **Enable equalizer**: turns the equalizer on or off. It shapes everything that goes to the mic.
- **Bass slider** (under the equalizer): from -12 to +30 dB. It is added on top of the automatic bass boost that grows with the mic level.

## 6. Sound clip

- Paste a link or open a sound file, then press **Play**. **Pause**, **Stop**, a **position** slider and **10 s** back/forward buttons.
- **Volume** (100 is normal) and **Speed**. **Keep pitch** keeps the pitch while the speed changes. **Voice speed** matches the clip speed to your voice speed.
- **Hear it myself**: you hear the clip too. **Send to the mic**: others hear it.

## 7. Program on the mic

- Pick a running game or app and its sound goes into your mic. You can pick **up to 4 programs at once**: open the list, click a program to add it, click it again to remove it. The closed box shows the first name and how many more, for example `Chrome +2`. Choose `(none)` to remove all.
- **Level**: program sound level (100 is normal).
- **Only I hear it**: the sound stays in your headphones and never reaches the mic.
- **Hear it through the card / from the app**: how you hear the program yourself.
- The program sound can also get the echo and the mask (see Echo on and Mask on).

## 8. Recorder and Tone window

**Recorder** (below the program section):
- **Record** records your voice with the effects, what you hear, or both at once. Choose with the two source buttons.
- **Last** keeps the last part of what was said or played all the time, from 5 seconds up to 10 minutes, and puts it in the editor with one click. The arrows next to it pick how much to keep. Lit **quiet cut** removes silence automatically.
- **Editor**: click the wave to play from that point, drag across it to pick a part. **Cut out** removes it, **Keep only** keeps only it. **Fade in / Fade out** soften the start and end. **Undo / Redo** (Ctrl+Z, Ctrl+Y). A button cuts the silence out of the whole recording.
- **Send to mic** plays the recording into the mic. **Save as** saves MP3, WAV, M4A, WMA or FLAC. The folder is set in Settings.

**Tone window:**
- A square pad: move the dot to make the voice deeper or sharper, with more or less middle.
- **Vocal** part: strength, low, mid and high lift and output level of the Vocal noise isolation.

## 9. Mixer

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

- **12 pads**. Click a pad to play it. Give a pad a key (**Set key**) and it plays from any program, even inside a game. **Stop all** and a **Stop key** stop every sound.
- Pick a sound in the list and press **Put on pad** (or double-click). **Add sounds** adds your own files, **Remove sound** removes one from the list. **Trim** picks a part, fades in and out. **Rename**, **Clear pad**.
- **Sound library with categories**: use the arrows above the list to switch between **All**, **Funny**, **Minecraft**, **Cinematic**, **Animals** and **Mine** (your own sounds). The library is downloaded by `tools/get-sounds.ps1` into `%APPDATA%\OctopusEAX\sounds\<Category>`. Any folder you add there becomes a new category.
- Pads follow the Sound clip volume, **Hear it myself** and **Send to the mic**.

## 11. Settings

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

- **Bottom meter** shows what goes into the mic. Drag the window corner to resize, double-click it for the normal size.
- **Remembers your last settings** automatically: room, devices, levels and everything else (`%APPDATA%\OctopusEAX\last-session.ini`).
- **System tray** and **Start with Windows**.
- **Hints**: rest the mouse on any control for a short explanation.
- **Virtual cable setup**: the program offers to install the free VB-Audio Virtual Cable the first time.

## 13. For developers

Rooms are rows in `src/presets/card_presets.hpp`, masks are rows in `src/voice/voice_masks.hpp`, and Arabic texts are in `src/ui/lang.hpp`. See the main README for the field-by-field guide.

---

<a name="arabic"></a>

<div dir="rtl">

# العربية

برنامج 3mooret EAX يقف بين المايك وديسكورد (أو اللعبة). صوتك يدخل البرنامج، يغيّره، ثم يطلع من مايك وهمي اسمه **CABLE Output (VB-Audio Virtual Cable)**. أنت تختار هذا المايك في ديسكورد أو اللعبة. ويقدر يدخل نفس المايك الوهمي مقاطع صوتية ولوحة الأصوات وصوت البرامج الثانية.

## ١. الشريط العلوي

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
