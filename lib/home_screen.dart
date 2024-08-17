import 'package:chat_messaging_app/ChatScreen.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  List<String> images = [
    "https://images.unsplash.com/photo-1502764613149-7f1d229e230f",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
    "https://images.unsplash.com/photo-1524253482453-3fed8d2fe12b",
    "https://images.unsplash.com/photo-1502764613149-7f1d229e230f",
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e",
    "https://images.unsplash.com/photo-1524253482453-3fed8d2fe12b",
  ];

  List<String> names = [
    "Anastasia",
    "Daria",
    "Ekaterina",
    "Irina",
    "Marina",
    "Svetlana",
  ];

  List<String> msgTiming = ["Mon", "12:20", "Sun", "22:20", "05:23", "Wed"];

  List<String> msgs = [
    "Hi,How Are You?",
    "Where are You?",
    "Hello Dear,is all right?",
    "It is nice to meet you.",
    "I want to meet you",
    "Bye",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Text(
                        "Messages",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Colors.black87),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 120),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              size: 30,
                            )),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Recent",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 18,
                      color: Colors.black54),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(images[index]),
                              minRadius: 35,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                names[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatScreen(),
                              ));
                        },
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.network(
                            images[index],
                            width: 60, // Adjust width as needed
                            height: 60, // Adjust height as needed
                            fit: BoxFit
                                .cover, // Adjust the BoxFit as per your requirement
                          ),
                        ),
                        title: Text(
                          names[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                              fontSize: 17,
                              color: Colors.black54),
                        ),
                        subtitle: Text(msgs[index]),
                        trailing: Text(
                          msgTiming[index],
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
