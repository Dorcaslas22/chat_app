import 'package:chat_app/home_screen.dart';
import 'package:chat_app/updates_screen.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages =[
  //   screen1
    HomeScreen(),
  //   screen2
    Container(),
  //   screen3
    UpdatesScreen(),
  //   screen4
    Container(),
  //   screen5
  ];
  void _onItemTapped(int Index){
    setState(() {
     _selectedIndex = Index;
    });
  }
  Widget buildNavBarItem(IconData filledIcon,IconData outlineIcon, String text, int index ){
  return GestureDetector(
    onTap: () => _onItemTapped(index),
    child: Padding(padding: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical:5,horizontal: 25),
            decoration: BoxDecoration(
              color: _selectedIndex == index? Color(0xFFD8FDD2): Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              _selectedIndex == index? filledIcon: outlineIcon,
              size: 28,
              color: _selectedIndex == index? Color(0xFF125E3A): Colors.black54,
            ),
          ),
          SizedBox(height: 8),
          Text(text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: _selectedIndex == index? FontWeight.w900: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border(
              top:BorderSide(
                color: Colors.black,width: 0.4
              ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildNavBarItem(Icons.message, Icons.message_outlined, "Chats", 0),
            buildNavBarItem(Icons.call, Icons.call_outlined, "Calls", 1),
            buildNavBarItem(Icons.update, Icons.update_outlined, "Updates", 2),
            buildNavBarItem(Icons.add_business, Icons.add_business_outlined, "Tools", 3),
          ],
        ),
      ),
    );
  }
}
