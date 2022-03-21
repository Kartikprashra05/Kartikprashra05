

import 'dart:io';

import 'package:get/get.dart';

import '../apiprovider/auth_api.dart';
import '../model/data_response.dart';
import '../model/error_model.dart';
import '../model/user_model.dart';

class HomeController extends GetxController{
  var email = "".obs;
  var password = "".obs;

  late AuthApiProvider _authApiProvider;
  Rx<bool> passwordvisibility = true.obs;

  @override
  void onInit() {
    _authApiProvider =AuthApiProvider();
    // TODO: implement onInit
    super.onInit();
  }
  updatepasswordvisibility(){
    passwordvisibility.value=!passwordvisibility.value;
  }
  updateEmail(data){
    email.value = data;
  }
  updatepasssword(data){
    password.value = data;
  }

  Future Initlogin() async {
    AuthApiProvider _auth = AuthApiProvider();

    var model = UserModel(
        email: email.value,
        password:password.value,
        role: "3",
        device_type: Platform.isAndroid ? "1" : "1",
        /*device_token: _preferenceHelper.getFcmToken(),*/
        location: "Saudi Arabia",
        latitude: 23.8859,
        longitude: 45.0792
    );
    var response = await AuthApiProvider().signIn(model);
    if (response is ErrorModel) {
      print(response.message);
    } else {
      var dataResponse = response as DataResponse;
      if (dataResponse.success == true) {
        print("SUccesfful");
      } else {
        print(dataResponse.message);
      }
    }
  }


}