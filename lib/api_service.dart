import 'dart:convert';
import 'dart:developer';

import 'package:appdynamics_agent/appdynamics_agent.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:pine/constants/constants.dart';
import 'package:pine/main.dart';
import 'package:pine/services/api/base_api.dart';
import 'package:pine/utils/custom_connectivity/connectivity_adapter.dart';
import 'package:pine/utils/custom_connectivity/custom_connectivity.dart';
import 'package:pine/utils/get_current_language.dart';

abstract class ApiService with BaseApi {
  String getService();

  String? _baseUrl;

  CustomConnectivity? _connectivity;

  @override
  String? get baseUrl => _baseUrl;

  @override
  http.Client get client => TrackedHttpClient(http.Client());

  @override
  CustomConnectivity get connectivity => _connectivity!;

  ApiService() {
    _baseUrl = '${env!['PINE_API_URL']}${getService()}';
    _connectivity = ConnectivityAdapter();
  }

  @override
  Map<String, String> getHeaders(Map<String, String>? headers) {
    return {
      'ApiKey': env!['PINE_API_KEY'] as String,
      'X-API-Key': env!['PINE_API_KEY'] as String,
      'Content-Type': 'application/vnd.api+json',
    };
  }
}

@injectable
class CmsService extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_CMS']}${env!['PINE_API_CMS_VERSION']}';
  }
}

@injectable
class CmsServiceNew extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_CMS_NEW']}${env!['PINE_API_CMS_NEW_VERSION']}';
  }
}

@injectable
class SearchService extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_SEARCH']}${env!['PINE_API_SEARCH_VERSION']}';
  }
}

@injectable
class SearchServiceV2 extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_SEARCH']}${env!['PINE_API_SEARCH_NEW_VERSION']}';
  }
}

@injectable
class DrugsSearchService extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_SEARCH']}${env!['PINE_API_SEARCH_VERSION']}';
  }
}

@injectable
class SearchServiceNew extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_SEARCH_NEW']}${env!['PINE_API_SEARCH_NEW_VERSION']}';
  }
}

@injectable
class ConfigService extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_CONFIG']}${env!['PINE_API_CONFIG_VERSION']}';
  }
}

@injectable
class ScanImageServiceInsurance extends ApiService {
  @override
  String getService() {
    return 'cardtextext/api/v1';
  }
}

@injectable
class ScanImageServiceLicense extends ApiService {
  @override
  String getService() {
    return 'driverlicense/api/v1';
  }
}

@injectable
class FeedbackService extends ApiService {
  @override
  String getService() {
    return '${env!['PINE_API_FEEDBACK']}${env!['PINE_API_FEEDBACK_VERSION']}';
  }
}

@injectable
class DrugsService extends ApiService {
  @override
  String getService() {
    return 'search/api/v1/medications/search/';
  }
}

@injectable
class VirtualVisitWelcomeImageService extends ApiService {
  @override
  String getService() {
    return Constants.VIRTUAL_VISIT_WELCOME_PAGE_IMAGE_URL;
  }
}

@injectable
class VirtualVisitWelcomeContentService extends ApiService {
  @override
  String getService() {
    return ' ';
  }
}

@injectable
class ZoomAppointmentServiceList extends ApiService {
  ZoomAppointmentServiceList() {
    _baseUrl = '${env!['PINE_API_ZOOM_APPOINTMENT_SERVICE_BASE_URL']}';
  }

  @override
  String getService() {
    return '${env!['PINE_API_CMS_NEW']}${env!['PINE_API_CMS_NEW_VERSION']}';
  }
}

@injectable
class PineAppLocalizationService extends ApiService {
  PineAppLocalizationService() {
    _baseUrl = '${env!['PINE_API_BASE_PROFILE_URL']}${getService()}';
  }

  @override
  String getService() {
    return '${env!['PINE_API_VERSION']}';
  }

  @override
  Future<T> getApi<T>(
    String url,
    T Function(dynamic value) mapperFunction, {
    Map<String, String>? headers,
    bool sendHeaders = true,
    bool overrideHeaders = false,
    String basicAuth = '',
    bool isBearerToken = false,
    String? completeUrl,
  }) async {
    final BaseAPIRequest request = BaseAPIRequest(
        uri: Uri.parse(completeUrl ?? (baseUrl! + url)),
        headers: {
          'X-API-Key': env!['PINE_API_PROFILE_KEY'] as String,
          'Content-Type': 'application/json',
          'Accept-Language': await GetDefaultLang().getLanguageCode(completeLanguageCode: false),
        },
        requestMethod: HttpMethod.GET);
    await Instrumentation.startNextSession();
    return callApi(request, mapperFunction);
  }
}

@injectable
class IntakeAggregationService extends ApiService {
  IntakeAggregationService() {
    _baseUrl = '${env!['PINE_AMWELL_API_URL']}';
  }

  @override
  String getService() {
    return '';
  }

  @override
  Map<String, String> getHeaders(
    Map<String, String>? headers, {
    String auth = '',
  }) {
    var mandatoryHeaders = {
      'ApiKey': env!['PINE_API_KEY'] as String,
      'X-API-Key': env!['PINE_AMWELL_API_KEY'] as String,
      'Content-Type': 'application/json',
      if (auth.isNotEmpty) 'Authorization': auth,
    };
    mandatoryHeaders.addAll(headers ?? {});
    return mandatoryHeaders;
  }

  @override
  Future<T> postApi<T>(
    String url,
    T Function(dynamic value) mapperFunction, {
    Map<String, String>? headers,
    String basicAuth = '',
    bool sendHeaders = true,
    String? completeUrl,
    Map<String, dynamic>? sendBody,
  }) async {
    headers = getHeaders(headers ?? {}, auth: basicAuth);
    headers.addAll(await BaseApi.getBhsfHeaders());

    final BaseAPIRequest request =
        BaseAPIRequest(uri: Uri.parse(completeUrl ?? (baseUrl! + url)), headers: headers, body: jsonEncode(sendBody), requestMethod: HttpMethod.POST);
    log(json.encode(sendBody), name: 'requestBody');
    await Instrumentation.startNextSession();
    return callApi(request, mapperFunction);
  }
}

@injectable
class WebHookURLService extends ApiService {
  WebHookURLService();

  @override
  String getService() {
    return '';
  }

  @override
  Map<String, String> getHeaders(Map<String, String>? headers, {String auth = ''}) {
    var mandatoryHeaders = {'Authorization': 'Bearer $auth', 'x-api-key': env!['PINE_AMWELL_API_KEY'] as String, 'Content-Type': 'text/plain'};
    mandatoryHeaders.addAll(headers ?? {});
    return mandatoryHeaders;
  }

  @override
  Future<T> postApi<T>(
    String url,
    T Function(dynamic value) mapperFunction, {
    Map<String, String>? headers,
    String basicAuth = '',
    bool sendHeaders = true,
    String? completeUrl,
    Map<String, dynamic>? sendBody,
  }) async {
    headers = getHeaders(headers ?? {}, auth: basicAuth);
    headers.addAll(await BaseApi.getBhsfHeaders());

    final BaseAPIRequest request = BaseAPIRequest(uri: Uri.parse(url!), headers: headers, body: jsonEncode(sendBody), requestMethod: HttpMethod.POST);
    await Instrumentation.startNextSession();
    return callApi(request, mapperFunction);
  }
}
