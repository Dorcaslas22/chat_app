
import 'package:chat_app/settings_screen.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  List images = [
    "assets/img1.jpg",
    "assets/img2.jpg",
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img5.jpg",
    "assets/img3.jpg",
  ];

  List names = [
    "Emmanuel",
    "Dorcaslas",
    "Yusuf",
    "Ux Foundry",
    "All state vendors",
    "Almark",
  ];

  List msgTiming = [
    "Yesterday",
    "12:15PM",
    "14/05/2024",
    "05:10AM",
    "Today",
    "Just now",
  ];

  List msg =[
    "Hi, How are you",
    "Is Bokoto Available",
    "How much is the price",
    "I want to register",
    "75,000, including delivery fee",
    "Send Account details",
  ];

  List msgRead = [
    true,
    true,
    false,
    true,
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: Text("WA Business",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.camera_alt_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
          SizedBox(width: 15),
          Padding(
            padding: EdgeInsets.only( right: 15),
            child: Icon(Icons.search_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
              onSelected: (selected){
                if(selected == 9){
                  Navigator.push(
                      context, MaterialPageRoute(
                    builder: (context)=> SettingsScreen(),
                  ));
                }
              },
            elevation: 10,
            iconSize: 28,
            iconColor: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                  child: Text("Advertise",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Business tools",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("New group",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Text("New broadcast",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 5,
                child: Text("Communities",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 6,
                child: Text("Labels",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 7,
                child: Text("Linked devices",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 8,
                child: Text("Starred messages",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              PopupMenuItem(
                value: 9,
                child: Text("Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15,left: 10,right: 10,top: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF6F5F3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  prefixIcon: Icon(Icons.search),
                  hintText:"Search...",
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [
                  Icon(Icons.archive_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Text("Archived", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  Spacer(),
                  Text("39", style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1DA75E)
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                return Padding(padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                        builder: (context)=> ChatScreen(),
                      ));
                    },
                    leading: CircleAvatar(
                      maxRadius: 28,
                      backgroundImage: AssetImage(
                          images[index],),
                    ),
                    title: Text(names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(msg[index],
                      style: TextStyle(
                        color: Color(0xFF636F75),
                      ),
                    ),
                    trailing: msgRead[index] ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(msgTiming[index],
                          style: TextStyle(
                            color:Color(0xFF1DA75E),
                            fontSize: 14
                          ),
                        ),
                        SizedBox(height: 6),
                        Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color:Color(0xFF1DA75E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text("5",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ],
                      )
                        :Text(msgTiming[index],
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    )
                  ),
                );
                },
            ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        backgroundColor: Color(0xFF1DA75E),
        child: Center(
          child: Image.asset("assets/send.jpg"),
        ),
      ),
    );
  }
}
