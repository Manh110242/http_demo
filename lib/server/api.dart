import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_demo/server/domain.dart';

class Api{
  Future<dynamic> postAsync(String endPoint, Map data) async {
    var url = Uri.parse(Const.Domain + endPoint);
    var jsonData;
    try{
      var response = await http.post(url ,  body: json.encode(data)).timeout(
        Duration(seconds: 10),
        onTimeout: () {
          jsonData = null;
          return jsonData;
        },
      );
      jsonData = await json.decode(response.body);
    } catch(e){
      jsonData = null;
    }
    return jsonData;
  }

  Future<dynamic> getAsync(String endPoint,) async {
    var url = Uri.parse(Const.Domain + endPoint);
    var jsonData;
    try{
      final response = await http.get(url).timeout(
        Duration(seconds: 10),
        onTimeout: () {
          jsonData = null;
          return jsonData;
        },
      );
      jsonData = await json.decode(response.body);
    } catch(e){
      jsonData = null;
    }
    return jsonData;
  }
}