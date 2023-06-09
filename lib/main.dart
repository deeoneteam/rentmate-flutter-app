import 'package:flutter/material.dart';
import 'package:rentmate_flutter_app/auth_page.dart';
import 'package:rentmate_flutter_app/entry_pages/entry_point.dart';
import 'package:rentmate_flutter_app/flats_page.dart';
import 'package:rentmate_flutter_app/groups_page.dart';
import 'package:rentmate_flutter_app/home_page.dart';
import 'package:rentmate_flutter_app/login_page.dart';
import 'package:rentmate_flutter_app/my_rents_pages/my_rents_page.dart';
import 'package:rentmate_flutter_app/register_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required SharedPreferences prefs}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  AuthPage(),
    );
  }
}
