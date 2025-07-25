import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-2.dart';

class ChatScreen1 extends StatefulWidget {
  const ChatScreen1({super.key});

  @override
  State<ChatScreen1> createState() => _ChatScreen1State();
}

class _ChatScreen1State extends State<ChatScreen1> {
  int seletedindex=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            seletedindex = index;
            setState(() {});
          },
          unselectedItemColor: Color(0xffC0C0C0),
          selectedItemColor: Color(0xff003366),
          currentIndex: seletedindex,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'SolvboxAI', icon: Icon(Icons.lightbulb)),
            BottomNavigationBarItem(label: 'Chats', icon: Icon(Icons.chat)),
            BottomNavigationBarItem(
                label: 'LodeMo', icon: Icon(Icons.lightbulb_rounded)),
            BottomNavigationBarItem(
                label: 'Profile',
                icon:
                Icon(Icons.perm_identity_rounded))]),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 38),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/c1.jpg'),
                ),
                title: CustomText(
                  label: 'Solvbox-Feedback',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'How are you today?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: CustomText(
                  label: '9 min ago',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/c1.jpg'),
                ),
                title: CustomText(
                  label: 'Solvbox - Support',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'How are you today?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: CustomText(
                  label: '2 min ago',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/robot.png'),
                ),
                title: CustomText(
                  label: 'Solvbox - Assistant',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'How are you today?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: CustomText(
                  label: '9 min ago',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Divider(
                color: Color(0xff003366),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/alex c1.png'),
                ),
                title: CustomText(
                  label: 'Alex Linderson',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'How are you today?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: Column(
                  children: [
                    CustomText(
                      label: '2 min ago',
                      size: TextSize.minismall,
                      weight: FontWeight.w400,
                      fontType: GoogleFonts.jost,
                      color: Color(0xff797C7B),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffF04A4C),
                      child: CustomText(
                          label: '3',
                          size: TextSize.minismall,
                          weight: FontWeight.w400,
                          fontType: GoogleFonts.jost,color: Colors.white,),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/team c1.png'),
                ),
                title: CustomText(
                  label: 'Team Align',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'Dont miss to attend the meeting?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: Column(
                  children: [
                    CustomText(
                      label: '2 min ago',
                      size: TextSize.minismall,
                      weight: FontWeight.w400,
                      fontType: GoogleFonts.jost,
                      color: Color(0xff797C7B),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xffF04A4C),
                      child: CustomText(
                          label: '4',
                          size: TextSize.minismall,
                          weight: FontWeight.w400,
                          fontType: GoogleFonts.jost,color: Colors.white,),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/john c1.png'),
                ),
                title: CustomText(
                  label: 'John Ahraham',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'Hey! can you join the meeting?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: CustomText(
                  label: '2 min ago',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/sabila c1.png'),
                ),
                title: CustomText(
                  label: 'Sabila Sayma',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'How are you today?',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: CustomText(
                  label: '2 min ago',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 31,
                  backgroundImage: AssetImage('assets/john borino c1.png'),
                ),
                title: CustomText(
                  label: 'John Borino',
                  size: TextSize.medium,
                  weight: FontWeight.w700,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000E08),
                ),
                subtitle: CustomText(
                  label: 'Have a good day',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
                trailing: CustomText(
                  label: '2 min ago',
                  size: TextSize.minismall,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff797C7B),
                ),
              ),
              SizedBox(height: 13,),
              InkWell(
                onTap: (){
                  context.go('/cs2');
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 31,
                    backgroundImage: AssetImage('assets/person.jpg'),
                  ),
                  title: CustomText(
                    label: 'Tom Schneider',
                    size: TextSize.medium,
                    weight: FontWeight.w700,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff000E08),
                  ),
                  subtitle: CustomText(
                    label: 'Hello Buddy!',
                    size: TextSize.minismall,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff797C7B),
                  ),
                  trailing: CustomText(
                    label: '2 min ago',
                    size: TextSize.minismall,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff797C7B),
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
