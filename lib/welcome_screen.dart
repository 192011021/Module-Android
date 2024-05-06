import 'package:blood_clg/admin/admin_dashboard.dart';
import 'package:blood_clg/common.dart';
import 'package:blood_clg/user/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatefulWidget {
  final String user;

  const WelcomScreen({super.key, required this.user});

  @override
  State<WelcomScreen> createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/images/bl1.png")),
              ],
            ),
            Column(
              children: [
                Text(
                  "Welcome, ${widget.user} ",
                  style: CommonStyles.blackS18(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Make Your Self Comfertable with us !!!",
                  style: CommonStyles.black11(),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {


                 Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child:
                      Text("Next", style: CommonStyles.whiteText18BoldW500()),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.blue))))),
          ],
        ),
      ),
    );
  }
}
