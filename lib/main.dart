import 'package:day_one_coaching/screens/activities/activities_screen.dart';
import 'package:day_one_coaching/screens/add_friend/add_friend_screen.dart';
import 'package:day_one_coaching/screens/affirmation/affirmation_screen.dart';
import 'package:day_one_coaching/screens/affirmation/affirmation_screen2.dart';
import 'package:day_one_coaching/screens/affirmation/affirmation_screen3.dart';
import 'package:day_one_coaching/screens/flashed/flashed_screen.dart';
import 'package:day_one_coaching/screens/flashed/flashed_screen2.dart';
import 'package:day_one_coaching/screens/forget_password/cubit/forgot_cubit.dart';
import 'package:day_one_coaching/screens/forget_password/forgot_password_screen.dart';
import 'package:day_one_coaching/screens/home/cubit/bottom_nav_cubit.dart';
import 'package:day_one_coaching/screens/home/home_screen.dart';
import 'package:day_one_coaching/screens/home/main_bottom_nav_screen.dart';
import 'package:day_one_coaching/screens/login/cubit/login_cubit.dart';
import 'package:day_one_coaching/screens/mind_gym_lessons/mind_gym_lessons.dart';
import 'package:day_one_coaching/screens/mind_gym_lessons/mind_gym_lessons1.dart';
import 'package:day_one_coaching/screens/night_assessment/night_assessment_screen.dart';
import 'package:day_one_coaching/screens/notepad/notepad_screen.dart';
import 'package:day_one_coaching/screens/notepad/notepad_screen2.dart';
import 'package:day_one_coaching/screens/notepad/notepad_screen3.dart';
import 'package:day_one_coaching/screens/onboarding/onboarding_screen.dart';
import 'package:day_one_coaching/screens/profile/profile_screen.dart';
import 'package:day_one_coaching/screens/signup/cubit/signup_cubit.dart';
import 'package:day_one_coaching/screens/splash/splash_screen.dart';
import 'package:day_one_coaching/screens/statistics/statistic_screen.dart';
import 'package:day_one_coaching/screens/weekly_statistics/weekly_statistic_screen2.dart';
import 'package:day_one_coaching/screens/weekly_statistics/weekly_statistics_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter/material.dart';

import 'model/shared_preferences_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencyInjection();
  runApp(const MyApp());
}

Future<void> initDependencyInjection() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferencesModel>(
      SharedPreferencesModel(sharedPreferences));
}

final getIt = GetIt.instance;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
            create: (BuildContext context) => LoginCubit()),
        BlocProvider<SignupCubit>(
            create: (BuildContext context) => SignupCubit()),
        BlocProvider<ForgotCubit>(
            create: (BuildContext context) => ForgotCubit()),
        BlocProvider<BottomNavCubit>(
            create: (BuildContext context) => BottomNavCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
