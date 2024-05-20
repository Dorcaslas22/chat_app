import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        backgroundColor: Colors.grey.shade500,
        title: Text("Settings",
          style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.symmetric(vertical: 12),
            child: Icon(Icons.search_outlined,size: 30,color: Colors.white,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/img5.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Emmanuel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("Hey there! I am using WhatsApp",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.qr_code,
                      size: 28,
                      color: Color(0xFF1DA75E),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.add_business_outlined),
                ),
                title: Text("Business tools",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Profile,catalog,messaging tools",
                  style: TextStyle(
                    fontSize: 14
                ),
                ),
              ),
              Divider(
                indent: 50,
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key_outlined),
                ),
                title: Text("Account",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Security notifications,change number",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.lock_outline),
                ),
                title: Text("Privacy",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Block contacts,disappearing message",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.emoji_people_outlined),
                ),
                title: Text("Avatar",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Create,edit,profile photo",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message_outlined),
                ),
                title: Text("Chats",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Theme,wallpapers,chat history",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications_outlined),
                ),
                title: Text("Notifications",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Message,group and call tones",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.circle_outlined),
                ),
                title: Text("Storage and data",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Network usage,auto-download",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.app_blocking_outlined),
                ),
                title: Text("App language",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("English(device's language)",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.help_outline_outlined),
                ),
                title: Text("Help",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                subtitle:Text("Help center,contact us,privacy policy",
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
              ),
              ListTile(
                leading: Padding(padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.people),
                ),
                title: Text("Invite a contact",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Text("from",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/meta.png",
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 2),
                        Text("Meta",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

