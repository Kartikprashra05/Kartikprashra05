

import 'package:apicall/apiprovider/api_constent.dart';
import 'package:apicall/model/user_model.dart';
import 'package:dio/dio.dart';

import '../Injector.dart';
import '../model/data_response.dart';
import '../model/error_model.dart';

class AuthApiProvider{
  late Dio _dio;
  AuthApiProvider(){
    _dio = Injector().getDio();
  }

  Future<dynamic>signIn(UserModel userModel)async{
    try{
      Response response = await _dio.post(ApiConstent.login,data:  userModel);
      var dataResponse = DataResponse<UserModel>.fromJson(response.data, (data) =>
          UserModel.fromJson(data as Map<String, dynamic>));
      return dataResponse;
    }catch(error){
      final res = (error as dynamic).response;
      if(res!=null) return ErrorModel.fromJson(res?.data);
      return ErrorModel(message: error.toString());
    }


  }







}