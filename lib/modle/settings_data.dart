import 'package:mariam_aldakhil/core/utils/assets.dart';

class Setting {
  String icon;
  String text;

  Setting(this.icon, this.text);
}

class SettingList {
  List<Setting> settingList = [
    Setting(AssetsData.passwordSettingsSvg, "Change Password"),
    Setting(AssetsData.languageSvg, "Language"),
  ];
}

// class SettingScreens {
//     String icon;
//   String text;

//   SettingScreens(this.icon, this.text);
// }

class SettingScreenList {
  List<Setting> settingScreenList = [
    Setting(AssetsData.aboutSvg, "About Us"),
    Setting(AssetsData.contactSvg, "Contact Us"),
    Setting(AssetsData.faqSvg, "Faq's"),
    Setting(AssetsData.privacySvg, "Privacy Policy"),
    Setting(AssetsData.termsSvg, "Terms & Conditions")
  ];
}
