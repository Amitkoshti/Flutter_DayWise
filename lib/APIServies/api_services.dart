import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../Auth/Model/register_model.dart';

class ApiServices{
  final dio = Dio();
  var baseUrl = 'https://www.sparkstoideas.com/LJ/api/';

  Future<register_model>register(Name,Surname,Email,Password)async{
    final user_form  = FormData();

    user_form.fields.add(MapEntry("Name", Name));
    user_form.fields.add(MapEntry("Surname", Surname));
    user_form.fields.add(MapEntry("Email", Email));
    user_form.fields.add(MapEntry("Password", Password));

    final value_user = await dio.post("${baseUrl}register",data: user_form);
    if(value_user.statusCode == 200){
      final result_user = register_model.fromJson(value_user.data);
      return result_user;
    }
    else{
      throw "Something went wrong";
    }
  }
}