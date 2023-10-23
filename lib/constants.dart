// ignore_for_file: constant_identifier_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

enum DocumentConsentType {
  CONSENT_FOR_SERVICE_ANNUAL,
  CONSENT_FOR_SERVICE,
  PROTECTION_AGAINST_SURPRISE_MEDICAL_BILLS,
  OFF_CAMPUS_MEDICARE_OUTPATIENT_COINSURANCE_NOTICE,
  ENCOUNTER_SPECIFIC_CONSENTS,
  FACILITY_OPT_OUT_ATTESTATION,
  IDENTIFICATION_ATTESTATION_FORM,
}

enum SORT_TYPE { ASCENDING, DESCENDING }

enum SORT_BY { NAME, DISTANCE, AVAILABILITY, RATING }

enum DocumentCenterSortBy {
  PROVIDER,
  DOCUMENT,
  DATE,
}

enum LabResultSortBy {
  NAME,
  DATE,
}

enum InsuranceCardStatus {
  VALID,
  INVALID,
  PENDING,
}

enum InsuranceCardsStatusReason { NAME_MISMATCH, DOB_MISMATCH, INACTIVE, INVALID_PARTICIPANT_ID, SUBSCRIBER_NOT_FOUND_IN_PAYER_SYSTEM }

class Constants {
  static const int PROVIDER_LOCATION_MAX_COUNT = 50;
  static const double ANDROID_MINIMUM_WIDTH_SUPPORTED = 360.0;
  static const double IOS_MINIMUM_WIDTH_SUPPORTED = 375.0;
  static const double TABLET_MINIMUM_WIDTH = 600.0;
  static const double MOBILE_DEFAULT_TEXT_SCALE = 1.0;
  static const double REQUEST_APPOINTMENT_BUTTON_MIN_SIZE_WIDTH_SUPPORTED = 380.0;

  static const double APP_VERSION_4_16_4 = 4.164;
  static const double APP_VERSION_5_0 = 5.00;

  static const String DYNAMIC_IP_FOR_CHARLES = '192.168.2.1';
  static const String SELECT_LOCATION_INFO_NUMBER = '786-573-6000';

  static const String COMING_SOON_VIRTUAL_VIDEO_VISIT = 'coming_soon_10';
  static const String COMING_SOON_UC_PRE_ARRIVAL_FORMS = 'coming_soon_11';

  // TODO: Refactor to remove these 2 numbers and use supportNumbers from app settings instead
  static const String MAMMO_SCHEDULE_PHONE = '7865962464';
  static const String MAMMO_DISCLAIMER_PHONE = '786-596-2464';
  static const String OPEN_STATUS_24_HOURS = '102';
  static const String OPEN_STATUS_CLOSED = '103';
  static const String OPEN_STATUS_FOR_LOCATION_OR_DOCTORS = 'Open';
  static const String OPEN_STATUS_HAS_SEVERAL_TIMES = '101';
  static const String OPEN_STATUS_OPEN_CLOSE = '100';
  static String PLUS_ONE = '+1';
  static const String USER_PHONENUMBER_TYPE_MOBILE = 'mobile';
  static const String ENCOUNTER_INSURANCE_RANK_ONE = '1';
  static const String ENCOUNTER_INSURANCE_RANK_TWO = '2';
  static const String ENCOUNTER_INSURANCE_RANK_THREE = '3';
  static const String INSURANCE_CARD_PRIMARY = 'PRIMARY';
  static const String INSURANCE_CARD_SECONDARY = 'SECONDARY';
  static const String INSURANCE_CARD_TERTIARY = 'TERTIARY';
  static const String INSURANCE_CARD_PINEAPP_SOURCE = 'PINEAPP';
  static const String INSURANCE_CARD_CERNER_SOURCE = 'CERNER';
  static const String INSURANCE_CARD_DEFAULT_COLOR = '#215273';

  static const String INSURANCE_CODED_COMMENT_SOURCE = 'MILLENNIUM';
  static const String INSURANCE_CARD = 'Insurance Card';
  static const String INSURANCE_CODED_COMMENT_TYPE = 'DigitialINSCHG';

  static const String VIRTUAL_VISIT_NO_INSURANCE_EN = 'No Insurance';
  static const String VIRTUAL_VISIT_PLAN_IS_NOT_LISTED_EN = 'My plan is not listed';
  static const String PAY_MY_BILL_CONST = 'Pay My Bill';
  static const String PAY_MY_BILL_CLOUD = 'CLOUD';
  static const String PAY_MY_BILL_BHMG_CONST = 'BHMG';
  static const String PAY_MY_BILL_NON_BHMG_CONST = 'NON_BHMG';
  static const String AMBRA_SSO_CONST = 'Ambra SSO';
  static const String RENEW_MY_PRESCRIPTION = 'Renew My Prescription';

  static const String VIRTUAL_VISIT_NO_INSURANCE_ES = 'Ningún seguro';
  static const String VIRTUAL_VISIT_PLAN_IS_NOT_LISTED_ES = 'Mi plan no está en la lista';

  static const String LAB_RESULTS_INTERPRETATION = 'NORMAL';
  static const String LABORATORY = 'laboratory';
  static const String DOB = 'DOB';

  static const String EMERGENCY_CONTACT_CHECK_IN_CONTEXT = 'CheckIn';
  static const String EMERGENCY_CONTACT_DX_PRE_REG_CONTEXT = 'preCheckIn';
  static const String PROVIDER_ON_FILE_ROUTE = 'provider_on_your_profile';
  static const String DOCTOR_DETAIL_ROUTE = 'doctor_detail_page';
  static const String PROVIDER_LIST_PCP_ROUTE = 'provider_list_pcp';
  static const String OTP_SENT = 'OTP_SENT';

  static const String BAPTISTHEALTH_URL_ENGLISH = 'https://baptisthealth.net/';
  static const String BAPTISTHEALTH_URL_SPANISH = 'https://baptisthealth.net/es/';
  static const String DONATE_TODAY_URL_ENGLISH = 'https://baptisthealthgiving.net/Foundation/donatenow';
  static const String PREPARING_SURGERY = 'https://baptisthealth.net/patient-resources/my-baptist-health-account/baptist-health-account-help';
  static const String DONATE_TODAY_URL_SPANISH = 'https://baptisthealthgiving.net/Foundation/done-ahora';
  static const String HIPAA_URL_ENGLISH = 'https://baptisthealth.net/hipaa-notice-of-privacy-practices';
  static const String HIPAA_URL_SPANISH = 'https://baptisthealth.net/es/hipaa-notice-of-privacy-practices';
  static const String PRIVACY_POLICY_URL_SPANISH = 'https://baptisthealth.net/es/privacy-policy';
  static const String PRIVACY_POLICY_URL_ENGLISH = 'https://baptisthealth.net/privacy-policy';
  static const String TERMS_OF_USE_URL_ENGLISH = 'https://baptisthealth.net/terms-of-use';
  static const String TERMS_OF_USE_URL_SPANISH = 'https://baptisthealth.net/es/terms-of-use';
  static const String CTA_ALL_BLOGS_ENGLISH = 'https://baptisthealth.net/baptist-health-news/category/top-stories/';
  static const String CTA_ALL_BLOGS_SPANISH = 'https://baptisthealth.net/baptist-health-news/es/category/noticias-mas-importantes/';
  static const String PATIENT_PORTAL_SUPPORT =
      'https://baptisthealth.net/patient-resources/mybaptisthealth-patient-portal/mybaptisthealth-patient-portal-support';
  static const String PATIENT_MEDICAL_RECORDS = 'https://baptisthealth.net/patient-resources/medical-records';
  static const String NOTICE_OF_NON_DISCRIMINATION_ENGLISH = 'https://baptisthealth.net/notice-of-non-discrimination';
  static const String NOTICE_OF_NON_DISCRIMINATION_SPANISH = 'https://baptisthealth.net/es/notice-of-non-discrimination';
  static const String SITEMAP_ENGLISH = 'https://baptisthealth.net/sitemap';
  static const String SITEMAP_SPANISH = 'https://baptisthealth.net/es/sitemap';

  static const String PREPARE_VIRTUAL_VISIT = 'https://baptisthealth.net/lp/preparing-for-your-virtual-visit';

  // My Baptist Health URLs
  static const MY_BAPTIST_HEALTH_ANDROID_STORE_URL = 'https://play.google.com/store/apps/details?id=com.baptisthealth.mybaptisthealth.play';

  static const MY_BAPTIST_HEALTH_IOS_STORE_URL = 'https://apps.apple.com/us/app/mybaptisthealth/id1477992659';

  static const MY_BAPTIST_HEALTH_SCHEME = 'com.mybaptisthealth.mybaptisthealth://';

  static const MY_BAPTIST_HEALTH_ANDROID_PACKAGE_NAME = 'com.baptisthealth.mybaptisthealth.play';

  // Care On Demand URLs
  static const CARE_ON_DEMAND_ANDROID_STORE_URL = 'https://play.google.com/store/apps/details?id=net.baptisthealth.android.bhsf.careondemand';

  static const CARE_ON_DEMAND_IOS_STORE_URL = 'https://apps.apple.com/us/app/baptist-health-care-on-demand/id1110095567';

  static const CARE_ON_DEMAND_SCHEME = 'awbaptisthealthbhsf://';

  static const CARE_ON_DEMAND_ANDROID_PACKAGE_NAME = 'net.baptisthealth.android.bhsf.careondemand';

  static const PINEAPP_IOS_SCHEME = 'baptisthealth.net.pineapp://';

  static const PINEAPP_ANDROID_PACKAGE_NAME = 'com.osellus.android.pineapp';

  static const PINEAPP_DEFAULT_IOS_STORE_URL = 'https://apps.apple.com/us/app/pineapp/id393333579';

  static const PINEAPP_DEFAULT_IOS_STORE_APP_ID = '393333579';

  static const PINEAPP_DEFAULT_ANDROID_STORE_URL = 'https://play.google.com/store/apps/details?id=com.osellus.android.pineapp';

  static const GOOGLE_CALENDAR_URL = 'https://www.google.com/calendar/event';
  // static final webhook_url = (env!['PINE_AMWELL_API_URL'] as String) + '/alerts';
  static const int PROVIDER_WAITING_COUNT_CHECK = 3;

  static const YAHOO_CALENDAR_URL = 'https://calendar.yahoo.com';

  static const BAPTIST_WEB_URL = 'www.baptisthealth.net';
  static const BAPTIST_DOMAIN = '.baptisthealth.net';
  static const int DEFAULT_GRADUATION_YEAR = 1000;

  static const String DEEP_LINK_SCHEME = 'bhsf';
  static const String UNIVERSAL_LINK_SCHEME = 'https';

  static const String BAPTIST_DEEP_LINK_SCHEME = 'pineapp.web.baptisthealth.net';

  static const String PRE_VISIT_DEEP_LINK_URL = 'bhsf://pineapp/dxAppointmentPreVisitPage?id=';

  static const String UC_CHECKIN_DEEP_LINK_URL = 'bhsf://pineapp/urgentCareCheckInWelcomePage?locationId=';

  static const String ENTITY_TYPE_LOCATION = 'location';

  static const String MAMMO_URL_CONFIRMATION = '/appt-summary';

  static const String PRIMARY_CARE_DEEP_LINK = 'bhsf://pineapp/search?searchTerm=Primary%20Care&bottomSheet=true';
  static const String PRIMARY_CARE_DEEP_LINK_ES = 'bhsf://pineapp/search?searchTerm=Atenci%C3%B3n%20Primaria&bottomSheet=true';
  static const String PRIMARY_CARE_APPOINTMENT_SCHEDULE_DEEP_LINK = 'bhsf://pineapp/search?searchTerm=Primary%20Care&bookOnline=true';
  static const String PRIMARY_CARE_APPOINTMENT_SCHEDULE_DEEP_LINK_ES = 'bhsf://pineapp/search?searchTerm=Atenci%C3%B3n%20Primaria&bookOnline=true';
  static const String SPORTS_MEDICINE_APPOINTMENT_SCHEDULE_DEEP_LINK =
      'bhsf://pineapp/search?searchTerm=Sports+Medicine&bookOnline=true&orthoBooking=true';
  static const String SPORTS_MEDICINE_APPOINTMENT_SCHEDULE_DEEP_LINK_ES =
      'bhsf://pineapp/search?searchTerm=Medicina+deportiva&bookOnline=true&orthoBooking=true';
  static const String PROFILE_LOGIN_DEEP_LINK = 'bhsf://pineapp/loginPage';

  static const String HOME_DEEP_LINK_DEV = 'bhsf://pineappdev/';

  static const String HOME_DEEP_LINK_STG = 'bhsf://pineappstg/';

  static const String HOME_DEEP_LINK = 'bhsf://pineapp/';
  static const String HIVE_SECURE_KEY = 'hiveSecureKey';

  static const String ENV_TEST_FLIGHT_CHANNEL = 'bhsf.pineapp/env';
  static const String ENV_TEST_FLIGHT_METHOD = 'isTestFlight';

  static const String INSURANCE_VISIBLE_KEY = 'visible';
  static const String INSURANCE_MEDICARE_MEMBER_KEY = 'medicareAdvantageMember';
  static const String INSURANCE_HAS_FRONT_IMAGE_KEY = 'hasFrontImage';
  static const String INSURANCE_HAS_BACK_IMAGE_KEY = 'hasBackImage';
  static const String INSURANCE_TAG_COLOR_KEY = 'tagColor';

  static const String HYPHENS = '--';
  static const int MAX_CARDS_PER_USER = 10;

  static const int PINE_BANNER_LENGTH = 50;

  static const int PINE_OTP_LENGTH = 5;

  static const int PINE_PASSWORD_LENGTH = 72;

  static const int APPOINTMENT_RESCHEDULE_TIME_LIMIT = 15;

  static const int RESEND_TOKEN_TIME = 45;

  static const int MIN_SEARCH_LENGTH = 3;
  static const int DOSE_FREQ_MAX_LENGTH = 100;
  static const int EMAIL_MAX_LENGTH = 100;
  static const int USERNAME_MAX_LENGTH = 100;
  static const BUTTON_MEDIUM_WIDTH = 165.0;
  static final EMAIL_REG_EXP = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-=?^_`{|}~]+@([a-zA-Z0-9-]{1,99})\.([a-zA-Z]{2,99})+");

  static final PHONE_NUMBER_REG_EXP = RegExp(r'\((\d{3})\)\s(\d{3})\-(\d{4})');

  static final DATE_REG_EXP = RegExp(r'^(0[1-9]|1[0-2])\/(0[1-9]|[1-2][0-9]|3[0-1])\/([0-9]{4})$');

  static final SSN_REG_EXP = RegExp(r'(\d{3})\-(\d{2})\-(\d{4})');
  static final SSN_OBSCURED_REG_EXP = RegExp(r'(\d|X){3}-(\d|X){2}-\d{4}');
  static final ZIP_CODE_REG_EXP = RegExp(r'[0-9]');
  static final ZIP_CODE_CREATE_ACCOUNT_REG_EXP = RegExp(r'^\d{5}$');
  static const ZIPCODE_LENGTH = 5;

  static final PASSWORD_FORMAT_REG_EXP = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*["!#$%&*+,-.=?@_~{|}])[A-Za-z\d"!#$%&*+,-.=?@_~{|}]{8,}$');
  static final USERNAME_FORMAT_REG_EXP = RegExp(r'^[A-Za-z\d_@.-]{4,100}$');
  static final NAME_FORMAT_REG_EXP = RegExp(r'^[a-z A-Z,.\-]+$');

  static final EMOJIS_REGEXP = RegExp('(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])');

  static const String CHATBOT_URL = 'https://d2mqaasbwux52q.cloudfront.net/';

  static const List<String> FEATURE_FIELD = [
    'newFeatureRequest',
    'featureChangeRequest',
    'issueReport',
    'generalAppRating',
  ];

  static const PUSH_NOTIFICATION_GLOBAL_TOPIC = 'pineapp_all';

  static const MAX_CHARS_JOURNAL_NOTES = 50;

  static const BIWEEK_NUMBER_NOTIFICATIONS = 3;

  static const WEEK_DAYS_NUMBER = 7;

  static const NUMBER_DAYS_BIWEEK = 14;

  static const int SEC_ANSWER_MIN_LENGTH = 4;

  static const int SEC_ANSWER_MAX_LENGTH = 100;

  static const int VV_STEPPER_STEPS = 7;

  static Map<String, String> GENDER_OPTIONS_MAP = {
    'M': 'Male',
    'F': 'Female',
    'FEMENINO': 'FEMALE',
    'MASCULINO': 'MALE',
  };

  static const int CREATE_ACCOUNT_MINIMUM_MULTIPLE_EMAILS = 1;

  // static List<String> GENDER_OPTIONS(BuildContext context) {
  //   return [
  //     AppLocalizations.of(context)!.global__male,
  //     AppLocalizations.of(context)!.global__female,
  //   ];
  // }

  // static Map<String, String> DL_SEX_OPTIONS(BuildContext context) => {
  //       'M': AppLocalizations.of(context)!.global__male,
  //       'F': AppLocalizations.of(context)!.global__female,
  //       'X': '',
  //     };

  // static Map<String, String> BIRTH_SEX_MAP_FROM_VALUE(BuildContext context) => {
  //       AppLocalizations.of(context)!.global__male: 'MALE',
  //       AppLocalizations.of(context)!.global__female: 'FEMALE',
  //       AppLocalizations.of(context)!.global__decline_to_specify: 'UNKNOWN',
  //     };

  // static Map<String, String> BIRTH_SEX_MAP_FROM_KEY(BuildContext context) => {
  //       'MALE': AppLocalizations.of(context)!.global__male,
  //       'FEMALE': AppLocalizations.of(context)!.global__female,
  //       'UNKNOWN': AppLocalizations.of(context)!.global__decline_to_specify,
  //     };

  // static List<String> LEGAL_SEX_OPTIONS(BuildContext context) {
  //   return [
  //     AppLocalizations.of(context)!.global__male,
  //     AppLocalizations.of(context)!.global__female,
  //     AppLocalizations.of(context)!.profile__legal_sex_option_decline,
  //   ];
  // }

  // static List<String> LANGUAGE_OPTIONS(BuildContext context) {
  //   return [
  //     AppLocalizations.of(context)!.global__english,
  //     AppLocalizations.of(context)!.global__spanish,
  //     AppLocalizations.of(context)!.global__creole,
  //   ];
  // }

  static Map<String, List<String>> MEDICATION_REMINDERS_IOS_NOTIFICATION_ACTIONS = {
    LANGUAGE_ENGLISH: [
      'Taken',
      'Snooze',
      'Not Taken',
    ],
    LANGUAGE_SPANISH: [
      'Tomado',
      'Posponer',
      'No lo tomé',
    ]
  };

  static Map<String, List<String>> APPOINTMENT_REMINDERS_IOS_NOTIFICATION_ACTIONS = {
    LANGUAGE_ENGLISH: [
      'View Detail',
      'Cancel',
    ],
    LANGUAGE_SPANISH: [
      'Ver Detalle',
      'Cancelar',
    ]
  };

  static Map<String, List<String>> MAMMOGRAM_SEARCH_SUGGESTIONS = {
    LANGUAGE_ENGLISH: [
      '3d Breast Cancer Screening',
      '3d Mammogram',
      '3D Mammography',
      'Breast Cancer Check',
      'Breast Cancer Exam',
      'Breast Cancer Prevention',
      'Breast Cancer risk assessment',
      'Breast Cancer Screening',
      'Breast Cancer surveillance',
      'Breast Exam',
      'Breast Examination',
      'Breast Health Screening',
      'Breast Mammogram',
      'Breast Screening',
      'Breast Self Exam',
      'Breast Self-exam',
      'Breast sonography',
      'Breast Tomosynthesis',
      'Breast Ultrasound',
      'Breast X-ray',
      'Diagnostic Breast Ultrasound',
      'Diagnostic Mammogram',
      'Diagnostic Mammography',
      'Digital Breast Cancer Screening',
      'Digital Mammogram',
      'digital Mammogram with 3d tomosynthesis',
      'Mammo',
      'Mammogram',
      'Mammography',
      'Screening Breast Examination',
      'Screening Mammogram',
      'targeted Breast Ultrasound',
      'Ultrasound of Breast',
      'Ultrasound of Breasts',
      'Ultrasound of the Breast',
      'Ultrasound of the Breasts',
      'Whole Breast Ultrasound',
    ],
    LANGUAGE_SPANISH: [
      'Examen de detección del cáncer de seno 3D',
      'mamograma 3D',
      'Mamografía 3D',
      'Examen de cáncer de seno',
      'Examen para cáncer de seno',
      'Prevención del cáncer de seno',
      'Evaluación del riesgo de contraer cáncer de seno',
      'Exámenes de detección del cáncer de seno',
      'Vigilancia del cáncer de seno',
      'Examen del seno',
      'Chequeo del seno',
      'Examen de salud del seno',
      'Mamografía de seno',
      'Exámenes de detección para el seno',
      'Autoexamen de seno',
      'Autoexamen de seno',
      'Ecografía del seno',
      'Tomosíntesis de seno',
      'Ultrasonido del seno',
      'Radiografía digital',
      'Ecografía diagnóstica del seno',
      'Mamografía diagnóstica',
      'Mamografía de diagnóstico',
      'Examen de cáncer de seno digital',
      'Mamografía digital',
      'Mamografía digital con tomosíntesis 3D',
      'Mamografía',
      'Mamograma',
      'Mamografías',
      'Chequeo del seno para detección',
      'Mamografía de detección',
      'Ecografía dirigida del seno',
      'Ecografía de seno',
      'Ecografía de los senos',
      'Ecografía del seno',
      'Ecografía de senos',
      'Ecografía de todo el seno',
    ]
  };

  static const List<String> INSURANCE_PROVIDER_LIST = [
    'AARP',
    'Advantra',
    'Aetna',
    'Aetna Better Health',
    'Aetna Meritain',
    'American Heritage',
    'American Medical',
    'Assurant',
    'AvMed',
    'BCBS',
    'Beech Street',
    'Benefit Admin System',
    'Bright Health',
    'Capp Care',
    'Careplus',
    'CCN Network',
    'Centurion',
    'CHAMPVA',
    'Cigna',
    'Clear Hlth Alliance',
    'Community Care Plan',
    'Coventry',
    'Devoted Health',
    'Dimension',
    'Dimension Plus',
    'Doctors Healthcare',
    'First Health',
    'FL Healthcare Plus',
    'Florida Community Care',
    'Florida Health',
    'Freedom',
    'Health Sun',
    'Healthsouth',
    'Horizon',
    'Humana',
    'JMH',
    'Leon Medical',
    'Magellan',
    'Pref Car Nwk_Medica',
    'Medicaid',
    'Medicare',
    'Miccosukee Health',
    'Millenium Health',
    'Molina',
    'Multiplan',
    'Mutual of Omaha',
    'New Directions',
    'Oscar Health',
    'PHCS',
    'Point Comfort ORR',
    'Positive HlthCare FL',
    'Preferred Partners',
    'AmeriHealth',
    'Prominence',
    'Seminole Indian Hlth',
    'Simply Health',
    'Sunshine State',
    'Tricare',
    'Tricare_For Life',
    'Truli for Health',
    'UHC Student Resource',
    'UMR',
    'United',
    'United American',
    'United Golden Rule',
    'United Oxford Health',
    'USAA',
    'Veterans',
    'Wellcare',
  ];

  static const String BROWSE_PHARMACY_LOCATION_DEEP_LINK = 'bhsf://pineapp/locationsListPage?locationName=Pharmacy';

  // static Map<NotTakenReason, String> NOT_TAKEN_OPTIONS(BuildContext context) {
  //   return {
  //     NotTakenReason.OUT_OF_DOSE: AppLocalizations.of(context)!.medication_reminders__out_of_doses,
  //     NotTakenReason.DONT_HAVE_WITH_ME: AppLocalizations.of(context)!.medication_reminders__dont_have_with_me,
  //     NotTakenReason.CAUSING_SIDE_EFFECTS: AppLocalizations.of(context)!.medication_reminders__causing_side_effects,
  //     NotTakenReason.OTHER: AppLocalizations.of(context)!.global__other,
  //   };
  // }

  // static Map<String, WeekDay> WEEK_DAYS(BuildContext context) {
  //   AppLocalizations _lang = AppLocalizations.of(context)!;
  //   return {
  //     _lang.week_day__sunday: WeekDay.SUNDAY,
  //     _lang.week_day__monday: WeekDay.MONDAY,
  //     _lang.week_day__tuesday: WeekDay.TUESDAY,
  //     _lang.week_day__wednesday: WeekDay.WEDNESDAY,
  //     _lang.week_day__thursday: WeekDay.THURSDAY,
  //     _lang.week_day__friday: WeekDay.FRIDAY,
  //     _lang.week_day__saturday: WeekDay.SATURDAY,
  //   };
  // }

  static const String DATE_FORMAT = 'MM/dd/y';
  static const String DATE_MMM_DD_YYYY_HH_MM_SS_FORMAT = 'MMM dd, yyyy, HH:mm:ss';
  static const String DATE_FORMAT_2 = 'MM-dd-y';
  static const String DATE_FORMAT_3 = 'MMddyyyy';
  static const String DATE_FORMAT_4 = 'yyyy-MM-dd';
  static const String DATE_FORMAT_5 = 'MM/dd/yy';
  static const String DATE_FORMAT_6 = 'mm/dd/yyyy';
  static const String DATE_FORMAT_10 = 'MM/dd/yyyy';
  static const String DATE_FORMAT_11 = 'MM/DD/YY';

  /// Example: Mon, Feb 15, 2022
  static const String DATE_FORMAT_7 = 'EE, MMM d, yyyy';
  static const String DATE_FORMAT_8 = 'EEEE, MMM d, yyyy';
  static const String DATE_FORMAT_9 = 'MMM d, yyyy';
  static const String DATE_FORMAT_SERVER = 'yyyy-MM-ddTHH:mm:ss';
  static const String DATE_TIME_FORMAT_1 = "yyyy-MM-dd'T'HH:mm:ssZ";
  static const String TIME_FORMAT = 'kkmm';
  static const String TIME_FORMAT_HH_MM_24 = 'h:mm a';
  static const String TIME_FORMAT_HH_MM_12 = 'hh:mm aa';
  static const String TIME_FORMAT_HH_12 = 'h\aa';
  static const String MONTH_DD_YYYY_DATE_FORMAT = 'MMMM dd, yyyy';
  static const String MONTH_YYYY_FORMAT = 'MMMM, yyyy';
  static const String YEAR_FORMAT = 'yyyy';

  static const String MONTH_DD_YYYY_HH_MM_A_DATE_FORMAT = 'MMMM dd, yyyy, HH:MM a';
  static const String DATE_FORMAT_MONTH_YEAR = 'MMMM y';
  static const String DATE_FORMAT_MONTH_ABB_YEAR = 'MMM y';
  static const String DATE_FORMAT_MONTH_ABB = 'MMM';
  static const String DATE_FORMAT_YEAR_ABB = 'yyyy';
  static const String PRIMARY_CARE = 'primarycare';
  static const String URGENT_CARE = 'urgentcare';
  static const String MAMMOGRAM = 'mammogram';
  static const String SYMPTOM_DIARY_PDF_FOLDER_NAME = 'healthJournalExport';
  static const String MEDICAL_RECORDS_PDF_FOLDER_NAME = 'medicalRecordsExport';
  static const String PROCEDURE_RECORDS_PDF_FOLDER_NAME = 'procedureRecordsExport';
  static const int MEDICAL_RECORDS_EXPORT_SIZE = 1000;
  static const String LAB_RESULT_DETAILS_PDF_FOLDER_NAME = 'labResultDetailsExport';
  static const String CLINICAL_VITALS_PDF_FOLDER_NAME = 'clinicalVitalsExport';
  static const String LANGUAGE_ENGLISH = 'en_US';
  static const String LANGUAGE_SPANISH = 'es_US';

  //TODO: This language code needs to be confirmed since there is no provided code in supported languages list by Flutter https://api.flutter.dev/flutter/flutter_localizations/GlobalMaterialLocalizations-class.html
  static const String LANGUAGE_CREOLE = 'cr_CR';

  static const String DEEP_LINK_LANGUAGE_PARAM = 'lang';

  static const String NOT_AVAILABLE_NA = 'NA';

  static const String LANGUAGE_ENGLISH_NO_TRANSLATION = 'english';
  static const String LANGUAGE_SPANISH_NO_TRANSLATION = 'spanish';
  static const String LANGUAGE_CREOLE_NO_TRANSLATION = 'creole';
  static const DOCTOR_START_PAGE = 1;
  static const DOCTOR_PAGE_SIZE = 20;
  static const DOCTOR_PAGE_DISTANCE = 0;
  static const SEARCH_SELECTED_DEFAULT = 0;
  static const SEARCH_SELECTED_TYPE_1 = 1;
  static const SEARCH_SELECTED_TYPE_2 = 2;
  static const SEARCH_SELECTED_TYPE_4 = 4;
  static const SORT_BY_RATING = 'ratings';

  //TODO: Need to perform call Action once we receive support number.
  static const String SELECT_QUESTION_INFO_NUMBER = '(xxx)xxx-xxx';
  static const int MKB_DEFAULT_ITEMS_PAGE = 15;
  static const double DIALOG_MAX_WIDTH = 300.0;
  static const int MAX_START_DATE = 10;

  static final PASSWORD_REG_EXP = RegExp(r'^(?=.*?[A-Z])(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$'); // (?=(.*[a-z]){1,}) -> For min 1 lower case

  static const String EMPTY_TEXT = '';
  static const String ENGLISH_LANG = 'en';
  static const String SPANISH_LANG = 'es';
  static const String SOARIAN = 'SOARIAN';
  static const String MILLENNIUM = 'MILLENNIUM';
  static const String EMPTY_VALUE = '';

  static final OTP_FORMAT_REG_EXP = RegExp('[0-9a-zA-Z -]');

  static final VALID_CHARACTER_REG_EXP = RegExp(r'^[a-zA-Z0-9]+$');
  static final SPECIAL_CHARACTER_REG_EXP = RegExp(r'[^\w\s]+');

  static const DEFAULT_TIME_ZONE_NAME = 'America/New_York';
  static const GMT_0 = 'Europe/London';
  static const String IDENTITY_STATUS_PROVISIONED = 'PROVISIONED';
  static const String IDENTITY_STATUS_STAGED = 'STAGED';

  static const String TOOLTIP_TYPE_HOME = 'displayHomeTooltip';
  static const String TOOLTIP_TYPE_PROFILE = 'displayProfileTooltip';
  static const String TOOLTIP_TYPE_BOOK_VISIT = 'displayBookVisitTooltip';
  static const String TOOLTIP_TYPE_HEALTH_RECORD = 'displayHealthRecordTooltip';
  static const String TOOLTIP_TYPE_CONSENTS = 'displayConsentsTooltip';
  static const String TOOLTIP_TYPE_PAYMENT_RESOURCES = 'paymentResourcesPageTooltip';
  static const String TOOLTIP_TYPE_ACCOUNT_SETTINGS = 'displayAccountSettingsTooltip';
  static const String TOOLTIP_TYPE_DELETE_ACCOUNT = 'displayDeleteAccountTooltip';
  static const String TOOLTIP_REASON_FOR_VISIT = 'displayReasonForVisitTooltip';
  static const String TOOLTIP_TYPE_PATIENT_PROFILE_INFORMATION = 'displayPatientProfileInfoTooltip';
  static const String TOOLTIP_ADD_APPOINTMENT_EVENT_VISIT = 'displayAddAppointmentEventTooltip';
  static const String TOOLTIP_TYPE_APPOINTMENT_SUMMARY_INFORMATION = 'displayAppointmentSummaryTooltip';
  static const String BHSF_CLIENT_NAME = 'pineapp';
  static const String USER_AGENT = 'flutter';

  static const String CANCEL_APPOINTMENT_PHONE = '8336922784';
  static const String TO_DATE_IN_3_MONTHS = '3';
  static const int TO_DATE_AFTER_3_MONTHS = 3;
  static const int DX_PRE_REG_DAY_DIFFERENCE = 5;
  static const String DX_PRE_REG_START = 'Start';
  static const String DX_PRE_REG_COMPLETED = 'completed';
  static const String DX_PRE_REG_COB = 'cob';
  static const String DX_PRE_REG_MSPQ = 'mspq';
  static const String DX_PRE_REG_CONSENT_DOCS = 'consent_docs';
  static const String DX_PRE_REG_NEEDS_NEEDS_REVIEW = 'Needs review';
  static const String DX_PRE_REG_CONTINUE = 'Continue';
  static const String DX_PRE_REG_REVIEW = 'Review';

  static const int DX_PRE_REG_CONSENT_TIMEFRAME_DAYS = 365;
  static const int DX_PRE_REG_PROFILE_TIMEFRAME_DAYS = 90;
  static const String HOME_NEW_ORDER_CARD_DISMISS_DATE = '9999-12-31T00:00';
  static const int APT_HOUR = 11;
  static const int APT_MIN = 59;

  static const String PROFILE_NO_PCP = 'nopcp';

  static const String SPLIT_PROFILE_AGE_1 = '<age<';
  static const String SPLIT_PROFILE_AGE_2 = 'age<';
  static const String SPLIT_PROFILE_AGE_3 = 'age>';
  static const String SPLIT_PROFILE_CONSENTS_ALLOWED_AGE = '>';

  static late String CHECK_IN_USERNAME = '';

  // static Map<String, String> AVAILABLE_LANGUAGES(BuildContext context) {
  //   return {
  //     AppLocalizations.of(context)!.global__english: LANGUAGE_ENGLISH,
  //     AppLocalizations.of(context)!.global__spanish: LANGUAGE_SPANISH,
  //     AppLocalizations.of(context)!.global__creole: LANGUAGE_CREOLE,
  //   };
  // }

  static Map<String, String> HOME_AVAILABLE_LANGUAGES() {
    return {
      'English': LANGUAGE_ENGLISH,
      'Español': LANGUAGE_SPANISH,
    };
  }

  static Map<String, String> HOME_DISPLAY_AVAILABLE_LANGUAGES = {
    LANGUAGE_ENGLISH: 'English',
    LANGUAGE_SPANISH: 'Español',
  };

  static const String MY_BAPTIST_HEALTH_FAQ_EN =
      BAPTISTHEALTH_URL_ENGLISH + 'patient-resources/my-baptist-health-account/baptist-health-account-help';

  static const String MY_BAPTIST_HEALTH_FAQ_ES =
      BAPTISTHEALTH_URL_SPANISH + 'patient-resources/my-baptist-health-account/baptist-health-account-help';

  //TODO: This is a temporary string pointing to an static url, remove it and replace in the Virtual Visit Welcome Page api when CMS becomes available
  // static String VIRTUAL_VISIT_WELCOME_PAGE_IMAGE_URL = (env!['PINE_WEB_URL'] as String) + '/marketing_content/virtual_visit_display_page_image.png';

  // //TODO: This is a temporary string pointing to an static url, remove it and replace in the Virtual Visit Welcome Page api when CMS becomes available
  // static final String VIRTUAL_VISIT_WELCOME_PAGE_CONTENT_URL =
  //     (env!['PINE_WEB_URL'] as String) + '/marketing_content/virtual_visit_display_page.json';
  // static final String VIRTUAL_VISIT_WELCOME_PAGE_CONTENT_URL_ES =
  //     (env!['PINE_WEB_URL'] as String) + '/marketing_content/virtual_visit_display_page_es.json';
  // static String VIRTUAL_VISIT_URGENT_CARE_HEADER_URL = (env!['PINE_WEB_URL'] as String) + '/marketing_content/urgent_care_display_page_image.png';
  // static String VIRTUAL_VISIT_URGENT_CARE_CONTENT_URL = (env!['PINE_WEB_URL'] as String) + '/marketing_content/vv_urgent_care_display_page.json';
  // static String VIRTUAL_VISIT_URGENT_CARE_CONTENT_URL_ES =
  //     (env!['PINE_WEB_URL'] as String) + '/marketing_content/vv_urgent_care_display_page_es.json';
  // static String VIRTUAL_VISIT_PEDIATRIC_URGENT_CARE_CONTENT_URL =
  //     (env!['PINE_WEB_URL'] as String) + '/marketing_content/vv_pediatric_urgent_care_display_page.json';
  // static String VIRTUAL_VISIT_PEDIATRIC_URGENT_CARE_CONTENT_URL_ES =
  //     (env!['PINE_WEB_URL'] as String) + '/marketing_content/vv_pediatric_urgent_care_display_page_es.json';
  // static String VIRTUAL_VISIT_WEB_VIEW_URL = (env!['PINE_WEB_URL'] as String) + '/visit_console/index.html';

  // static String PINE_AMWELL_ENROLL_URL = (env!['PINE_AMWELL_API_URL'] as String) + '/amwell-enrollment';
  // static String PINE_AMWELL_GET_TOKEN_URL = (env!['PINE_AMWELL_API_URL'] as String) + '/token-generator';
  // static String PINE_CHECK_ENROLLMENT_URL = (env!['PINE_AMWELL_API_URL'] as String) + '/check-enrollment';
  // static String PINE_GET_GEOLOCATION = (env!['PINE_AMWELL_API_URL'] as String) + '/getgeolocation';

  // PKCE login for Diagnostic Image feature
  static const String SESSION_LOGIN_MOBILE_PKCE = 'session/login_pkce';
  // static String PINE_API_VERSION_PKCE = env!['PINE_API_VERSION'] as String;
  static const String REFRESH_MOBILE_PKCE = 'session/refresh_token_pkce';
  // static String LOGIN_URL_PKCE = (env!['PINE_API_BASE_PROFILE_URL'] as String) + PINE_API_VERSION_PKCE + SESSION_LOGIN_MOBILE_PKCE;

  static const String SESSION_LOGIN_MOBILE = 'session/login';
  static const String SESSION_LOGIN_WEB = 'session/login_pkce';
  static String SESSION_LOGIN = (kIsWeb ? SESSION_LOGIN_WEB : SESSION_LOGIN_MOBILE);
  // static String PINE_API_VERSION = (kIsWeb ? (env!['PINE_API_VERSION'] as String) : (env!['PINE_API_VERSION_V2'] as String));

  // static String LOGIN_URL_V2 = (env!['PINE_API_BASE_PROFILE_URL'] as String) + PINE_API_VERSION + SESSION_LOGIN;

  static const String TOKEN_AUTH_URL = 'session/login/otp';
  static const String REFRESH_MOBILE = 'session/refresh_token';
  static const String REFRESH_WEB = 'session/refresh_token_pkce';
  static const String REFRESH_URL_OTP = 'session/refresh_token/otp';
  static const String LOG_OUT_URL = 'session/logout';
  static const String LOG_OUT_OTP_URL = 'session/logout/otp';

  static const String REFRESH_URL = kIsWeb ? REFRESH_WEB : REFRESH_MOBILE;
  static const String AGGREGATE_DATA = '/aggregate-healthdata';
  static const String SAVE_HEALTHDATA = '/save-healthdata';

  static final VIRTUAL_VISIT_RATE_OPTIONS = ['Emergency Room', 'Urgent care center', 'Retail health clinic', 'Doctors office', 'Done nothing'];
  static const VIRTUAL_VISIT_VITALS_DIASTOLIC_RANGE_MIN = 40;
  static const VIRTUAL_VISIT_VITALS_DIASTOLIC_RANGE_MAX = 140;
  static const VIRTUAL_VISIT_VITALS_HEIGHT_RANGE_MIN = 1;
  static const VIRTUAL_VISIT_VITALS_HEIGHT_RANGE_MAX = 10;
  static const VIRTUAL_VISIT_VITALS_HEIGHT_IN_RANGE_MIN = 0;
  static const VIRTUAL_VISIT_VITALS_HEIGHT_IN_RANGE_MAX = 11;
  static const VIRTUAL_VISIT_VITALS_OXIMETRY_RANGE_MIN = 40;
  static const VIRTUAL_VISIT_VITALS_OXIMETRY_RANGE_MAX = 260;
  static const VIRTUAL_VISIT_VITALS_SYSTOLIC_RANGE_MIN = 70;
  static const VIRTUAL_VISIT_VITALS_SYSTOLIC_RANGE_MAX = 240;
  static const VIRTUAL_VISIT_VITALS_TEMPERATURE_RANGE_MIN = 94;
  static const VIRTUAL_VISIT_VITALS_TEMPERATURE_RANGE_MAX = 106;
  static const VIRTUAL_VISIT_VITALS_WEIGHT_RANGE_MIN = 1;
  static const VIRTUAL_VISIT_VITALS_WEIGHT_RANGE_MAX = 1500;
  static const VIRTUAL_VISIT_VITALS_WEIGHT_OZ_RANGE_MIN = 0;
  static const VIRTUAL_VISIT_VITALS_WEIGHT_OZ_RANGE_MAX = 15;

  static const ADULT_AGE = 18;
  static const PREGNANT_AGE_MIN = 15;
  static const PREGNANT_AGE_MAX = 50;
  static const FEMALE_GENDER = 'Female';
  static const MAX_VIRTUAL_VISIT_GUESTS = 5;

  static const int OTHER_TEXT_MIN_LIMIT = 3;
  static const int MAX_LIMIT = 35;
  static const int MIN_LIMIT = 1;
  static const int LAST_NAME_MIN_LIMIT = 2;

  // static List<String> relationships(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.global_relationship_spouse,
  //     _lang.global_relationship_child,
  //     _lang.global_relationship_cousin,
  //     _lang.global_relationship_employee,
  //     _lang.global_relationship_father,
  //     _lang.global_relationship_foster_child,
  //     _lang.global_relationship_foster_parent,
  //     _lang.global_relationship_friend,
  //     _lang.global_relationship_grandchild,
  //     _lang.global_relationship_grandparent,
  //     _lang.global_relationship_guardian,
  //     _lang.global_relationship_handi_dependent,
  //     _lang.global_relationship_injured_plaintiff,
  //     _lang.global_relationship_life_partner,
  //     _lang.global_relationship_mother,
  //     _lang.global_relationship_niece_nephew,
  //     _lang.global_relationship_other,
  //     _lang.global_relationship_other_adult,
  //     _lang.global_relationship_self,
  //     _lang.global_relationship_sibling,
  //     _lang.global_relationship_stepchild,
  //     _lang.global_relationship_stepparent,
  //     _lang.global_relationship_adopted_child,
  //     _lang.global_relationship_cadaver_donor,
  //     _lang.global_relationship_emancipated_minor,
  //     _lang.global_relationship_handicapped_dependent,
  //     _lang.global_relationship_minor_dependent,
  //     _lang.global_relationship_natural_child_has_fin,
  //     _lang.global_relationship_natural_child_has_no_fin,
  //     _lang.global_relationship_organ_donor,
  //     _lang.global_relationship_sponsored_dependent,
  //     _lang.global_relationship_unknown,
  //     _lang.global_relationship_ward,
  //   ];
  // }

  // static List<String> languages(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.global__english,
  //     _lang.global__spanish,
  //     _lang.creole,
  //     _lang.albanian,
  //     _lang.arabic,
  //     _lang.bosnian,
  //     _lang.chinese,
  //     _lang.croatian,
  //     _lang.finnish,
  //     _lang.french,
  //     _lang.german,
  //     _lang.greek,
  //     _lang.hebrew,
  //     _lang.hindi,
  //     _lang.hmong,
  //     _lang.hungarian,
  //     _lang.italian,
  //     _lang.japanese,
  //     _lang.khmer,
  //     _lang.korean,
  //     _lang.other,
  //     _lang.persian,
  //     _lang.polish,
  //     _lang.portuguese,
  //     _lang.russian,
  //     _lang.rerbian,
  //     _lang.sign,
  //     _lang.tagalog,
  //     _lang.thai,
  //     _lang.undetermined,
  //     _lang.vietnamese,
  //     _lang.yiddish,
  //   ];
  // }

  // static List<String> raceOptions(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.urgent_care_check_in_demographics_race_option_1,
  //     _lang.urgent_care_check_in_demographics_race_option_2,
  //     _lang.urgent_care_check_in_demographics_race_option_3,
  //     _lang.urgent_care_check_in_demographics_race_option_4,
  //     _lang.urgent_care_check_in_demographics_race_option_5,
  //     _lang.urgent_care_check_in_demographics_race_option_6,
  //     _lang.urgent_care_check_in_demographics_race_option_7,
  //     _lang.urgent_care_check_in_demographics_race_option_8,
  //     _lang.urgent_care_check_in_demographics_race_option_9,
  //   ];
  // }

  // static List<String> ethnicityOptions(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.urgent_care_check_in_demographics_ethnicity_option_1,
  //     _lang.urgent_care_check_in_demographics_ethnicity_option_2,
  //     _lang.urgent_care_check_in_demographics_ethnicity_option_3,
  //   ];
  // }

  // static List<String> religiousPreferenceOptions(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_1,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_2,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_3,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_4,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_5,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_6,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_7,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_8,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_9,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_10,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_11,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_12,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_13,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_14,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_15,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_16,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_17,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_18,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_19,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_20,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_21,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_22,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_23,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_24,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_25,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_26,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_27,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_28,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_29,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_30,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_31,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_32,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_33,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_34,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_35,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_36,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_37,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_38,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_39,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_40,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_41,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_42,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_43,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_44,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_45,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_46,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_47,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_48,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_49,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_50,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_51,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_52,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_53,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_54,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_55,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_56,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_57,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_58,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_59,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_60,
  //     _lang.urgent_care_check_in_demographics_religious_preference_option_61,
  //   ];
  // }

  // static List<String> maritalStatusOptions(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.urgent_care_check_in_demographics_marital_status_option_1,
  //     _lang.urgent_care_check_in_demographics_marital_status_option_2,
  //     _lang.urgent_care_check_in_demographics_marital_status_option_3,
  //     _lang.urgent_care_check_in_demographics_marital_status_option_4,
  //     _lang.urgent_care_check_in_demographics_marital_status_option_5,
  //     _lang.urgent_care_check_in_demographics_marital_status_option_6,
  //   ];
  // }

  // static List<String> employmentStatusOptions(BuildContext context) {
  //   final _lang = AppLocalizations.of(context)!;
  //   return [
  //     _lang.urgent_care_check_in_demographics_employment_status_option_1,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_2,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_3,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_4,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_5,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_6,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_7,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_8,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_9,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_10,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_11,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_12,
  //     _lang.urgent_care_check_in_demographics_employment_status_option_13,
  //   ];
  // }

  static int MAX_ERRORS_SCANNING_CARD = 2;
  static const String PROFILE_API_DECLINE_SEX = 'Decline to Specify';
  static const String PROFILE_API_UNKNOWN = 'UNKNOWN';
  static const String PROFILE_API_MALE = 'MALE';
  static const String PROFILE_API_FEMALE = 'FEMALE';
  static const String PREFERRED_LANGUAGE_API_SPANISH = 'Spanish';
  static const String PREFERRED_LANGUAGE_API_ENGLISH = 'English';
  static const String PROFILE_API_HOME = 'HOME';
  static const String PROFILE_API_WORK = 'WORK';
  static const String PROFILE_API_MOBILE = 'MOBILE';
  static const String PROFILE_API_BILLING = 'BILLING';
  static const String PROFILE_API_DX_PRE_REG = 'MOBILE';
  static const String PROFILE_DOB_FORMAT = 'MM/dd/yyyy';
  static const String PROFILE_EMERGENCY_CONTACT = 'EMERGENCY_CONTACT';
  static const String PREFERRED_LANGUAGE_CHECK_IN_CONTEXT = 'CheckIn';

  static const CAROUSEL_SINGLE_ITEM = 1;

  static const int INACTIVITY_TIMEOUT_IN_SECONDS = 900;
  static const int ENCOUNTER_TIMEOUT_IN_SECONDS = 1800;
  static const String VV_DEFAULT_CALLBACK_NUMBER = '0000000000';

  static const int PRIMARY_CARE_PROVIDER_SEARCH_RESULT_LIMIT = 20;
  static const int PROVIDER_LIST_REFRESH_TIME_IN_SECOND = 60;
  static const String UC_QUICK_CHECK_IN_POINT_OF_ORIGIN_DEFAULT = 'NONHEALTHFACT';

  // Consent Types
  static const String CONSENT_FOR_SERVICE = 'CONSENT_FOR_SERVICE';
  static const String CONSENT_FOR_SERVICE_ANNUAL = 'CONSENT_FOR_SERVICE_ANNUAL';
  static const String MEDICARE_OUTPATIENT_COINSURANCE_NOTICE = 'MEDICARE_OUTPATIENT_COINSURANCE_NOTICE';
  static const String PROTECTIONS_AGAINST_SURPRISE_MEDICAL_BILL = 'PROTECTIONS_AGAINST_SURPRISE_MEDICAL_BILL';

  static const Map<DocumentConsentType, String> CONSENT_TYPES = {
    DocumentConsentType.CONSENT_FOR_SERVICE_ANNUAL: 'CONSENT_FOR_SERVICE_ANNUAL',
    DocumentConsentType.CONSENT_FOR_SERVICE: 'CONSENT_FOR_SERVICE',
    DocumentConsentType.PROTECTION_AGAINST_SURPRISE_MEDICAL_BILLS: 'PROTECTION_AGAINST_SURPRISE_MEDICAL_BILLS',
    DocumentConsentType.OFF_CAMPUS_MEDICARE_OUTPATIENT_COINSURANCE_NOTICE: 'OFF_CAMPUS_MEDICARE_OUTPATIENT_COINSURANCE_NOTICE',
    DocumentConsentType.ENCOUNTER_SPECIFIC_CONSENTS: 'ENCOUNTER_SPECIFIC_CONSENTS',
    DocumentConsentType.FACILITY_OPT_OUT_ATTESTATION: 'FACILITY_OPT-OUT-ATTESTATION',
    DocumentConsentType.IDENTIFICATION_ATTESTATION_FORM: 'IDENTIFICATION_ATTESTATION_FORM',
  };

  static const FACESHEET_TEMPLATE_TYPE = 'ELECTRONIC_QUICK_CHECKIN';
  static const String VV_NOTIFICATION_TITLE = 'PineApp';

  static final Pattern PINE_TEXT_AREA_REASON_FOR_VISIT_REGEXP = RegExp('^(?:[A-Za-z0-9]+)(?:[A-Za-z0-9-\'\‘\’\&()/|\:, _@./#&+]*)');

  static const int NOTIFICATION_TIME_LAPSE = 120;

  // static List<String> MONTHS(BuildContext context) {
  //   return [
  //     AppLocalizations.of(context)!.global__january,
  //     AppLocalizations.of(context)!.global__february,
  //     AppLocalizations.of(context)!.global__march,
  //     AppLocalizations.of(context)!.global__april,
  //     AppLocalizations.of(context)!.global__may,
  //     AppLocalizations.of(context)!.global__june,
  //     AppLocalizations.of(context)!.global__july,
  //     AppLocalizations.of(context)!.global__august,
  //     AppLocalizations.of(context)!.global__september,
  //     AppLocalizations.of(context)!.global__october,
  //     AppLocalizations.of(context)!.global__november,
  //     AppLocalizations.of(context)!.global__december,
  //   ];
  // }

  // static List<String> DAYS_ABBREVIATION(BuildContext context) {
  //   return [
  //     AppLocalizations.of(context)!.week_day__sunday.substring(0, 1),
  //     AppLocalizations.of(context)!.week_day__monday.substring(0, 1),
  //     AppLocalizations.of(context)!.week_day__tuesday.substring(0, 1),
  //     AppLocalizations.of(context)!.week_day__wednesday.substring(0, 1),
  //     AppLocalizations.of(context)!.week_day__thursday.substring(0, 1),
  //     AppLocalizations.of(context)!.week_day__friday.substring(0, 1),
  //     AppLocalizations.of(context)!.week_day__saturday.substring(0, 1),
  //   ];
  // }

  // static Map<String, String> REASON_FOR_VISIT_CODES(BuildContext context) => {
  //       PineAppLocalization.of(context).localized('pcp_appointment_scheduling__reason_annual_wellness'): 'Annual/Physical',
  //       PineAppLocalization.of(context).localized('pcp_appointment_scheduling__reason_consult_followUp_and_sick'): 'INITCNSLFLLWP',
  //       PineAppLocalization.of(context).localized('pcp_appointment_scheduling__reason_sick_visit'): 'SICKVST',
  //     };

  // static Map<String, String> REASON_FOR_VISIT_VALUES(BuildContext context) => {
  //       PineAppLocalization.of(context).localized('pcp_appointment_scheduling__reason_annual_wellness'): 'Annual/Physical',
  //       PineAppLocalization.of(context).localized('pcp_appointment_scheduling__reason_consult_followUp_and_sick'): 'Initial Consult/Follow up',
  //       PineAppLocalization.of(context).localized('pcp_appointment_scheduling__reason_sick_visit'): 'Sick Visit',
  //     };

  static List<String> getReasonForVisitSelectedValue(String reasonForVisit) {
    final List<String> annualPhysical = [
      'NEWPHY',
      'AWVEST',
      'AWVNEW',
      'ESTABPHY',
    ];
    final List<String> others = [
      'NEWPT',
      'ESTABFU',
    ];
    return reasonForVisit == 'Annual/Physical' ? annualPhysical : others;
  }

  static const String PCP_IS_RESCHEDULED = 'reschedule';
  static const String PCP_DISCLAIMER_PHONE = '(786) 596-2464.';
  static const String ORTHO_APPOINTMENT_DISCLAIMER_PHONE = '(786) 268-6200.';
  static const String PCP_CANCEL_APPOINTMENT_TYPE = 'CANCEL';
  static const String PCP_CANCEL_APPOINTMENT_CODE = 'PE';
  static const String PCP_CANCEL_APPOINTMENT_VALUE = 'PATIENT WENT ELSEWHERE';
  static const String NEWPHY = 'NEWPHY';
  static const String NEWPT = 'NEWPT';
  static const String BOLD = 'b';
  static const int NOTIFICATION_BIWEEK_ZERO = 0;
  static const String ENCOUNTER_IN_PROGRESS = 'in-progress';
  static const String ENCOUNTER_LEVEL_OF_CARE = 'Satellite Services';

  static const String VV_VISIBILITY_AVAILABLE = 'AVAILABLE';
  static const String VV_VISIBILITY_BUSY = 'BUSY';
  static const String VV_VISIBILITY_OFFLINE = 'OFFLINE';

  static const String ORTHO = 'ORTHO';
  static const String MAMMO = 'MAMMO';
  static const String MAMMO_LOWER_CASE = 'Mammo';
  static const String ENDO = 'ENDO';
  static const String ENDO_ORIGIN_PAGE = 'DiagnosticAppointmentsOrderListPage';

  static const int MAMMO_THREE_SIXTY_FIVE_DAYS = 365;
  static const int PCP_ELDERLY_AGE = 65;
  static const int PCP_MAX_AGE = 200;
  static const int PCP_ADULT_AGE = 18;
  static const int PCP_ONE = 1;
  static const String PCP_ADULT_AGE_GROUP = 'Adult';
  static const String PCP_ADOLESCENTS_AGE_GROUP = 'Adolescen';
  static const String PCP = 'PCP';
  static const String PCP_REASON_FOR_VISIT_OTHER = 'Other';
  static const List<String> PATIENT_APPOINTMENT_SEARCH_STATUS = ['ACTIVE'];
  static const int PCP_CALENDAR_FUTURE_DAYS_ALLOWED = 180;
  static final Pattern FEEDBACK_MEMO_REGEXP = RegExp('[!=+,?()&:#.0-9a-zA-Z -]');

  static const int MOCK_RATING_VALUE = 3;

  static const Map<dynamic, String> PREFERRED_PHARMACY_SORT_MAP = {
    SORT_TYPE.ASCENDING: 'ASCENDING',
    SORT_TYPE.DESCENDING: 'DESCENDING',
    SORT_BY.NAME: 'name',
    SORT_BY.DISTANCE: 'distance',
  };

  static const int MAX_PHARMACIES_TO_DISPLAY = 100;
  static const String PHARMACY_TYPE_DEFAULT = 'DEFAULT';
  static const String PHARMACY_TYPE_BHSF_REATIL = 'BHSF_RETAIL';
  static const String PHARMACY_TYPE_MAIL = 'MAIL_ORDER';
  static const String PHARMACY_TYPE_BHSF = 'BHSF_RETAIL';
  static const int NOT_SELECTED_DROPDOWN_INDEX = -1;

  static const double UNDERLINE_WIDTH_PERCENT = 0.33;
  static const double UNDERLINE_WIDTH_PERCENT_SPANISH_LANGUAJE = 0.28;

  static const int AMWELL_VV_INACTIVITY_TIMEOUT_IN_SECONDS = 600;
  static const int AMWELL_FETCH_INBOX_MESSAGES = 60;
  static const String API_SUCCESS_RESPONSE_200 = '200';

  static const int PROFILE_MENU_SNAPSHOT_WITH_CONSENTS = 3;

  static const String PCP_FROM_SEARCH_TYPE = 'pcpFromSearch';
  static const String CARE_PROVIDER_NUMBER = '(866) 692-1500';

  static const String PRIMARY_CARE_ENG = 'Primary Care';
  static const String PRIMARY_CARE_ESP = 'Atención Primaria';

  static const String SPORTS_MEDICINE_ENG = 'Sports Medicine';
  static const String SPORTS_MEDICINE_ESP = 'Medicina deportiva';

  static const String ENDO_SEARCH_TERM_ENG = 'Endocrinology';
  static const String ENDO_SEARCH_TERM_ESP = 'Especialista';

  static const int SEARCH_ACTION_DESTANCE_SORT_VALUE = 0;
  static const int SEARCH_ACTION_A_Z_SORT_VALUE = 1;
  static const int SEARCH_ACTION_Z_A_SORT_VALUE = 2;

  static const int PCP_APPOINTMENT_DEFAULT_REASON_FOR_VISIT_INDEX = 0;

  static const int PCP_APPOINTMENT_DEFAULT_REASON_FOR_VISIT_INDEX_NONE = -1;

  static const int MAX_CAROUSEL_CARD_UPCOMING_HOURS = 2160;
  static const int MAX_CAROUSEL_CARD_NEW_BADGE_PAST_DAYS = 7;
  static const int MAX_CAROUSEL_CARD_SOON_MEDICATION_REMINDER_UPCOMING_HOURS = 2;
  static const int MAX_CAROUSEL_CARD_SOON_LAB_RESULTS_HOURS = 24;
  static const int HOME_REFRESH_MAX_CARD_COUNT = 3;
  static const int HOME_REFRESH_MAX_CARD_COUNT_WITH_MORE = 4;
  static const String CAROUSEL_CARD_VIRTUAL_VISIT_TYPE_TELE = "TELE";
  static const String CAROUSEL_CARD_VIRTUAL_VISIT_TYPE_TM = "TM";
  static const int CAROUSEL_CARD_JOIN_ZOOM_MINUTES = 30;
  static const int CAROUSEL_CARD_SHOW_PRE_REGISTRATION_TILE_DAYS = 3;
  static const String CAROUSEL_CARD_REGISTRATION_STATUS_COMPLETED = 'COMPLETED';
  static const String CAROUSEL_CARD_JOIN_ZOOM_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
  static const ZOOM_APPOINTMENT_SERVICE_BASE_URL = 'https://5haukxa4db.execute-api.us-east-1.amazonaws.com/';
  static const String PRACTICE_URGENT_CARE = 'URGENT_CARE';
  static const String PROVIDER_BUZY = 'BUSY';
  static const String PROVIDER_AVAILABLE = 'AVAILABLE';
  static const String PROVIDER_OFFLINE = 'OFFLINE';

  static final Pattern DOCUMENTS_SEARCH_REGEX = RegExp('^(?:[A-Za-z0-9]+)(?:[A-Za-z0-9-\'\‘\’\&()/|\:, ]*)');

  static const int DOCUMENT_CENTER_DEFAULT_LIMIT = 50;
  // static DateTime DOCUMENT_CENTER_DEFAULT_START_DATE = DateTimeUtils.getPastDate(subtractYear: 2);
  static DateTime DOCUMENT_CENTER_DEFAULT_END_DATE = DateTime.now();

  static const String DOCUMENT_CENTER_GROUP_VISIT = 'VISIT';
  static const String DOCUMENT_CENTER_GROUP_DIAG = 'DIAG';
  static const String DOCUMENT_CENTER_GROUP_CLIN = 'CLIN';

  static const Map<DocumentCenterSortBy, String> DOCUMENT_CENTER_SORT_BY_MAP = {
    DocumentCenterSortBy.PROVIDER: 'PROVIDER',
    DocumentCenterSortBy.DOCUMENT: 'DOCUMENT',
    DocumentCenterSortBy.DATE: 'DATE',
  };

  static const Map<LabResultSortBy, String> LAB_RESULT_SORT_BY_MAP = {
    LabResultSortBy.NAME: 'NAME',
    LabResultSortBy.DATE: 'DATE',
  };

  // static const Map<String, PracticeName> PRACTICE_NAME_MAP = {
  //   'URGENT_CARE': PracticeName.URGENT_CARE,
  // };

  static const String FORMAT_DATE_TIME_LINE_CHART = 'hh:mm a';
  static const String FORMAT_DATE_TIME_LINE_CHART_DROPDOWN = 'EEEE, MMMM d';
  static const String COMBINED_FORMAT_DATE_TIME_LINE_CHART = 'EEEE, MMMM d, y hh:mm a';

  static const String APPOINTMENT_RESCHEDULE_REASON_CODE = 'PC';
  static const String APPOINTMENT_RESCHEDULE_REASON_VALUE = 'Patient request';
  static const int DEFAULT_AWARENESS_CAMPAIGN_ELIGIBILITY_AGE = 40;
  static const String DEFAULT_AWARENESS_CAMPAIGN_BOX = 'CampaignBox';
  static const String AWARENESS_CAMPAIGN_CAMPAIGN_VISIBLE = 'IsCampaignVisible';
  static const String DEFAULT_AWARENESS_CAMPAIGN_START_DATE = '2022-10-01T00:00:00.000Z';
  static const String DEFAULT_AWARENESS_CAMPAIGN_END_DATE = '2022-10-31T23:59:59.999Z';
  static const bool DEFAULT_SWITCH_LOGIN_PKCE = false;
  static const int DEFAULT_RETRY_COUNT = 1;

  static List<String> SEARCH_TERMS_FOR_LOCATIONS = [
    'Urgent Care',
    'Hospital',
    'Urgent Care Express',
    'Emergency Room',
    'Emergency Care',
    'Diagnostic Imaging',
    'Imaging',
    'Pharmacy',
    'Physical Therapy',
    'Rehab',
    'Surgery Center',
    'Infusion Services',
    'Atención de urgencia',
    'Sala de emergencias',
    'Atención de emergencias',
    'Diagnóstico por Imágenes',
    'Farmacia',
    'Terapia Física',
    'Rehabilitación',
    'Cirugía',
    'Servicios de Infusion',
  ];

  static const String EMERGENCY_CONTACT_UNKNWON_RELATIONSHIP = 'Unknown';
  static const String EMERGENCY_CONTACT_UNKNWON_RELATIONSHIP_SPANISH = 'Se desconoce';
  static const int DOCUMENT_CENTER_INITIAL_PAST_MONTHS = 5;
  static const String SEARCH_PROCEDURE_PREFIX = 'name:';
  static const String FILTER_PROCEDURE_STATUS_PREFIX = 'status:';
  static const String SEARCH_PROCEDURE_CONTAIN = 'contains';
  static const String FILTER_PROCEDURE_EQUALS = 'equals';
  static const String PROCEDURE_STATUS_COMPLETED = 'completed';

  static const String PRE_ARRIVAL_STATUS_ACTIVE = 'ACTIVE';
  static const String PRE_ARRIVAL_STATUS_CANCELLED = 'CANCELLED';
  static const int PRE_ARRIVAL_WINDOW_TIME_MINUTES = 15;

  static const String LOCATION_URGENT_CARE = 'Urgent Care';
  static const String LOCATION_ES_URGENT_CARE = 'Servicio de emergencias';
  static const String NEW_PATIENT_TEXT = 'NEW_PATIENT';
  static const String ESTABLISHED_PATIENT_TEXT = 'ESTABLISHED_PATIENT';
  static const String ESTABPTNEWINJ_TEXT = 'ESTABPTNEWINJ';
  static const String PATIENT_STATUS_NEW_TEXT = 'NEWPT';
  static const String PATIENT_STATUS_EST_TEXT = 'ESTABPT';
  static const String PATIENT_STATUS_EST_TEXT_PCP = 'ESTABFU';
  static const String PATIENT_STATUS_ESTNEW_TEXT = 'ESTABPTNEWINJ';

  static const String BHMG_PATIENT_EMAIL = 'BHMGPatientExperience@baptisthealth.net';
  static const String MCI_PATIENT_EMAIL = 'MCIPatientExperience@baptisthealth.net';

  static const String URGENT_CARE_SEARCH_TERM = 'urgent care';
  static const String URGENT_CARE_ES_SEARCH_TERM = 'servicio de emergencias';
  static const String URGENT_CARE_NAME = 'urgent care |';
  static const String URGENT_CARE_ES_POPULAR_SEARCH_TERM = 'atención de urgencia';
  static const String UC_CHECK_IN = 'UC_CHECKIN';
  static const int DOCUMENTS_SCROLL_ANIM_LOAD_IN_SECONDS = 500;
  static const int DOCUMENTS_SCROLL_ANIM_DURATION_IN_SECONDS = 100;
  static const String GENDER_IDENTITY_OTHER = 'OTHER';
  static const String SEXUAL_ORIENTATION_OTHER = 'OTHER';
  static const String PREFERRED_PRONOUN_OTHER = 'OTHER';
  static const String MARITAL_STATUS_OTHER = 'OTHER';
  static const String RACE_OTHER = 'OTHER';
  static const String RELIGION_OTHER = 'OTHER';

  static const String URGENT_CARE_VIDEO_VIST_DEEP_LINK = 'bhsf://pineapp/VirtualVisitDashboardPage';
  static const String URGENT_CARE_SAVE_MY_SPOT_DEEP_LINK = 'bhsf://pineapp/locationsListPage?locationName=Urgent+Care';
  static const String PRIMARY_CARE_BOOK_APPOINTMENT_DEEP_LINK = 'bhsf://pineapp/search?searchTerm=Primary+Care&pbhmg=true';
  static const String SPECIALTY_CARE_BOOK_APPOINTMENT_DEEP_LINK = 'bhsf://pineapp/search';
  static const String EMERGENCY_CARE_DEEP_LINK = 'bhsf://pineapp/search?searchTerm=Emergency+Room';
  static const String MENTAL_WELLNESS_VIDEO_DEEP_LINK = 'awbaptisthealthbhsf://';
  static const String URGENT_CARE_EXPRESS_DEEP_LINK = 'bhsf://pineapp/search?searchTerm=Urgent+Care+Express';

  static const String FORGOT_PASSWORD_OTP_EMAIL_TYPE = 'EMAIL';
  static const String FORGOT_PASSWORD_OTP_MOBILE_TYPE = 'MOBILE';
  static const String FORGOT_PASSWORD_OTP_TEXT_MODE = 'text';
  static const String FORGOT_PASSWORD_OTP_CALL_MODE = 'call';
  static const String FORGOT_PASSWORD_ARG_TYPE = 'forgot';

  static const String COB_EN_OTHER_RELATIONSHIP = 'Other';
  static const String COB_ES_OTHER_RELATIONSHIP = 'Otro';

  static const String NEXT_BEST_SLOT_STATUS_GREEN = 'GREEN';
  static const String NEXT_BEST_SLOT_STATUS_ORANGE = 'ORANGE';
  static const String NEXT_BEST_SLOT_STATUS_RED = 'RED';

  static const String CLINICAL_STATUS_PREFIX = 'clinicalStatus:';
  static const String CATEGORY_PREFIX = 'category:';
  static const String CLINCAL_STATUS_ACTIVE = 'active';
  static const String CATEGORY_PROBLEM_LIST_ITEM = 'problem-list-item';
  static const String ORTHOPEDIC_APPOINTMENT_PAGE = 'orthopedicsAppointmentPage';
  static const String ENDOCRINOLOGY_APPOINTMENT_PAGE = 'endocrinologyAppointmentPage';
  static const String ASSISTANCE_NUMBER = '866-692-1500';

  static const String SOURCE_AMWELL = 'Amwell';
  static const String SOURCE_CERNER = 'Cerner';
  static const String SOURCE_PATIENT = 'Patient';

  static const List<String> cancelPCPApptType = [
    'NEWPT',
    'NEWPHY',
    'AWVEST',
    'AWVNEW',
    'ESTABPHY',
    'ESTABFU',
  ];

  static const int INTERNET_BANDWIDTH_HIGH = 180;
  static const int INTERNET_BANDWIDTH_LOW = 120;

  static const String OTHER_ID_TYPE_CERNER_ID = 'CERNER_ID';
  static const String OTHER_ID_TYPE_CMRN = 'CMRN';
  static const String OTHER_ID_TYPE_MRN = 'MRN';
  static const String OTHER_ID_TYPE_DIGITAL_MRN = 'DIGITAL_MRN';
  static const String OTHER_ID_TYPE_MESSAGING = 'MESSAGING';
  static const String OTHER_ID_TYPE_FEDERATED = 'FEDERATED_PERSON_PRINCIPAL';
  static const String OTHER_ID_TYPE_MILLENNIUM = 'MILLENNIUM_PERSON_IDENTIFIER';
  static const String OTHER_ID_TYPE_OTHER = 'OTHER';

  static const String POSTAL_ADDRESS_USE_MAILING = 'BILLING';

  static const String CANCEL_REASON_OTHER = 'other';
  static const String CANCEL_REASON_APPT_SOMEWHERE_ELSE = 'i got an appointment somewhere else';
  static const String ORTHOPEDICS_SPORTS_MEDICINE = 'orthopedics_sport_medicine';
  static const String ENDOCRINOLOGY = 'endocrinology';
  static const int ANALYTICS_MAX_PARAM_LENGTH = 100;
  static const String IN_PERSON = 'IN_PERSON';

  static const String CHATBOT_SPANISH_URL_EXCERPT = '/es/index.html';
  static const String PCP_EXPANSION_TELEMED = 'TELEMED';
  static const String DX_PRE_REG_PATIENT_INFO_ROUTE = 'preRegistrationDiagnosticPatientInformationPage';
  static const String RESPONSE_CODE_206 = '206';
  static const String DX_PRE_REG_CONSENT_DOCUMENTS_ROUTE = 'preRegistrationConsentDocumentPreviewPage';
  static const String DX_ENCOUNTER_NAME = 'dx';
  static const String MARITAL_STATUS = 'MARITAL_STATUS';
  static const String RACE = 'RACE';
  static const String RELIGION = 'RELIGION';
  static const String ETHNICITY = 'ETHNICITY';
  static const String PREFERRED_PRONOUN = 'PREFERRED PRONOUN';
  static const String SEXUAL_ORIENTATION = 'SEXUAL ORIENTATION';
  static const String GENDER_IDENTITY = 'GENDER IDENTITY';

  static const String DEFAULT_MARITAL_STATUS_VALUE = 'Unknown/Declined to Specify';
  static const String DEFAULT_RACE_VALUE = 'Unknown/Declined';
  static const String DEFAULT_RELIGION_VALUE = 'Refused';
  static const String DEFAULT_ETHNICITY_VALUE = 'Unknown';
  static const String DEFAULT_ES_MARITAL_STATUS_VALUE = 'Desconocido/No reporta';
  static const String DEFAULT_ES_RACE_VALUE = 'Desconocido/No reporta';
  static const String DEFAULT_ES_RELIGION_VALUE = 'Se negó';
  static const String DEFAULT_ES_ETHNICITY_VALUE = 'Desconocido';
  static const APOSTROPHE_CHAR = '\u0027';
  static const String DEFAULT_MINOR_RELATIONSHIP_CODE = 'PATIENT${APOSTROPHE_CHAR}S_PARENT';
  static const String LEGAL_GUARDIAN_CODE = 'LEGAL_GUARDIAN';

  static const String NOT_AVAILABLE = 'not available';

  static const List<String> GET_STATE_ABBREVIATION_LIST = [
    "AK",
    "AL",
    "AR",
    "AZ",
    "CA",
    "CO",
    "CT",
    "DE",
    "FL",
    "GA",
    "HI",
    "IA",
    "ID",
    "IL",
    "IN",
    "KS",
    "KY",
    "LA",
    "MA",
    "MD",
    "ME",
    "MI",
    "MN",
    "MO",
    "MS",
    "MT",
    "NC",
    "ND",
    "NE",
    "NH",
    "NJ",
    "NM",
    "NV",
    "NY",
    "OH",
    "OK",
    "OR",
    "PA",
    "RI",
    "SC",
    "SD",
    "TN",
    "TX",
    "UT",
    "VA",
    "VT",
    "WA",
    "WI",
    "WV",
    "WY"
  ];

  static const String DYNAMIC_FORM_RETIREMENT_RESPONCE = "I don't remember";

  static const DAYS_IN_YEAR = 365;
  static const CALENDER_PREVIOUS_YEAR = 150;
  static const String PROVIDER_VIRTUAL_AVAILABILITY_TYPE = 'VIRTUAL';
  static const String PROVIDER_IN_PERSON_AVAILABILITY_TYPE = 'IN_PERSON';

  static const appointmentSectionScript =
      'window.scrollTo(0, document.getElementsByClassName(\'section-header__lede\')[2].getBoundingClientRect().top)';

  static const labFaqSectionScript = 'window.scrollTo(0, document.getElementsByClassName(\'section-header__lede\')[3].getBoundingClientRect().top)';

  static const String PATIENT_RESOURSES_URL_EN = 'https://pineapp.web.baptisthealth.net/content/patient-resources.html';
  static const String PATIENT_RESOURSES_URL_ES = 'https://pineapp.web.baptisthealth.net/content/patient-resources-es.html';

  static const String BOS_OCED = 'BOS-OCED';

  static const String GENERATE_OTP = 'GENERATE_OTP';
  static const String RESEND_OTP = 'RESEND_OTP';
  static const String VALIDATE_OTP = 'VALIDATE_OTP';

  // static Map<PineChipType, String> PINE_CHIP_TYPE_LANG(BuildContext context) {
  //   var lang = PineAppLocalization.of(context);
  //   return {
  //     PineChipType.VALID: lang.localized('global__valid'),
  //     PineChipType.INVALID: lang.localized('global__invalid'),
  //     PineChipType.PENDING: lang.localized('global__pending'),
  //   };
  // }

  static const PROVIDER_NOT_ACCEPTING_NEW_PATIENTS = 'provider_not_accepting_new_patient';

  static const String FEATURE_NAME_UC_CHECK_IN = 'ucCheckin';
  static const String FEATURE_NAME_RANDOM_FEEDBACK = 'randomFeedback';

  static const String LOGIN_TYPE_STANDARD = 'standard';
  static const String LOGIN_TYPE_OTP = 'alternate-otp';
  static const String NO_LOGIN_TYPE_AVAILABLE = '';
  static const String CONSENTS_ALLOWED_AGE = '11';
  static const String AUTHENTICATION_ACCESS_DENIED = 'authenticationAccessDenied';
  static const String AUTHENTICATION_SESSION_EXPIRED = 'authenticationSessionExpired';

  // static List<String> PHARMACY_BENEFITS(BuildContext context) {
  //   var lang = PineAppLocalization.of(context);
  //   return [
  //     lang.localized('pharmacy_benefit_1'),
  //     lang.localized('pharmacy_benefit_2'),
  //     lang.localized('pharmacy_benefit_3'),
  //     lang.localized('pharmacy_benefit_4'),
  //     lang.localized('pharmacy_benefit_5'),
  //     lang.localized('pharmacy_benefit_6'),
  //     lang.localized('pharmacy_benefit_7'),
  //     lang.localized('pharmacy_benefit_8'),
  //   ];
  // }

  static const String MINOR_PATIENT_CONSENTS_PAGE_ROUTE = 'minorPatientConsentsPageRoute';

  static const String PHONE_NUMBER_LAUNCH_SCHEME = 'tel';
  static const int AMWELL_SERVICE_TIMEOUT = 60;
  static const String MAMMO_AGE_VALIDATION_ROUTE = 'ageValidationDialog';
}
