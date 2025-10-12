import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get apiKey => dotenv.env['API_KEY'] ?? '';
  static String get baseUrl => dotenv.env['BASE_URL'] ?? '';

  // Firebase Web
  static String get firebaseWebApiKey =>
      dotenv.env['FIREBASE_WEB_API_KEY'] ?? '';
  static String get firebaseWebAppId => dotenv.env['FIREBASE_WEB_APP_ID'] ?? '';
  static String get firebaseWebMessagingSenderId =>
      dotenv.env['FIREBASE_WEB_MESSAGING_SENDER_ID'] ?? '';
  static String get firebaseWebProjectId =>
      dotenv.env['FIREBASE_WEB_PROJECT_ID'] ?? '';
  static String get firebaseWebAuthDomain =>
      dotenv.env['FIREBASE_WEB_AUTH_DOMAIN'] ?? '';
  static String get firebaseWebStorageBucket =>
      dotenv.env['FIREBASE_WEB_STORAGE_BUCKET'] ?? '';
  static String get firebaseWebDatabaseUrl =>
      dotenv.env['FIREBASE_WEB_DATABASE_URL'] ?? '';
  static String get firebaseWebMeasurementId =>
      dotenv.env['FIREBASE_WEB_MEASUREMENT_ID'] ?? '';

  // Firebase Android
  static String get firebaseAndroidApiKey =>
      dotenv.env['FIREBASE_ANDROID_API_KEY'] ?? '';
  static String get firebaseAndroidAppId =>
      dotenv.env['FIREBASE_ANDROID_APP_ID'] ?? '';
  static String get firebaseAndroidMessagingSenderId =>
      dotenv.env['FIREBASE_ANDROID_MESSAGING_SENDER_ID'] ?? '';
  static String get firebaseAndroidProjectId =>
      dotenv.env['FIREBASE_ANDROID_PROJECT_ID'] ?? '';
  static String get firebaseAndroidStorageBucket =>
      dotenv.env['FIREBASE_ANDROID_STORAGE_BUCKET'] ?? '';
  static String get firebaseAndroidDatabaseUrl =>
      dotenv.env['FIREBASE_ANDROID_DATABASE_URL'] ?? '';

  // Firebase iOS
  static String get firebaseIosApiKey =>
      dotenv.env['FIREBASE_IOS_API_KEY'] ?? '';
  static String get firebaseIosAppId => dotenv.env['FIREBASE_IOS_APP_ID'] ?? '';
  static String get firebaseIosMessagingSenderId =>
      dotenv.env['FIREBASE_IOS_MESSAGING_SENDER_ID'] ?? '';
  static String get firebaseIosProjectId =>
      dotenv.env['FIREBASE_IOS_PROJECT_ID'] ?? '';
  static String get firebaseIosStorageBucket =>
      dotenv.env['FIREBASE_IOS_STORAGE_BUCKET'] ?? '';
  static String get firebaseIosDatabaseUrl =>
      dotenv.env['FIREBASE_IOS_DATABASE_URL'] ?? '';
  static String get firebaseIosAndroidClientId =>
      dotenv.env['FIREBASE_IOS_ANDROID_CLIENT_ID'] ?? '';
  static String get firebaseIosIosClientId =>
      dotenv.env['FIREBASE_IOS_IOS_CLIENT_ID'] ?? '';
  static String get firebaseIosBundleId =>
      dotenv.env['FIREBASE_IOS_BUNDLE_ID'] ?? '';

  // Firebase macOS
  static String get firebaseMacosApiKey =>
      dotenv.env['FIREBASE_MACOS_API_KEY'] ?? '';
  static String get firebaseMacosAppId =>
      dotenv.env['FIREBASE_MACOS_APP_ID'] ?? '';
  static String get firebaseMacosMessagingSenderId =>
      dotenv.env['FIREBASE_MACOS_MESSAGING_SENDER_ID'] ?? '';
  static String get firebaseMacosProjectId =>
      dotenv.env['FIREBASE_MACOS_PROJECT_ID'] ?? '';
  static String get firebaseMacosStorageBucket =>
      dotenv.env['FIREBASE_MACOS_STORAGE_BUCKET'] ?? '';
  static String get firebaseMacosDatabaseUrl =>
      dotenv.env['FIREBASE_MACOS_DATABASE_URL'] ?? '';
  static String get firebaseMacosAndroidClientId =>
      dotenv.env['FIREBASE_MACOS_ANDROID_CLIENT_ID'] ?? '';
  static String get firebaseMacosIosClientId =>
      dotenv.env['FIREBASE_MACOS_IOS_CLIENT_ID'] ?? '';
  static String get firebaseMacosBundleId =>
      dotenv.env['FIREBASE_MACOS_BUNDLE_ID'] ?? '';

  // Firebase Windows
  static String get firebaseWindowsApiKey =>
      dotenv.env['FIREBASE_WINDOWS_API_KEY'] ?? '';
  static String get firebaseWindowsAppId =>
      dotenv.env['FIREBASE_WINDOWS_APP_ID'] ?? '';
  static String get firebaseWindowsMessagingSenderId =>
      dotenv.env['FIREBASE_WINDOWS_MESSAGING_SENDER_ID'] ?? '';
  static String get firebaseWindowsProjectId =>
      dotenv.env['FIREBASE_WINDOWS_PROJECT_ID'] ?? '';
  static String get firebaseWindowsAuthDomain =>
      dotenv.env['FIREBASE_WINDOWS_AUTH_DOMAIN'] ?? '';
  static String get firebaseWindowsStorageBucket =>
      dotenv.env['FIREBASE_WINDOWS_STORAGE_BUCKET'] ?? '';
  static String get firebaseWindowsDatabaseUrl =>
      dotenv.env['FIREBASE_WINDOWS_DATABASE_URL'] ?? '';
  static String get firebaseWindowsMeasurementId =>
      dotenv.env['FIREBASE_WINDOWS_MEASUREMENT_ID'] ?? '';
}
