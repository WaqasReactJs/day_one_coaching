import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitialState());
  void submittedData(BuildContext context, String userEmail, String userName,
      String userPassword) {
    validateUser(context, userEmail, userName, userPassword)
        .then((value) async {
      if (value) {
        //log("print $value");
        // Navigator.pop(context);
        emit(SignupSuccessState());
      } else {
        //log("Empty $value");
        log("UserAlreadyexits $value");

        // Fluttertoast.showToast(
        //     msg: "User Already exits",
        //     gravity: ToastGravity.BOTTOM,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.green,
        //     textColor: Colors.white,
        //     fontSize: 16.0);
        emit(SignupErrorState());
      }
    }).onError((error, stackTrace) {
      log("UserAlreadyexits $error");

      emit(SignupErrorState());
    });
  }

  Future<bool> validateUser(
      context,
      String userEmail,
      String userName,
      String userPassword,
      ) async {
    if (userEmail.isEmpty || userPassword.isEmpty || userName.isEmpty) {
      return false;
    } else {




      return true;
    }
  }
}
