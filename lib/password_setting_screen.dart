import 'package:blood_clg/common.dart';
import 'package:flutter/material.dart';


class ForgetPasswordSetting extends StatefulWidget {
  const ForgetPasswordSetting({super.key});

  @override
  State<ForgetPasswordSetting> createState() => _ForgetPasswordSettingState();
}

class _ForgetPasswordSettingState extends State<ForgetPasswordSetting> {
  final TextEditingController userTextEditingController =
  TextEditingController();
  final TextEditingController passwordTextEditingController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/bl1.png")),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                   "NEW PASSWORD  !!!",
                    style: CommonStyles.black16(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mail_lock_rounded,
                          color: Colors.blue,
                          size: 45,
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: userTextEditingController,
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter New Password !!",
                      labelText: "New Password",
                      labelStyle: CommonStyles.black12(),
                      hintStyle: CommonStyles.black12(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    style: CommonStyles.black12(),
                    controller: passwordTextEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Re-Enter Password",
                      labelText: "Re-Enter Password",
                      labelStyle: CommonStyles.black12(),
                      hintStyle: CommonStyles.black12(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (userTextEditingController.text.isNotEmpty &&
                          passwordTextEditingController.text.isNotEmpty
                          ) {
                            Navigator.pop(context);
                            Navigator.pop(context);
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
                          backgroundColor:
                          MaterialStateProperty.all(Colors.blue),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(color: Colors.blue))))),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),

            ],
          ),
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
        "Password Reset!!!",
        style: CommonStyles.black15(),
      ),
      content: Text(
        "Check your Password !!!...",
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
