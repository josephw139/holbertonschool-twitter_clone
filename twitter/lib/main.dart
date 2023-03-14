import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:providers/auth_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<Auth>(create: (_) => Auth()),
      ],
      child: MaterialApp(
        title: 'Twitter Clone',
        home: const SignIn(),
      ),
    );
  }
}
