import 'package:blood_clg/admin/admin_dashboard.dart';
import 'package:blood_clg/common.dart';
import 'package:blood_clg/forget_password_screen.dart';
import 'package:blood_clg/signin_screen.dart';
import 'package:blood_clg/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String adminuser;

  const LoginScreen({super.key, required this.adminuser});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    widget.adminuser == "1" ? "ADMIN IN" : "SIGN IN",
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              if (widget.adminuser == "2")
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      "Forgot Password ?",
                      style: CommonStyles.black13(),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgetPasswordScreen()));
                    },
                  ),
                ),
              SizedBox(
                height: widget.adminuser == "2" ? 80 : 100,
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (userTextEditingController.text ==
                                      'admin@gmail.com' &&
                                  passwordTextEditingController.text ==
                                      'admin' ||
                              userTextEditingController.text ==
                                      'user@gmail.com' &&
                                  passwordTextEditingController.text ==
                                      '123456') {
                            if (userTextEditingController.text ==
                                    'admin@gmail.com' &&
                                passwordTextEditingController.text == 'admin') {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => AdminDashBoard()));
                            }
                            if (userTextEditingController.text ==
                                    'user@gmail.com' &&
                                passwordTextEditingController.text ==
                                    '123456') {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WelcomScreen(user: userTextEditingController.text)));
                            }
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
              if (widget.adminuser == "2")
                Column(
                  children: [
                    TextButton(
                      child: Text(
                        "Don't have an Account ? Sign Up",
                        style: CommonStyles.black13(),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SigninScreen()));
                      },
                    ),
                  ],
                )
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
