import 'package:chat_app/widgets/chat_samples.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: AppBar(
            backgroundColor: Colors.grey.shade500,
            elevation: 0,
            leading: Padding(padding: EdgeInsets.only(top: 10,left: 5),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                child: Icon(Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            leadingWidth: 20,
            title: Padding(padding: EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset("assets/img1.jpg",
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Emmanuel",
                          style: TextStyle(
                            fontSize:20,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 3),
                        Text("Online",
                          style: TextStyle(
                            fontSize:15,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(padding: EdgeInsets.only(top: 10,right: 25),
                child: Icon(Icons.videocam_outlined,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10,right: 20),
                child: Icon(Icons.call_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                onSelected: (selected){
                  if(selected == 5){
                    // Navigator.push(
                    //     context, MaterialPageRoute(
                    //   builder: (context)=> SettingScreen(),
                    // ));
                  }
                },
                elevation: 10,
                iconSize: 28,
                iconColor: Colors.white,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Label chat",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Add to contacts",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Media,links, and docs",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Search",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text("Mute notification",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 6,
                    child: Text("Disappearing messages",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 7,
                    child: Text("Wallpaper",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 8,
                    child: Text("More",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 9,
                    child: Text("Edit",
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
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 100),
          child: Column(
            children: [
              Container(
                width: 350,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3C2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Text("Messages and calls are end-to-end encryted."
                    "No one outside of this chat,not even whatsApp, "
                    "can read or listen to them. \nTap to learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              ChatSamples(),
              ChatSamples(),
              ChatSamples(),
              ChatSamples()
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(vertical: 2,horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(Icons.emoji_emotions_outlined,
                    color: Colors.black38,size: 30,
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 180,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                Icon(Icons.attach_file_outlined,
                color: Colors.black38,size: 30,
                 ),
                  SizedBox(width: 10),
                  Icon(Icons.camera_alt_outlined,
                    color: Colors.black38,size: 30,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xFF1DA75E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.mic,
                color: Colors.white,size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
