import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vrutant_login/APIServies/api_services.dart';
import 'package:vrutant_login/Auth/Model/register_model.dart';

class RegisterController extends GetxController{
  RxBool isLoading = false.obs;
  var response = register_model().obs;
  TextEditingController nameCTC = TextEditingController();
  TextEditingController sNameCTC = TextEditingController();
  TextEditingController emailCTC = TextEditingController();
  TextEditingController passCTC = TextEditingController();

  Future<void> registerCont()async{
    try{
      isLoading(true);
      final respo = await ApiServices().register(
        nameCTC.text,
        sNameCTC.text,
        emailCTC.text,
        passCTC.text
      );
      if(respo.responseCode=='1'){
        response = respo.obs;
        print("${response.value.message}");
      }
    }catch(e){
      print("Register Error $e");
    }
    finally{
      isLoading(false);
    }
  }
}