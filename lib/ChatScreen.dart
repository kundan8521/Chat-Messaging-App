import 'package:chat_messaging_app/chat_message_item.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 85,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1502764613149-7f1d229e230f'),
                    maxRadius: 28,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jones noa",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Active hours ago",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.grey.shade200,
              child: ListView(
                padding: EdgeInsets.all(15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Today",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ChatMessageItem(
                    isMeChatting: true,
                    messageBody: "Hi,Jones Noa, How Are you?",
                  ),
                  ChatMessageItem(
                    isMeChatting: false,
                    messageBody: "I am fine",
                  ),
                  ChatMessageItem(
                    isMeChatting: false,
                    messageBody:
                        "Congratulation for 10k+ Subscriber on dear Programmer Channel   ",
                  ),
                  ChatMessageItem(
                    isMeChatting: true,
                    messageBody:
                        "Oh thank you very much. I am working on it, so i can make it to 20k0+ subscriber in days. This is my  goal now ",
                  ),
                  ChatMessageItem(
                    isMeChatting: false,
                    messageBody: "Great , It will be very soon ",
                  ),
                  ChatMessageItem(
                    isMeChatting: false,
                    messageBody: "Thanks",
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Container(
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type something...",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[900],
                  ),
                ),
                maxLines: 10,
                minLines: 1,
              ),),
              SizedBox(width: 20,),
              InkWell(
                onTap: (){},
                hoverColor: Colors.white,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.send_rounded,
                    color: Colors.white,
                    size: 25,
                  ),



                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
