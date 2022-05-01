class AppData {
  AppData._();

  static final _ExpendetureData _expendetureData = _ExpendetureData._();
  static final _CardHolderData _cardHolderData = _CardHolderData._();
  static final _SettingsOptionsData _settingOptionsData =
      _SettingsOptionsData._();

  static _ExpendetureData get getExpendetureData => _expendetureData;
  static _CardHolderData get getCardHolderData => _cardHolderData;
  static _SettingsOptionsData get getSettingOptionsData => _settingOptionsData;
}

// LETS WORK ON IT
class _GeneralData {
  _GeneralData._();
}

class _ExpendetureData {
  _ExpendetureData._();

  final List<_Expendeture> _expendetures = [
    _Expendeture(
      image: "assets/images/burger.png",
      title: "KFC",
      date: "June 26",
      amount: "2010",
    ),
    _Expendeture(
      image: "assets/images/paypal.png",
      title: "Paypal",
      date: "June 28",
      amount: "12010",
    ),
    _Expendeture(
      image: "assets/images/car_repair.png",
      title: "Car Repair",
      date: "Aug 28",
      amount: "232010",
    ),
    _Expendeture(
      image: "assets/images/burger.png",
      title: "McDonald's",
      date: "Aug 30",
      amount: "109.98",
    ),
  ];

  List<_Expendeture> get getExpendetures => _expendetures;
}

class _Expendeture {
  late final String _image;
  late final String _title;
  late final String _date;
  late final String _amount;

  _Expendeture(
      {required image, required title, required date, required amount}) {
    _image = image;
    _title = title;
    _date = date;
    _amount = amount;
  }

  String get getImage => _image;
  String get getTitle => _title;
  String get getDate => _date;
  String get getAmount => _amount;
}

class _CardHolderData {
  _CardHolderData._();

  final String _name = "Ghulam";
  final String _position = "UX UI designer";
  final String _cardNumber = "4562 1122 4595 7852";
  final String _expryDate = "24/2021";
  final String _cardType = "Mastercard";
  final String _profileImage = "assets/images/profile_photo.png";
  final String _chipImage = "assets/images/chip.png";
  final String _cardLogo = "assets/images/master_card.png";

  String get getName => _name;
  String get getPosition => _position;
  String get getCardNumber => _cardNumber;
  String get getExpryDate => _expryDate;
  String get getCardType => _cardType;
  String get getProfilePhoto => _profileImage;
  String get getChipImage => _chipImage;
  String get getCardLogo => _cardLogo;
}

class _SettingsOptionsData {
  _SettingsOptionsData._();

  final List<_SettingsOption> _settingsOptions = [
    _SettingsOption(
      title: "Corporate APP",
      image: "assets/images/corporate_app.png",
    ),
    _SettingsOption(
      title: "Security Settings",
      image: "assets/images/security_settings.png",
    ),
    _SettingsOption(
      title: "Online Shopping",
      image: "assets/images/online_shopping.png",
    ),
    _SettingsOption(
      title: "Groceries",
      image: "assets/images/groceries.png",
    ),
    _SettingsOption(
      title: "Utilities",
      image: "assets/images/utilities.png",
    ),
    _SettingsOption(
      title: "Thumb Scanner",
      image: "assets/images/thumb_scanner.png",
    ),
  ];

  List<_SettingsOption> get getSettingsOptions => _settingsOptions;
}

class _SettingsOption {
  late final String _image;
  late final String _title;

  _SettingsOption({required image, required title}) {
    _image = image;
    _title = title;
  }

  String get getImage => _image;
  String get getTitle => _title;
}
