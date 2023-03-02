import 'package:flutter/material.dart';
import 'Input_Page.dart';

// const activeColor = Color(0xFF1D1E33);
// const inactiveColor = Color(0xFF111328);

void main() {
  runApp(const BMICal());
}

class BMICal extends StatelessWidget {
  const BMICal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(color: Colors.pinkAccent),
      ),
      home: const InputPage(),
    );
  }
}
