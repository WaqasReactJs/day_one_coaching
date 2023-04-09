import 'package:day_one_coaching/screens/forget_password/forgot_password_screen.dart';
import 'package:day_one_coaching/screens/home/home_screen.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../signup/signup_screen.dart';
import 'cubit/login_cubit.dart';
import 'cubit/login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage("assets/images/splash_logo.png"),
                  width: 186,
                  height: 166,
                ),
                Row(
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Color(0xff1D1617),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                buildFormWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember me',
                          style: TextStyle(color: Color(0xff5A5A5A)),
                        ),
                      ],
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const ForgotPasswordScreen();
                          }));
                        },
                        child: const Text(
                          " Forgot Password ",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xffF15B2A)),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    return InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<LoginCubit>(context).submittedData(
                            context,
                            emailController.text.trim(),
                            passwordController.text.trim(),
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
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                Text(
                  "Or Continue with",
                  style: TextStyle(
                      color: Color.fromRGBO(71, 85, 105, 0.8),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/chrome_logo.png"),
                      width: 26,
                      height: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage("assets/images/fb_logo.png"),
                      width: 26,
                      height: 22,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image(
                      image: AssetImage("assets/images/twit_logo.png"),
                      width: 26,
                      height: 22,
                    ),
                  ],
                ),
                SizedBox(
                  height: 38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 16),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const SignupScreen();
                              }));
                            },
                            child: const Text(
                              " Sign Up ",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffF15B2A)),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
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
            keyboardType: TextInputType.emailAddress,
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
            height: 16,
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(15),
                // add padding to adjust icon
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.lock_outline_rounded),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(
              fontFamily: "Poppins",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your Password';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
// TextFormField(
// controller: emailController,
// decoration: InputDecoration(
// labelText: "Enter User Email",
// fillColor: Colors.white,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(25.0),
// borderSide: const BorderSide(),
// ),
// //fillColor: Colors.green
// ),
// keyboardType: TextInputType.emailAddress,
// style: const TextStyle(
// fontFamily: "Poppins",
// ),
// validator: (value) {
// if (value!.isEmpty) {
// return 'Please enter your Email';
// } else if (!EmailValidator.validate(value)) {
// return "Please Enter Valid Email";
// } else {
// return null;
// }
// },
// ),

//button
// BlocBuilder<LoginCubit, LoginState>(
// builder: (context, state) {
// return CupertinoButton(
// color: Colors.blue,
// onPressed: () {
//
// },
// child: const Text("Login"),
// );
// },
// ),
