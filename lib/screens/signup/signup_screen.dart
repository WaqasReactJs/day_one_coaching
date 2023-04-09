import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../login/login_screen.dart';
import 'cubit/signup_cubit.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController createPasswordController = TextEditingController();
  bool _isChecked = false;

  @override
  void dispose() {
    // TODO: implement dispose
    userNameController.dispose();
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
                SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Text(
                      "Create an Account!",
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
                      'Agree with Terms & Conditions',
                      style: TextStyle(color: Color(0xff5A5A5A)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<SignupCubit, SignupState>(
                  builder: (context, state) {
                    return InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          BlocProvider.of<SignupCubit>(context).submittedData(
                            context,
                            emailController.text.trim(),
                            passwordController.text.trim(),
                            userNameController.text.trim(),
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
                          "Sign Up",
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
                          "Already have an account?",
                          style: TextStyle(fontSize: 16),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              }));
                            },
                            child: const Text(
                              " Log In ",
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
          //fullname
          TextFormField(
            controller: userNameController,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(15),
                // add padding to adjust icon
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.person_outline_rounded),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Full Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(
              fontFamily: "Poppins",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Full Name';
              } else if (!EmailValidator.validate(value)) {
                return "Please Enter Full Name";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
          //email
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
              hintText: "Email Address",
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
          //phone
          TextFormField(
            controller: phoneController,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(15),
                // add padding to adjust icon
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.phone_rounded),
                ),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: "Phone Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(
              fontFamily: "Poppins",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Phone Number';
              } else if (!EmailValidator.validate(value)) {
                return "Please Enter Phone Number";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),

          //password
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
          //create password
          TextFormField(
            controller: createPasswordController,
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
              hintText: "Create Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(
              fontFamily: "Poppins",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Create Password';
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
