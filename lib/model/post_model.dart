import 'dart:convert';
import 'package:http/http.dart' as http;

class postModel {
  //ini variabel yang menyimpan data dari API nantinya
  String id;
  String name;
  String job;
  String time_create;


  //ini konstruktor agar variabel penyimpanan dapat di mapping
  postModel({this.id, this.name, this.job, this.time_create});

  factory postModel.createPostModel(Map<String, dynamic> object) {
    //fungsi mapping data ada di sini
    return postModel(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        time_create: object['createdAt']);
  }

  static Future<postModel> apiRunning(String name, String job) async {
    //ini buat inisiasi link
    var apiURL = Uri.parse("https://reqres.in/api/users");

    // ini buat body input dan running API
    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});

    //prpses di antara API selesai dan mapping data
    var jsonObject = json.decode(apiResult.body);

    //trigger agar fungsi mapping berjalan ketika API sudah selesai jalan
    return postModel.createPostModel(jsonObject);
  }
}
