import 'dart:convert';
import 'package:http/http.dart' as http;

class getSingleUser{
  String id;
  String email, firstName;

  getSingleUser({this.id, this.email, this.firstName});

  factory getSingleUser.createUser(Map<String, dynamic> object){
    return getSingleUser(
      id: object['id'].toString(),
      email: object['email'],
      firstName: object['first_name'] + " " + object ['last_name']
    );
  }

  static Future<getSingleUser> apiRunningGet(String id)async{
    var apiURL = Uri.parse('https://reqres.in/api/users/' + id);

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    //kalau bentuk data nya mapping seperti pada sample URL
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return getSingleUser.createUser(userData);
  }
}