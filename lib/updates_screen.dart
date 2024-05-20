import 'package:chat_app/settings_screen.dart';
import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

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
              Padding(padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.camera_alt_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 5),
                child: Icon(Icons.search_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                onSelected: (selected){
                  if(selected == 5){
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
                    child: Text("Business tools",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
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
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Status",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),),
                    // PopupMenuButton(
                    //   position: PopupMenuPosition.under,
                    //   onSelected: (selected){
                    //     if(selected == 9){
                    //       Navigator.push(
                    //           context, MaterialPageRoute(
                    //         builder: (context)=> SettingsScreen(),
                    //       ));
                    //     }
                    //   },
                    //   elevation: 10,
                    //   iconSize: 28,
                    //   iconColor: Colors.black,
                    //   itemBuilder: (context) => [
                    //     PopupMenuItem(
                    //       value: 1,
                    //       child: Text("Status privacy",
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //     ),
                    //     PopupMenuItem(
                    //       value: 2,
                    //       child: Text("Status archive settings",
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w500,
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey,width: 3),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("assets/img2.jpg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My status",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Yesterday,10:05am",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Recent Updates",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              // for sample data
              for(int i = 2; i < 4; i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Color(0xFF1DA75E),width: 3)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset("assets/img$i.jpg",
                            height: 55,
                              width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sarah",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text("Today, 10:30pm",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Viewed Updates",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
              // for sample data
              for(int i = 2; i < 4; i++)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(1.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.grey,width: 3)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset("assets/img$i.jpg",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Blossom",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text("40 minutes ago",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: (){},
            mini: true,
            backgroundColor: Color(0xFFF1F2F6),
            child: Icon(Icons.edit,color: Colors.black54,size: 28,
            ),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFF1DA75E),
            child: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 28,
            ),
          ),
        ],
      ),
        );
  }
}
