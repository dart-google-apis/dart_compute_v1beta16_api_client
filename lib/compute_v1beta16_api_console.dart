library compute_v1beta16_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_compute_v1beta16_api/src/console_client.dart';

import "package:google_compute_v1beta16_api/compute_v1beta16_api_client.dart";

/** API for the Google Compute Engine service. */
class Compute extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your Google Compute Engine resources */
  static const String COMPUTE_SCOPE = "https://www.googleapis.com/auth/compute";

  /** OAuth Scope2: View your Google Compute Engine resources */
  static const String COMPUTE_READONLY_SCOPE = "https://www.googleapis.com/auth/compute.readonly";

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  final oauth2.OAuth2Console auth;

  Compute([oauth2.OAuth2Console this.auth]);
}
