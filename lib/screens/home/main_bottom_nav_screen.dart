import 'package:day_one_coaching/screens/activities/activities_screen.dart';
import 'package:day_one_coaching/screens/affirmation/affirmation_screen.dart';
import 'package:day_one_coaching/screens/home/home_screen.dart';
import 'package:day_one_coaching/screens/notepad/notepad_screen.dart';
import 'package:day_one_coaching/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/bottom_nav_cubit.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  List pages = [
    HomeScreen(),
    NotepadScreen(),
    ActivitiesScreen(),
    AffirmationScreen(),
    ProfileScreen()
  ];
  final BottomNavCubit _cubit = BottomNavCubit();
  int currentIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _cubit,
        child: BlocBuilder<BottomNavCubit, int>(
          builder: (context, currentIndex) {
            currentIndexValue = currentIndex; // update currentIndexValue
            return IndexedStack(
              index: currentIndex,
              children: [
                HomeScreen(),
                NotepadScreen(),
                ActivitiesScreen(),
                AffirmationScreen(),
                ProfileScreen(),
              ],
            );
          },
        ),
      ),

      bottomNavigationBar: BlocBuilder<BottomNavCubit, int>(
        builder: (context, currentIndex) {
          return BottomNavigationBar(
            onTap: (currentIndex) {
              _cubit.updateTab(currentIndex);
              setState(() {
                currentIndexValue = currentIndex; // update currentIndexValue
              });
            },
            selectedItemColor: Color(0xffF15B2A),
            unselectedItemColor: Color(0xffADA4A5),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: ImageIcon(
                  AssetImage('assets/images/bottom_icon1.png'),
                  color: currentIndexValue == 0
                      ? Color(0xffF15B2A)
                      : Color(0xffADA4A5),
                ),
              ),
              BottomNavigationBarItem(
                label: "Message",
                icon: ImageIcon(
                  AssetImage('assets/images/bottom_icon2.png'),
                  color: currentIndexValue == 1
                      ? Color(0xffF15B2A)
                      : Color(0xffADA4A5),
                ),
              ),
              BottomNavigationBarItem(
                label: "Setting",
                icon: ImageIcon(
                  AssetImage('assets/images/bottom_icon3.png'),
                  color: currentIndexValue == 2
                      ? Color(0xffF15B2A)
                      : Color(0xffADA4A5),
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: ImageIcon(
                  AssetImage('assets/images/bottom_icon4.png'),
                  color: currentIndexValue == 3
                      ? Color(0xffF15B2A)
                      : Color(0xffADA4A5),
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: ImageIcon(
                  AssetImage('assets/images/bottom_icon5.png'),
                  color: currentIndexValue == 4
                      ? Color(0xffF15B2A)
                      : Color(0xffADA4A5),
                ),
              ),
            ],
          );
        },
      ),

      // bottomNavigationBar: BlocBuilder<BottomNavCubit, int>(
      //   builder: (context, currentIndex) {
      //     return BottomNavigationBar(
      //       onTap: (currentIndex) {
      //         _cubit.updateTab(currentIndex);
      //       },
      //       selectedItemColor: Color(0xffF15B2A),
      //       unselectedItemColor: Color(0xffADA4A5),
      //       showSelectedLabels: false,
      //       showUnselectedLabels: false,
      //       elevation: 0,
      //       currentIndex: currentIndex,
      //       type: BottomNavigationBarType.fixed,
      //       items: [
      //         BottomNavigationBarItem(
      //           label: "Home",
      //           icon: ImageIcon(
      //             AssetImage('assets/images/bottom_icon1.png'),
      //             color:
      //                 currentIndex == 0 ? Color(0xffF15B2A) : Color(0xffADA4A5),
      //           ),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Message",
      //           icon: ImageIcon(
      //             AssetImage('assets/images/bottom_icon2.png'),
      //             color:
      //                 currentIndex == 1 ? Color(0xffF15B2A) : Color(0xffADA4A5),
      //           ),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Setting",
      //           icon: ImageIcon(
      //             AssetImage('assets/images/bottom_icon3.png'),
      //             color:
      //                 currentIndex == 2 ? Color(0xffF15B2A) : Color(0xffADA4A5),
      //           ),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Profile",
      //           icon: ImageIcon(
      //             AssetImage('assets/images/bottom_icon4.png'),
      //             color:
      //                 currentIndex == 3 ? Color(0xffF15B2A) : Color(0xffADA4A5),
      //           ),
      //         ),
      //         BottomNavigationBarItem(
      //           label: "Profile",
      //           icon: ImageIcon(
      //             AssetImage(
      //               'assets/images/bottom_icon5.png',
      //             ),
      //             color:
      //                 currentIndex == 4 ? Color(0xffF15B2A) : Color(0xffADA4A5),
      //           ),
      //         ),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
