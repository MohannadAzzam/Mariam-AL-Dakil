import 'package:mariam_aldakhil/core/utils/assets.dart';

class Setting {
  String icon;
  String text;
  int index;

  Setting(this.index, this.icon, this.text);
}

class SettingList {
  List<Setting> settingList = [
    Setting(0, AssetsData.passwordSettingsSvg, "Change Password"),
    Setting(1, AssetsData.languageSvg, "Language"),
  ];
}

// class SettingScreens {
//     String icon;
//   String text;

//   SettingScreens(this.icon, this.text);
// }

class SettingScreenList {
  List<Setting> settingScreenList = [
    Setting(2, AssetsData.aboutSvg, "About Us"),
    Setting(3, AssetsData.contactSvg, "Contact Us"),
    Setting(4, AssetsData.faqSvg, "Faq's"),
    Setting(5, AssetsData.privacySvg, "Privacy Policy"),
    Setting(6, AssetsData.termsSvg, "Terms & Conditions")
  ];
}
