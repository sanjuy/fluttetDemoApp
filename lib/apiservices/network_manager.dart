import 'dart:convert';
import 'package:dsdtabs/datastorage/userdefaults.dart';
import 'package:http/http.dart' as http;
import 'package:dsdtabs/apiservices/appconstants.dart';
import 'dart:developer' as developer;

class NetworkManager {
  NetworkManager._();
  static final NetworkManager _manager = NetworkManager._();
  static NetworkManager get shared => _manager;

  Future<String> getToken() async {
    String token = '';
    await Storage.shared.getData("bearer", (p0) {
      token = p0;
    });
    return token;
  }

  Future getRequest(Function(Map<String, dynamic>) onCompletion) async {
    var header = {"Authorization": "Bearer ${await getToken()}"};
    var url = Uri.https(baseURL, EndPoints.vehicle.value);
    var response = await http.get(url, headers: header);
    developer.log("request ${response.request}");
    developer.log("header ${response.headers}");
    developer.log("body ${response.body}");
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      onCompletion(jsonResponse);
    } else if (response.statusCode == 401) {
      print("error ${response.statusCode}");
    } else {
      print("error ${response.statusCode}");
    }
  }

  Future postRequest(Map params, Function(Map<String, dynamic>) onCompletion) async {
    var url = Uri.https(accBaseURL, EndPoints.token.value);
    var response = await http.post(url, body: params);
    developer.log("request ${response.request}");
    developer.log("header ${response.headers}");
    developer.log("body ${response.body}");
    if (response.statusCode == 200){
      var jsonResponse = json.decode(response.body);// as Map<String, dynamic>;
      onCompletion(jsonResponse);
    }else if (response.statusCode == 401) {
      print("error ${response.statusCode}");
    } else {
      print("error ${response.statusCode}");
    }
  }
}
