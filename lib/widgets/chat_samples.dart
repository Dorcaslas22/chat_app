import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSamples extends StatelessWidget {
  const ChatSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(right: 100),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 10),
              color: Colors.white,
              child: Text("Hi Emmanuel, How are you?",style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20,bottom: 15,left: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
              color: Color(0xFFE7FFDB),
              child: Text("Hi manny,I'm fine and you? Thanks for checking on me,",
                style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),),
            ),
          ),
        )
      ],
    );
  }
}
