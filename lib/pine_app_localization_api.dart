import 'package:injectable/injectable.dart';
import 'package:pine/models/localization.dart';
import 'package:pine/services/api/api_service.dart';
import 'package:recorder_poc/localization.dart';

mixin PineAppLocalizationApi {
  Future<List<LocalizationContent>> fetchPineAppLocalitazionsList();
}

@Injectable(as: PineAppLocalizationApi)
class PineAppLocalizationAdapter implements PineAppLocalizationApi {
  final PineAppLocalizationService api;

  PineAppLocalizationAdapter(this.api);

  @override
  Future<List<LocalizationContent>> fetchPineAppLocalitazionsList() async {
    return api.getApi('content/pineappUiValues', (r) => (r['content'] as List).map((e) => LocalizationContent.fromJson(e)).toList());
  }
}
