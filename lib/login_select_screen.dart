import 'package:blood_clg/common.dart';
import 'package:blood_clg/login_screen.dart';
import 'package:blood_clg/signin_screen.dart';
import 'package:flutter/material.dart';

class LoginSelectionScreen extends StatefulWidget {
  const LoginSelectionScreen({super.key});

  @override
  State<LoginSelectionScreen> createState() => _LoginSelectionScreenState();
}

class _LoginSelectionScreenState extends State<LoginSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.redAccent.shade100,
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        height: 230,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(
                          adminuser: "1",
                        )));
              },
              child: Card(
                elevation: 20,
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.blue.shade800)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Admin in",
                        style: CommonStyles.whiteText13BoldW500(),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.black,
                            size: 25,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(
                          adminuser: "2",
                        )));
              },
              child: Card(
                elevation: 20,
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.blue.shade800)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sign in",
                        style: CommonStyles.black13(),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_alt,
                            color: Colors.black,
                            size: 25,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/bl1.png")),
            SizedBox(
              height: 20,
            ),
            Text(
              "Blood Bank and Donation",
              style: CommonStyles.redText20BoldW500(),
            ),
          ],
        ),
      ),
    );
  }
}
