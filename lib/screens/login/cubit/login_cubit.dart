import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../../home/home_screen.dart';
import '../../home/main_bottom_nav_screen.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  void submittedData(
      BuildContext context, String userEmail, String userPassword) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) {
          return  MainBottomNavScreen();
        }));
    // checkUser(context, userEmail, userPassword).then((value) async {
    //   log("value $value");
    //
    //   if (value.userEmail == userEmail || value.userPassword == userPassword) {
    //     emit(LoginSuccessState());
    //     getIt<SharedPreferencesModel>()
    //         .setLoginStatus(true); // prefs.setBool("isLoggedIn", true);
    //     getIt<SharedPreferencesModel>().setLoginEmail(
    //         userEmail); // prefs.setString("userEmail", userEmail);
    //     log(userEmail, name: "userEmail");
    //     BlocProvider.of<RegisteredPostCubit>(context).getAllPost(userEmail);
    //
    //     Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) {
    //           return const RegisteredPostScreen();
    //         }));
    //   } else {
    //     emit(LoginErrorState());
    //   }
    // }).onError((error, stackTrace) {
    //   emit(LoginErrorState());
    // });
  }


}
