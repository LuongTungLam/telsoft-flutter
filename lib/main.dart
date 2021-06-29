import 'package:flutter/material.dart';
import 'package:telsoft_flutter/screens/home.dart';
import 'package:telsoft_flutter/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
