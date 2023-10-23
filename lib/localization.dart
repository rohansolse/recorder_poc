class LocalizationContent {
  String? defaultValue;
  String? code;
  String? value;

  LocalizationContent({this.defaultValue, this.code, this.value});

  LocalizationContent.fromJson(Map<String, dynamic> json) {
    defaultValue = json['default'];
    code = json['code'];
    value = json['value'];
  }
}
