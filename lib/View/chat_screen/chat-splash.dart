import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-1.dart';

class ChatSplash extends StatefulWidget {

   ChatSplash({super.key,});

  @override
  State<ChatSplash> createState() => _ChatSplashState();
}

class _ChatSplashState extends State<ChatSplash> {
  int seletedindex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 160,),
          Center(
            child: Image.asset('assets/chatsplash.png',color: Colors.black,),
          ),
          SizedBox(height: 12,),
          CustomText(label: 'SolvboxAI', size: 18, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Color(0xff000000),),
          SizedBox(height: 60,),
          CustomText(label: 'C  o  m  i  n  g     S  o  o  n ', size: 16, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Color(0xff000000),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            seletedindex=index;
            setState(() {});
          },
          unselectedItemColor: Color(0xffC0C0C0),
          selectedItemColor: Color(0xff003366),
          currentIndex: seletedindex,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'SolvboxAI', icon: Icon(Icons.lightbulb)),
            BottomNavigationBarItem(label: 'Chats', icon: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen1()));
            }, icon: Icon(Icons.chat))),
            BottomNavigationBarItem(
                label: 'LodeMo', icon: Icon(Icons.lightbulb_rounded)),
            BottomNavigationBarItem(
                label: 'Profile',
                icon:
                Icon(Icons.perm_identity_rounded))]),
    );
  }
}
