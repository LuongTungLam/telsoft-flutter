import 'package:flutter/material.dart';
import 'package:telsoft_flutter/screens/login.dart';
import 'package:telsoft_flutter/screens/utils/widget/button_socical.dart';
import 'package:telsoft_flutter/screens/utils/widget/divider_app.dart';
import 'package:telsoft_flutter/screens/utils/widget/text_field_app.dart';
import 'package:telsoft_flutter/screens/utils/widget/text_field_icon.dart';

class Signup extends StatefulWidget {
  static const routeNmae = "/signup";
  const Signup({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SignupState();
}

class SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset('assets/images/bgappbar.png'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 18,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    child: textFieldApp(
                        label: "Full name",
                        placeholder: "Your name",
                        value: "")),
                Container(
                    child: textFieldApp(
                        label: "E-mail",
                        placeholder: "Your email or phone",
                        value: "")),
                Container(
                  child: textFieldIcon(
                      label: "Password",
                      placeholder: "Password",
                      value: "",
                      icon: Icon(Icons.remove_red_eye)),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.orange),
                        ),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.orange.shade800),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign Up".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.orange[800]),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: dividerApp(text: "Sign in with")),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                            height: 60,
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            // padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: buttonSocical(
                                text: "Facebook",
                                image: "assets/icons/fb.png")),
                      ),
                      Expanded(
                        child: Container(
                          height: 60,
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                              height: 60,
                              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: buttonSocical(
                                  text: "Google",
                                  image: "assets/icons/gg.png")),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
