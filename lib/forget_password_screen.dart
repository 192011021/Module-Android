import 'package:blood_clg/common.dart';
import 'package:blood_clg/password_setting_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController emailTextEditingController =
      TextEditingController();

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
                  "Forget Your Password ?",
                  style: CommonStyles.black16(),
                ),
                SizedBox(
                  height: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mail_lock_rounded,
                      color: Colors.blue,
                      size: 45,
                    )),
                TextFormField(
                  style: CommonStyles.black12(),
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    labelText: "Email",
                    labelStyle: CommonStyles.black12(),
                    hintStyle: CommonStyles.black12(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Back to Login",
                    style: CommonStyles.black12(),
                  ),
                ),
              ],
            ),
            Column(children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (emailTextEditingController.text.isNotEmpty) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPasswordSetting()));
                      } else {
                        showAlertDialog(context);
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 50),
                    child: Text("Send",
                        style: CommonStyles.whiteText18BoldW500()),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.blue))))),
              SizedBox(
                height: 10,
              ),
            ])
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        "OK",
        style: CommonStyles.green15(),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Password Setting !!!",
        style: CommonStyles.black15(),
      ),
      content: Text(
        "Check your Email ID !!!...",
        style: CommonStyles.black13(),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialogBox(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        "Send",
        style: CommonStyles.green15(),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Forgot Password !!!",
        style: CommonStyles.black15(),
      ),
      content: TextFormField(
        style: CommonStyles.black15(),
        decoration: InputDecoration(
          hintText: "Enter your mail id",
          labelText: "E-Mail ID",
          labelStyle: CommonStyles.black12(),
          hintStyle: CommonStyles.black12(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
        ),
      ),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
