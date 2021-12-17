import 'dart:convert';
import 'package:http/http.dart' as http;

class Welcome {
  int page, perPage, total, totalPages;
  List<Datum> data;

  Welcome({this.page, this.perPage, this.total, this.totalPages, this.data,});

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    page: json["page"],
    perPage: json["per_page"],
    total: json["total"],
    totalPages: json["total_pages"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "per_page": perPage,
    "total": total,
    "total_pages": totalPages,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String email, firstName, lastName, avatar;

  Datum({this.id, this.email, this.firstName, this.lastName, this.avatar,});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}
