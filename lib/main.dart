import 'package:flutter/material.dart';
import 'package:safehome/src/ui/washhand.dart';
import 'src/ui/login.dart';
import 'src/services/auth.service.dart';

AuthService appAuth = new AuthService();
Widget _defaultHome = new Login();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Get result of login function.
  // final bool isLogged = await appAuth.isLoggedIn();
  // if (isLogged) {
  //   _defaultHome = new WashHand();
  // }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Home',
      home: _defaultHome,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
