import 'package:chat_messaging_app/home_screen.dart';
import 'package:chat_messaging_app/welcome_screen.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomeScreem() ,
    );
  }
}
