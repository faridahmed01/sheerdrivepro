import '../common/utilities.dart';
import 'api_endpoint.dart';

class APIService {
  static Future<Map<String, String>> get authHeaders async {
    var token = await Utilities.getAuthToken();
    return {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };
  }

  static Future<Map<String, String>> get nonAuthHeaders async {
    return {
      "Content-Type": "application/json",
    };
  }

  // static const String kBaseURL =
  //     "https://bikgaiservergcp-dev-obqjb3amaa-as.a.run.app/api";

  static const String kBaseURL = "http://192.168.29.218:80/api/v1";

  static const String loginURL = '$kBaseURL/buyerLogin';
  static const String loginOtpURL = '$kBaseURL/generateOtp';

  static const APIEndPoint loginWithCrediantial = APIEndPoint(
    loginURL,
    method: "POST",
    requireAuth: false,
  );

  static const APIEndPoint verifyLoginPhoneNumber = APIEndPoint(
    loginOtpURL,
    method: "GET",
    requireAuth: false,
  );

  static const APIEndPoint signInByMobileNumber = APIEndPoint(
    '$kBaseURL/signInByMobileNumber',
    method: "POST",
    requireAuth: false,
  );
}
