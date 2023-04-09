import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meta/meta.dart';

part 'forgot_state.dart';

class ForgotCubit extends Cubit<ForgotState> {
  ForgotCubit() : super(ForgotInitialState());

  void submittedData(BuildContext context, String userEmail
      ) {
    validateUser(context, userEmail)
        .then((value) async {
      if (value) {
        //log("print $value");
        // Navigator.pop(context);
        emit(ForgotSuccessState());
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
        emit(ForgotErrorState());
      }
    }).onError((error, stackTrace) {
      log("UserAlreadyexits $error");

      emit(ForgotErrorState());
    });
  }

  Future<bool> validateUser(
      context,
      String userEmail,
      ) async {
    if (userEmail.isEmpty ) {
      return false;
    } else {




      return true;
    }
  }
}
