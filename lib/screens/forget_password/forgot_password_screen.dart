import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/forgot_cubit.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        actions: [
          // Image(
          //   image: AssetImage("assets/images/notificationBill.png"),
          // ),
          SizedBox(
            width: 10,
          ),
        ],
        // leading: Image(
        //   image: AssetImage("assets/images/lead_notification.png"),
        // ),
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image(
                image: AssetImage("assets/images/splash_logo.png"),
                width: 186,
                height: 166,
              ),
              buildFormWidget(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),

              BlocBuilder<ForgotCubit, ForgotState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<ForgotCubit>(context).submittedData(
                          context,
                          emailController.text.trim(),
                        );

                      }
                    },
                    child: Container(
                      width: 222,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffF69A7B), Color(0xffF15B2A)]),
                      ),
                      child: Center(
                          child: Text(
                            "Send",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildFormWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(15),
                // add padding to adjust icon
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.email_outlined),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(
              fontFamily: "Poppins",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Email';
              } else if (!EmailValidator.validate(value)) {
                return "Please Enter Valid Email";
              } else {
                return null;
              }
            },
          ),


          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

}
