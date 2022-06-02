import 'package:flutter/material.dart';
import 'package:theme_extention_sample/components/normal_button.dart';
import 'package:theme_extention_sample/components/square.dart';

import 'theme/theme_extesion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        extensions: const <ThemeExtension<dynamic>>[
          SquareStyle(
            size: 100,
            color: Colors.deepPurple,
            borderRadius: 10,
          ),
          NormalButtonStyle(
            width: 100,
            height: 100,
            title: 'Flutter',
          ),
        ],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Extension Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NormalButton(),
            // Square(),
            // Square(
            //   style: SquareStyle(
            //     color: Colors.green,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
