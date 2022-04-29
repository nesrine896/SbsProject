import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class User {
  String _userId = "";
  String _name = "";
  String _email = "";
  String _password = "";
  String _post = "";
  DateTime _brithday = DateTime.now();
  String _image = "";

  constructorUser(
      {String userId = "",
      String name = "",
      String email = "",
      String password = "",
      String post = "",
      DateTime? brithday,
      String image = ""}) {
    _userId = userId;
    this._name = name;
    this._email = email;
    this._password = password;
    this._post = post;
    this._brithday = brithday!;
    this._image = image;
  }

  // Properties
  String get userId => _userId;
  set userId(String userId) => _userId = userId;
  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set email(String email) => _email = email;
  String get password => _password;
  set password(String password) => _password = password;
  String get post => _post;
  set post(String post) => _post = post;
  DateTime get brithday => _brithday;
  set brithday(DateTime brithday) => _brithday = brithday;
  String get image => _image;
  set image(String image) => _image = image;

  // create the user object from json input
  User.fromJson(Map<String, dynamic> json) {
    _userId = json['userId'];
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _post = json['post'];
    _brithday = json['brithay'];
    _image = json['image'];
  }

  // exports to json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._userId;
    data['name'] = this._name;
    data['email'] = this._email;
    data['password'] = this._password;
    data['post'] = this._post;
    data['brithday'] = this._brithday;
    data['image'] = this._image;
    return data;
  }
}
