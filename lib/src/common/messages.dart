abstract class WelcomePageMessages {
  String get appTitle => 'Teamoji';

  String get appSubtitle => '\u{1F551} Team Status \u{1F680}';

  String get appIcon => '\u{1F63B}';

  String get signInMessage => 'sign in with google';

  String get appMainFooter => 'Powered by Firebase';

  String get appSubFooter => 'source on github';
}

abstract class CreateTeamMessages {
  String get createTeamPromptHeader => 'Feeling a little lonely?';

  String get createTeamPromptContent => 'Let\'s make a new team!';

  String get pageIcon => '\u{1F914}';

  String get createTeamButtonMessage => 'create team';
}

abstract class EmojiSelectorMessages {
  String get promptSelectMessage => 'Select an Emoji';
}


abstract class HomepaheMessages {
  String get drawerHeaderMessage => 'Your Teams';

  String get createTeamButtonMessage => 'Create Team';

  String get signOutButtonMessage => 'Sign Out';
}

abstract class EmojiList {
  List<String> get allEmojis => const [
        '\u{1F60B}',
        '\u{1F60E}',
        '\u{1F60D}',
        '\u{1F618}',
        '\u{1F617}',
        '\u{1F619}',
        '\u{1F61A}',
        '\u{1F607}',
        '\u{1F610}',
        '\u{1F611}',
        '\u{1F636}',
        '\u{1F60F}',
        '\u{1F623}',
        '\u{1F625}',
        '\u{1F62E}',
        '\u{1F62F}',
        '\u{1F62A}',
        '\u{1F62B}',
        '\u{1F634}',
        '\u{1F60C}',
        '\u{1F61B}',
        '\u{1F61C}',
        '\u{1F61D}',
        '\u{1F612}',
        '\u{1F613}',
        '\u{1F614}',
        '\u{1F615}',
        '\u{1F616}',
        '\u{1F637}',
        '\u{1F632}',
        '\u{1F61E}',
        '\u{1F61F}',
        '\u{1F624}',
        '\u{1F622}',
        '\u{1F62D}',
        '\u{1F626}',
        '\u{1F627}',
        '\u{1F628}',
        '\u{1F629}',
        '\u{1F62C}',
        '\u{1F630}',
        '\u{1F631}',
        '\u{1F633}',
        '\u{1F635}',
        '\u{1F621}',
        '\u{1F620}',
        '\u{1F608}',
        '\u{1F47F}',
        '\u{1F479}',
        '\u{1F47A}',
        '\u{1F480}',
        '\u{1F47B}',
        '\u{1F47D}',
        '\u{1F47E}',
        '\u{1F4A9}',
        '\u{1F63A}',
        '\u{1F638}',
        '\u{1F639}',
        '\u{1F63B}',
        '\u{1F63C}',
        '\u{1F63D}',
        '\u{1F640}',
        '\u{1F63F}',
        '\u{1F63E}',
        '\u{1F648}',
        '\u{1F649}',
        '\u{1F64A}',
        '\u{1F466}',
        '\u{1F467}',
        '\u{1F468}',
        '\u{1F469}',
        '\u{1F474}',
        '\u{1F475}',
        '\u{1F476}',
        '\u{1F471}',
        '\u{1F46E}',
        '\u{1F472}',
        '\u{1F473}',
        '\u{1F477}',
        '\u{1F478}',
        '\u{1F482}',
        '\u{1F385}',
        '\u{1F47C}',
        '\u{1F46F}',
        '\u{1F486}',
        '\u{1F487}',
        '\u{1F470}',
        '\u{1F64D}',
        '\u{1F64E}',
        '\u{1F645}',
        '\u{1F646}',
        '\u{1F481}',
        '\u{1F64B}',
        '\u{1F647}',
        '\u{1F64C}',
        '\u{1F64F}',
        '\u{1F464}',
        '\u{1F465}',
        '\u{1F6B6}',
        '\u{1F3C3}',
        '\u{1F483}',
        '\u{1F48F}',
        '\u{1F491}',
        '\u{1F46A}',
        '\u{1F46B}',
        '\u{1F46C}',
        '\u{1F46D}',
        '\u{1F4AA}',
        '\u{1F448}',
        '\u{1F449}',
        '\u{261D}',
        '\u{1F446}',
        '\u{1F447}',
        '\u{270C}',
        '\u{270A}',
        '\u{270B}',
        '\u{1F44A}',
        '\u{1F44C}',
        '\u{1F44D}',
        '\u{1F44E}',
        '\u{1F44B}',
        '\u{1F44F}',
        '\u{1F450}',
        '\u{1F485}',
        '\u{1F442}',
        '\u{1F443}',
        '\u{1F463}',
        '\u{1F440}',
        '\u{1F445}',
        '\u{1F444}',
        '\u{1F48B}',
        '\u{1F498}',
        '\u{2764}',
        '\u{1F493}',
        '\u{1F494}',
        '\u{1F495}',
        '\u{1F496}',
        '\u{1F497}',
        '\u{1F499}',
        '\u{1F49A}',
        '\u{1F49B}',
        '\u{1F49C}',
        '\u{1F49D}',
        '\u{1F49E}',
        '\u{1F49F}',
        '\u{1F48C}',
        '\u{1F4A4}',
        '\u{1F4A2}',
        '\u{1F4A3}',
        '\u{1F4A5}',
        '\u{1F4A6}',
        '\u{1F4A8}',
        '\u{1F4AB}',
        '\u{1F4AC}',
        '\u{1F4AD}',
        '\u{1F453}',
        '\u{1F454}',
        '\u{1F455}',
        '\u{1F456}',
        '\u{1F457}',
        '\u{1F458}',
        '\u{1F459}',
        '\u{1F45A}',
        '\u{1F45B}',
        '\u{1F45C}',
        '\u{1F45D}',
        '\u{1F392}',
        '\u{1F45E}',
        '\u{1F45F}',
        '\u{1F460}',
        '\u{1F461}',
        '\u{1F462}',
        '\u{1F451}',
        '\u{1F452}',
        '\u{1F3A9}',
        '\u{1F393}',
        '\u{1F484}',
        '\u{1F48D}',
        '\u{1F48E}',
        '\u{1F435}',
        '\u{1F412}',
        '\u{1F436}',
        '\u{1F415}',
        '\u{1F429}',
        '\u{1F43A}',
        '\u{1F431}',
        '\u{1F408}',
        '\u{1F42F}',
        '\u{1F405}',
        '\u{1F406}',
        '\u{1F434}',
        '\u{1F40E}',
        '\u{1F42E}',
        '\u{1F402}',
        '\u{1F403}',
        '\u{1F404}',
        '\u{1F437}',
        '\u{1F416}',
        '\u{1F417}',
        '\u{1F43D}',
        '\u{1F40F}',
        '\u{1F411}',
        '\u{1F410}',
        '\u{1F42A}',
        '\u{1F42B}',
        '\u{1F418}',
        '\u{1F42D}',
        '\u{1F401}',
        '\u{1F400}',
        '\u{1F439}',
        '\u{1F430}',
        '\u{1F407}',
        '\u{1F43B}',
        '\u{1F428}',
        '\u{1F43C}',
        '\u{1F43E}',
        '\u{1F414}',
        '\u{1F413}',
        '\u{1F423}',
        '\u{1F424}',
        '\u{1F425}',
        '\u{1F426}',
        '\u{1F427}',
        '\u{1F438}',
        '\u{1F40A}',
        '\u{1F422}',
        '\u{1F40D}',
        '\u{1F432}',
        '\u{1F409}',
        '\u{1F433}',
        '\u{1F40B}',
        '\u{1F42C}',
        '\u{1F41F}',
        '\u{1F420}',
        '\u{1F421}',
        '\u{1F419}',
        '\u{1F41A}',
        '\u{1F40C}',
        '\u{1F41B}',
        '\u{1F41C}',
        '\u{1F41D}',
        '\u{1F41E}',
        '\u{1F490}',
        '\u{1F338}',
        '\u{1F4AE}',
        '\u{1F339}',
        '\u{1F33A}',
        '\u{1F33B}',
        '\u{1F33C}',
        '\u{1F337}',
        '\u{1F331}',
        '\u{1F332}',
        '\u{1F333}',
        '\u{1F334}',
        '\u{1F335}',
        '\u{1F33E}',
        '\u{1F33F}',
        '\u{1F340}',
        '\u{1F341}',
        '\u{1F342}',
        '\u{1F343}',
        '\u{1F347}',
        '\u{1F348}',
        '\u{1F349}',
        '\u{1F34A}',
        '\u{1F34B}',
        '\u{1F34C}',
        '\u{1F34D}',
        '\u{1F34E}',
        '\u{1F34F}',
        '\u{1F350}',
        '\u{1F351}',
        '\u{1F352}',
        '\u{1F353}',
        '\u{1F345}',
        '\u{1F346}',
        '\u{1F33D}',
        '\u{1F344}',
        '\u{1F330}',
        '\u{1F35E}',
        '\u{1F356}',
        '\u{1F357}',
        '\u{1F354}',
        '\u{1F35F}',
        '\u{1F355}',
        '\u{1F372}',
        '\u{1F371}',
        '\u{1F358}',
        '\u{1F359}',
        '\u{1F35A}',
        '\u{1F35B}',
        '\u{1F35C}',
        '\u{1F35D}',
        '\u{1F360}',
        '\u{1F362}',
        '\u{1F363}',
        '\u{1F364}',
        '\u{1F365}',
        '\u{1F361}',
        '\u{1F366}',
        '\u{1F367}',
        '\u{1F368}',
        '\u{1F369}',
        '\u{1F36A}',
        '\u{1F382}',
        '\u{1F370}',
        '\u{1F36B}',
        '\u{1F36C}',
        '\u{1F36D}',
        '\u{1F36E}',
        '\u{1F36F}',
        '\u{1F37C}',
        '\u{2615}',
        '\u{1F375}',
        '\u{1F376}',
        '\u{1F377}',
        '\u{1F378}',
        '\u{1F379}',
        '\u{1F37A}',
        '\u{1F37B}',
        '\u{1F374}',
        '\u{1F373}',
        '\u{1F30D}',
        '\u{1F30E}',
        '\u{1F30F}',
        '\u{1F310}',
        '\u{1F30B}',
        '\u{1F5FB}',
        '\u{1F3E0}',
        '\u{1F3E1}',
        '\u{26EA}',
        '\u{1F3E2}',
        '\u{1F3E3}',
        '\u{1F3E4}',
        '\u{1F3E5}',
        '\u{1F3E6}',
        '\u{1F3E8}',
        '\u{1F3E9}',
        '\u{1F3EA}',
        '\u{1F3EB}',
        '\u{1F3EC}',
        '\u{1F3ED}',
        '\u{1F3EF}',
        '\u{1F3F0}',
        '\u{1F492}',
        '\u{1F5FC}',
        '\u{1F5FD}',
        '\u{1F5FE}',
        '\u{26F2}',
        '\u{26FA}',
        '\u{1F301}',
        '\u{1F303}',
        '\u{1F304}',
        '\u{1F305}',
        '\u{1F306}',
        '\u{1F307}',
        '\u{1F309}',
        '\u{2668}',
        '\u{1F30C}',
        '\u{1F3A0}',
        '\u{1F3A1}',
        '\u{1F3A2}',
        '\u{1F488}',
        '\u{1F3AA}',
        '\u{1F3AD}',
        '\u{1F3A8}',
        '\u{1F3B0}',
        '\u{1F682}',
        '\u{1F683}',
        '\u{1F684}',
        '\u{1F685}',
        '\u{1F686}',
        '\u{1F687}',
        '\u{1F688}',
        '\u{1F689}',
        '\u{1F68A}',
        '\u{1F69D}',
        '\u{1F69E}',
        '\u{1F68B}',
        '\u{1F68C}',
        '\u{1F68D}',
        '\u{1F68E}',
        '\u{1F68F}',
        '\u{1F690}',
        '\u{1F691}',
        '\u{1F692}',
        '\u{1F693}',
        '\u{1F694}',
        '\u{1F695}',
        '\u{1F696}',
        '\u{1F697}',
        '\u{1F698}',
        '\u{1F699}',
        '\u{1F69A}',
        '\u{1F69B}',
        '\u{1F69C}',
        '\u{1F6B2}',
        '\u{26FD}',
        '\u{1F6A8}',
        '\u{1F6A5}',
        '\u{1F6A6}',
        '\u{1F6A7}',
        '\u{2693}',
        '\u{26F5}',
        '\u{1F6A3}',
        '\u{1F6A4}',
        '\u{1F6A2}',
        '\u{2708}',
        '\u{1F4BA}',
        '\u{1F681}',
        '\u{1F69F}',
        '\u{1F6A0}',
        '\u{1F6A1}',
        '\u{1F680}',
        '\u{1F6AA}',
        '\u{1F6BD}',
        '\u{1F6BF}',
        '\u{1F6C0}',
        '\u{1F6C1}',
        '\u{231B}',
        '\u{23F3}',
        '\u{231A}',
        '\u{23F0}',
        '\u{1F55B}',
        '\u{1F567}',
        '\u{1F550}',
        '\u{1F55C}',
        '\u{1F551}',
        '\u{1F55D}',
        '\u{1F552}',
        '\u{1F55E}',
        '\u{1F553}',
        '\u{1F55F}',
        '\u{1F554}',
        '\u{1F560}',
        '\u{1F555}',
        '\u{1F561}',
        '\u{1F556}',
        '\u{1F562}',
        '\u{1F557}',
        '\u{1F563}',
        '\u{1F558}',
        '\u{1F564}',
        '\u{1F559}',
        '\u{1F565}',
        '\u{1F55A}',
        '\u{1F566}',
        '\u{1F311}',
        '\u{1F312}',
        '\u{1F313}',
        '\u{1F314}',
        '\u{1F315}',
        '\u{1F316}',
        '\u{1F317}',
        '\u{1F318}',
        '\u{1F319}',
        '\u{1F31A}',
        '\u{1F31B}',
        '\u{1F31C}',
        '\u{2600}',
        '\u{1F31D}',
        '\u{1F31E}',
        '\u{2B50}',
        '\u{1F31F}',
        '\u{1F320}',
        '\u{2601}',
        '\u{26C5}',
        '\u{1F300}',
        '\u{1F308}',
        '\u{1F302}',
        '\u{2614}',
        '\u{26A1}',
        '\u{2744}',
        '\u{26C4}',
        '\u{1F525}',
        '\u{1F4A7}',
        '\u{1F30A}',
        '\u{1F383}',
        '\u{1F384}',
        '\u{1F386}',
        '\u{1F387}',
        '\u{2728}',
        '\u{1F388}',
        '\u{1F389}',
        '\u{1F38A}',
        '\u{1F38B}',
        '\u{1F38C}',
        '\u{1F38D}',
        '\u{1F38E}',
        '\u{1F38F}',
        '\u{1F390}',
        '\u{1F391}',
        '\u{1F380}',
        '\u{1F381}',
        '\u{1F3AB}',
        '\u{26BD}',
        '\u{26BE}',
        '\u{1F3C0}',
        '\u{1F3C8}',
        '\u{1F3C9}',
        '\u{1F3BE}',
        '\u{1F3B1}',
        '\u{1F3B3}',
        '\u{26F3}',
        '\u{1F3A3}',
        '\u{1F3BD}',
        '\u{1F3BF}',
        '\u{1F3C2}',
        '\u{1F3C4}',
        '\u{1F3C7}',
        '\u{1F3CA}',
        '\u{1F6B4}',
        '\u{1F6B5}',
        '\u{1F3C6}',
        '\u{1F3AF}',
        '\u{1F3AE}',
        '\u{1F3B2}',
        '\u{2660}',
        '\u{2665}',
        '\u{2666}',
        '\u{2663}',
        '\u{1F0CF}',
        '\u{1F004}',
        '\u{1F3B4}',
        '\u{1F507}',
        '\u{1F508}',
        '\u{1F509}',
        '\u{1F50A}',
        '\u{1F4E2}',
        '\u{1F4E3}',
        '\u{1F4EF}',
        '\u{1F514}',
        '\u{1F515}',
        '\u{1F3BC}',
        '\u{1F3B5}',
        '\u{1F3B6}',
        '\u{1F3A4}',
        '\u{1F3A7}',
        '\u{1F3B7}',
        '\u{1F3B8}',
        '\u{1F3B9}',
        '\u{1F3BA}',
        '\u{1F3BB}',
        '\u{1F4FB}',
        '\u{1F4F1}',
        '\u{1F4F2}',
        '\u{260E}',
        '\u{1F4DE}',
        '\u{1F4DF}',
        '\u{1F4E0}',
        '\u{1F50B}',
        '\u{1F50C}',
        '\u{1F4BB}',
        '\u{1F4BD}',
        '\u{1F4BE}',
        '\u{1F4BF}',
        '\u{1F4C0}',
        '\u{1F3A5}',
        '\u{1F3AC}',
        '\u{1F4FA}',
        '\u{1F4F7}',
        '\u{1F4F9}',
        '\u{1F4FC}',
        '\u{1F50D}',
        '\u{1F50E}',
        '\u{1F52C}',
        '\u{1F52D}',
        '\u{1F4E1}',
        '\u{1F4A1}',
        '\u{1F526}',
        '\u{1F3EE}',
        '\u{1F4D4}',
        '\u{1F4D5}',
        '\u{1F4D6}',
        '\u{1F4D7}',
        '\u{1F4D8}',
        '\u{1F4D9}',
        '\u{1F4DA}',
        '\u{1F4D3}',
        '\u{1F4D2}',
        '\u{1F4C3}',
        '\u{1F4DC}',
        '\u{1F4C4}',
        '\u{1F4F0}',
        '\u{1F4D1}',
        '\u{1F516}',
        '\u{1F4B0}',
        '\u{1F4B4}',
        '\u{1F4B5}',
        '\u{1F4B6}',
        '\u{1F4B7}',
        '\u{1F4B8}',
        '\u{1F4B3}',
        '\u{1F4B9}',
        '\u{2709}',
        '\u{1F4E7}',
        '\u{1F4E8}',
        '\u{1F4E9}',
        '\u{1F4E4}',
        '\u{1F4E5}',
        '\u{1F4E6}',
        '\u{1F4EB}',
        '\u{1F4EA}',
        '\u{1F4EC}',
        '\u{1F4ED}',
        '\u{1F4EE}',
        '\u{270F}',
        '\u{2712}',
        '\u{1F4DD}',
        '\u{1F4BC}',
        '\u{1F4C1}',
        '\u{1F4C2}',
        '\u{1F4C5}',
        '\u{1F4C6}',
        '\u{1F4C7}',
        '\u{1F4C8}',
        '\u{1F4C9}',
        '\u{1F4CA}',
        '\u{1F4CB}',
        '\u{1F4CC}',
        '\u{1F4CD}',
        '\u{1F4CE}',
        '\u{1F4CF}',
        '\u{1F4D0}',
        '\u{2702}',
        '\u{1F512}',
        '\u{1F513}',
        '\u{1F50F}',
        '\u{1F510}',
        '\u{1F511}',
        '\u{1F528}',
        '\u{1F527}',
        '\u{1F529}',
        '\u{1F517}',
        '\u{1F489}',
        '\u{1F48A}',
        '\u{1F52A}',
        '\u{1F52B}',
        '\u{1F3C1}',
        '\u{1F6A9}',
        '\u{1F6AC}',
        '\u{1F5FF}',
        '\u{1F52E}',
        '\u{1F3E7}',
        '\u{1F6AE}',
        '\u{1F6B0}',
        '\u{267F}',
        '\u{1F6B9}',
        '\u{1F6BA}',
        '\u{1F6BB}',
        '\u{1F6BC}',
        '\u{1F6BE}',
        '\u{1F6C2}',
        '\u{1F6C3}',
        '\u{1F6C4}',
        '\u{1F6C5}',
        '\u{26A0}',
        '\u{1F6B8}',
        '\u{26D4}',
        '\u{1F6AB}',
        '\u{1F6B3}',
        '\u{1F6AD}',
        '\u{1F6AF}',
        '\u{1F6B1}',
        '\u{1F6B7}',
        '\u{2B06}',
        '\u{2197}',
        '\u{27A1}',
        '\u{2198}',
        '\u{2B07}',
        '\u{2199}',
        '\u{2B05}',
        '\u{2196}',
        '\u{2195}',
        '\u{2194}',
        '\u{21A9}',
        '\u{21AA}',
        '\u{2934}',
        '\u{2935}',
        '\u{1F503}',
        '\u{1F504}',
        '\u{1F519}',
        '\u{1F51A}',
        '\u{1F51B}',
        '\u{1F51C}',
        '\u{1F51D}',
        '\u{1F52F}',
        '\u{267B}',
        '\u{1F4DB}',
        '\u{1F530}',
        '\u{1F531}',
        '\u{2B55}',
        '\u{2705}',
        '\u{2611}',
        '\u{2714}',
        '\u{2716}',
        '\u{274C}',
        '\u{274E}',
        '\u{2795}',
        '\u{2796}',
        '\u{2797}',
        '\u{27B0}',
        '\u{27BF}',
        '\u{303D}',
        '\u{2733}',
        '\u{2734}',
        '\u{2747}',
        '\u{1F4B1}',
        '\u{1F4B2}',
        '\u{203C}',
        '\u{2049}',
        '\u{2753}',
        '\u{2754}',
        '\u{2755}',
        '\u{2757}',
        '\u{3030}',
        '\u{00A9}',
        '\u{00AE}',
        '\u{2122}',
        '\u{2648}',
        '\u{2649}',
        '\u{264A}',
        '\u{264B}',
        '\u{264C}',
        '\u{264D}',
        '\u{264E}',
        '\u{264F}',
        '\u{2650}',
        '\u{2651}',
        '\u{2652}',
        '\u{2653}',
        '\u{26CE}',
        '\u{1F500}',
        '\u{1F501}',
        '\u{1F502}',
        '\u{25B6}',
        '\u{23E9}',
        '\u{25C0}',
        '\u{23EA}',
        '\u{1F53C}',
        '\u{23EB}',
        '\u{1F53D}',
        '\u{23EC}',
        '\u{1F3A6}',
        '\u{1F505}',
        '\u{1F506}',
        '\u{1F4F6}',
        '\u{1F4F5}',
        '\u{1F4F3}',
        '\u{1F4F4}',
        '\u{0023}',
        '\u{20E3}',
        '\u{0030}',
        '\u{20E3}',
        '\u{0031}',
        '\u{20E3}',
        '\u{0032}',
        '\u{20E3}',
        '\u{0033}',
        '\u{20E3}',
        '\u{0034}',
        '\u{20E3}',
        '\u{0035}',
        '\u{20E3}',
        '\u{0036}',
        '\u{20E3}',
        '\u{0037}',
        '\u{20E3}',
        '\u{0038}',
        '\u{20E3}',
        '\u{0039}',
        '\u{20E3}',
        '\u{1F51F}',
        '\u{1F4AF}',
        '\u{1F51E}',
        '\u{1F520}',
        '\u{1F521}',
        '\u{1F522}',
        '\u{1F523}',
        '\u{1F524}',
        '\u{1F170}',
        '\u{1F18E}',
        '\u{1F171}',
        '\u{1F191}',
        '\u{1F192}',
        '\u{1F193}',
        '\u{2139}',
        '\u{1F194}',
        '\u{24C2}',
        '\u{1F195}',
        '\u{1F196}',
        '\u{1F17E}',
        '\u{1F197}',
        '\u{1F17F}',
        '\u{1F198}',
        '\u{1F199}',
        '\u{1F19A}',
        '\u{1F201}',
        '\u{1F202}',
        '\u{1F237}',
        '\u{1F236}',
        '\u{1F22F}',
        '\u{1F250}',
        '\u{1F239}',
        '\u{1F21A}',
        '\u{1F232}',
        '\u{1F251}',
        '\u{1F238}',
        '\u{1F234}',
        '\u{1F233}',
        '\u{3297}',
        '\u{3299}',
        '\u{1F23A}',
        '\u{1F235}',
        '\u{25AA}',
        '\u{25AB}',
        '\u{25FB}',
        '\u{25FC}',
        '\u{25FD}',
        '\u{25FE}',
        '\u{2B1B}',
        '\u{2B1C}',
        '\u{1F536}',
        '\u{1F537}',
        '\u{1F538}',
        '\u{1F539}',
        '\u{1F53A}',
        '\u{1F53B}',
        '\u{1F4A0}',
        '\u{1F518}',
        '\u{1F532}',
        '\u{1F533}',
        '\u{26AA}',
        '\u{26AB}',
        '\u{1F534}',
        '\u{1F535}'
      ];
}
