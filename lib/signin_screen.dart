import 'package:blood_clg/common.dart';
import 'package:blood_clg/login_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  final TextEditingController userTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();
  final TextEditingController fullNameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
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
                height: 30,
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
                    "SIGN UP",
                    style: CommonStyles.black16(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: userTextEditingController,
                    style: CommonStyles.black12(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      hintText: "User Name",
                      labelText: "User Name",
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
                      hintText: "Password",
                      labelText: "Password",
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
                    controller: fullNameTextEditingController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.edit),
                      hintText: "Full Name",
                      labelText: "Full Name",
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
                    controller: emailTextEditingController,
                    obscureText: true,
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
                ],
              ),
            
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (
                          userTextEditingController.text.isNotEmpty &&
                          passwordTextEditingController.text.isNotEmpty &&
                          fullNameTextEditingController.text.isNotEmpty &&
                          emailTextEditingController.text.isNotEmpty
                          ) {

                          } else {
                            showAlertDialog(context);
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 50),
                        child: Text("Log In",
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
        "Login Credentials !!!",
        style: CommonStyles.black15(),
      ),
      content: Text(
        "Check your User Name and Password !!!...",
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
