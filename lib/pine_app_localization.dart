import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PineAppLocalization {
  late final Locale _locale;
  final PineAppLocalizationApi? _pineAppLocalizationApi;
  final AssetBundle assetBundle;

  PineAppLocalization(this._locale, this._pineAppLocalizationApi, this.assetBundle);

  static PineAppLocalization of(BuildContext context) {
    return Localizations.of<PineAppLocalization>(context, PineAppLocalization)!;
  }

  Map<String, String> _localizedValues = {};
  Map<String, String> _localizedNetworkValues = {};

  Future loadLocalizations() async {
    await _getLocalLocalizations();
    await _fetchLocalizations();
  }

  Future _getLocalLocalizations() async {
    String jsonStringValues = await assetBundle.loadString('assets/i18n/app_${_locale.languageCode}.json');
    Map<String, dynamic> mappedValues = json.decode(jsonStringValues);

    _localizedValues = mappedValues.map((key, value) => MapEntry(key, value.toString()));
  }

  Future<void> _fetchLocalizations() async {
    try {
      var response = await _pineAppLocalizationApi?.fetchPineAppLocalitazionsList();

      if (response != null) {
        _localizedNetworkValues = Map.fromEntries(response.map((response) => MapEntry(response.code.toString(), response.value.toString())));
      }
    } catch (e) {
      print('Error fetching app localizations: ${e.toString()}');
    }
  }

  String localized(String key) {
    final apiValue = _localizedNetworkValues[key];

    if (apiValue != null) {
      return apiValue;
    }

    final value = _localizedValues[key];

    return value ?? key;
  }

  static LocalizationsDelegate<PineAppLocalization> delegate = _AppLocalizationDelegate(rootBundle);

  static LocalizationsDelegate<PineAppLocalization> testDelegate(assetBundle) => _AppLocalizationDelegate(assetBundle);
}

class _AppLocalizationDelegate extends LocalizationsDelegate<PineAppLocalization> {
  final AssetBundle assetBundle;

  const _AppLocalizationDelegate(this.assetBundle);

  @override
  bool isSupported(Locale locale) {
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<PineAppLocalization> load(Locale locale) async {
    final pineAppLocalizationApi = getIt.get<PineAppLocalizationApi>();

    PineAppLocalization appLocalization = PineAppLocalization(locale, pineAppLocalizationApi, assetBundle);
    await appLocalization.loadLocalizations();

    return appLocalization;
  }

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}
