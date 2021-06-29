import 'package:flutter/material.dart';
import 'package:telsoft_flutter/screens/home.dart';
import 'package:telsoft_flutter/screens/signup.dart';
import 'package:telsoft_flutter/screens/utils/widget/button_app.dart';
import 'package:telsoft_flutter/screens/utils/widget/button_socical.dart';
import 'package:telsoft_flutter/screens/utils/widget/divider_app.dart';
import 'package:telsoft_flutter/screens/utils/widget/text_field_app.dart';
import 'package:telsoft_flutter/screens/utils/widget/text_field_icon.dart';

class Login extends StatefulWidget {
  static const routeNmae = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset('assets/images/bgappbar.png'),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 18,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
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
                        icon: Icon(Icons.remove_red_eye))),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.orange[800]),
                  ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                  child: appButton(
                    text: "Login".toUpperCase(),
                    action: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Text(
                          "Sign Up",
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
                            child: buttonSocical(
                                text: "Google", image: "assets/icons/gg.png")),
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
