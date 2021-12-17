import 'dart:convert';
import 'package:http/http.dart' as http;

class getManyUser{
  String id, name;

  getManyUser({this.id, this.name});

  factory getManyUser.createUser(Map<String, dynamic> object){
    return getManyUser(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name']
    );
  }

  static Future<List<getManyUser>> getUsers(String page)async{
    var apiURL = Uri.parse('https://reqres.in/api/users?page=' + page);

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    List<getManyUser> users = [];
    for (int i = 0; i < listUser.length; i++){
      users.add(getManyUser.createUser(listUser[i]));
    }

    return users;

  }
}