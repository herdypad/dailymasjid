import '../../service/api_service.dart';
import '../../utils/app_utils.dart';

class ApiData {
  static Future<String> LoginApp() async {
    try {
      final url = 'https://www.bukalapak.com/westeros_auth_proxies';

      final response = await ApiService().request(
          url: url,
          method: Method.POST,
          isToken: false,
          parameters: {"application_id": 1});

      logSys("=======Token Nya========== ${response['access_token']}");

      // logSys(response.toString());
      return response['access_token'];
    } catch (e) {
      print(e.toString() + "ini error");
      // rethrow;
      return "";
    }
  }

  static Future<dynamic> getDataTagihan(String token, String idP) async {
    try {
      final url =
          "https://api.bukalapak.com/telkom-postpaids/inquiries?access_token=$token";

      final response = await ApiService().request(
          url: url,
          method: Method.POST,
          isToken: false,
          parameters: {"customer_number": idP});

      // logSys("=======Token Nya========== ${response['data']['customer_name']}");

      // logSys("asasdasd" + response.toString());
      return response;
    } catch (e) {
      logSys(e.toString() + "  ini error");
      // rethrow;
    }
  }

  //get Data
  static Future<dynamic> getConfig() async {
    try {
      const url = "https://github.com/herdypad/JsonConfig/raw/main/wifi.json";
      final response = await ApiService()
          .request(url: url, method: Method.GET, isToken: false);
      // logSys("ASASASASS ${response}");
      return response;
    } catch (e) {
      logSys("=================eror Beos $e");
    }
  }
}
