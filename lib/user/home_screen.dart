import 'package:blood_clg/common.dart';
import 'package:blood_clg/user/contact_page.dart';
import 'package:blood_clg/user/home_page.dart';
import 'package:blood_clg/user/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bodyIndex = 0;
  List<Widget> body = [
    const HomePage(),
    const ContactPage(),
    const ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: bodyIndex,
        children: body,
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  buildBody() {
    return body.elementAt(bodyIndex);
  }

  buildBottomNavigationBar() {
    return TitledBottomNavigationBar(
        activeColor: Colors.red,
        inactiveColor: Colors.blue.shade900,
        height: 65,
        currentIndex: bodyIndex,
        onTap: (index) {
          setState(() {
            bodyIndex = index;
          });
        },
        items: [
          TitledNavigationBarItem(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Home'.toUpperCase(),
                  style: CommonStyles.black13(),
                ),
              ],
            ),
            icon: const Icon(Icons.home,

              color: Colors.red,
            ),
          ),
          TitledNavigationBarItem(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.contact_phone),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Contact'.toUpperCase(),
                    style: CommonStyles.black13(),
                  ),
                ],
              ),
              icon: const Icon(Icons.call,
                color: Colors.red,
              )),
          TitledNavigationBarItem(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Profile'.toUpperCase(),
                    style: CommonStyles.black13(),
                  ),
                ],
              ),
              icon: const Icon(Icons.account_circle,
                color: Colors.red,
              )),

        ]);
  }
}
