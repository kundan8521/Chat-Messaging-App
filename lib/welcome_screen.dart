import 'package:chat_messaging_app/home_screen.dart';
import 'package:flutter/material.dart';

class welcomeScreem extends StatelessWidget {
  const welcomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/chat.png",
          fit: BoxFit.cover,
          ),
          SizedBox(height: 50,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen(),
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                "Let's Chat",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
