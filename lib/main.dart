import 'package:dribble_design/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your ap
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dribble Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Karla',
      ),
      home: const WelcomePage(),
    );
  }
}
