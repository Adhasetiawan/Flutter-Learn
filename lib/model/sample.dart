import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class users {
  int page, perPage, total, totalPages;
  List<listUser> data;
  users({this.page, this.perPage, this.total, this.totalPages, this.data});
  factory users.sideInfo(Map<String, dynamic> object){
    return users(
      page: object['object'],
      perPage: object['per_page'],
      total: object['total'],
      totalPages: object['total_pages'],
      data: List<listUser>.from(object["data"].map((x) => listUser.usersDetail(x))),
    );
  }
}
class listUser {
  int id;
  String email, firstName, lastName;
  listUser({this.id, this.email, this.firstName, this.lastName});
  factory listUser.usersDetail(Map<String, dynamic> object){
    return listUser(
      id: object['id'],
      email: object['email'],
      firstName: object['first_name'],
      lastName: object['last_name']
    );
  }
}

class apiRunning{
  Future<dynamic> apiDeploy(String page) async{
    var apiUrl = Uri.parse('https://reqres.in/api/users?page=' + page);

    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);

    return users.sideInfo(jsonObject);
  }
}
