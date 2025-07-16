import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_2.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_3.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_6.dart';

import '../../Controller/text_comp/text_component.dart';

class ProfileSolver1 extends StatefulWidget {
  const ProfileSolver1({super.key});

  @override
  State<ProfileSolver1> createState() => _ProfileSolver1State();
}

class _ProfileSolver1State extends State<ProfileSolver1> {
  int seletedindex=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              seletedindex=index;
              setState(() {

              });
            },
            unselectedItemColor: Color(0xffC0C0C0),
            selectedItemColor: Color(0xff003366),
            currentIndex: seletedindex,
            items: [
              BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'SolvboxAI',icon: Icon(Icons.hourglass_empty_sharp)),
              BottomNavigationBarItem(label: 'Chats',icon: Icon(Icons.chat)),
              BottomNavigationBarItem(label: 'LodeMo',icon: Icon(Icons.lightbulb_rounded)),
              BottomNavigationBarItem(label: 'Profile',icon: Icon(Icons.perm_identity_rounded)),
            ]),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color(0xff003366),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSolver2()));
          },
          child: CircleAvatar(
          backgroundColor: Color(0xff003366),
          child: Icon(Icons.add,color: Colors.white,),
        ),),
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 70,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
          ),
          Container(
            padding: EdgeInsets.all(2),
            decoration:
                BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/person.jpg'),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                label: 'Alex Alexander',
                size: TextSize.medium,
                weight: FontWeight.w600,
                fontType: GoogleFonts.jost,
                color: Color(0XFF544C4C),
              ),
              CustomText(
                label: '    @alexalex',
                size: TextSize.medium,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost,
                color: Color(0xff544C4C),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Icon(
                    Icons.language,
                    color: Color(0xffFFE000),
                  ),
                  CustomText(
                    label: ' 4.5',
                    size: TextSize.medium,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff544C4C),
                  ),
                  CustomText(
                    label: ' (28)',
                    size: TextSize.small,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xffC0C0C0),
                  )
                ],
              )
            ],
          )
        ],
      ),
      SizedBox(
        height: 50,
      ),
      Row(children: [
        SizedBox(
          width: 50,
        ),
        Container(
          height: 36,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xff003366)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.textsms_outlined,
                color: Colors.white,
              ),
              CustomText(
                label: 'Message',
                size: TextSize.small,
                weight: FontWeight.w400,
                fontType: GoogleFonts.jost,
                color: Colors.white,
              )
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSolver6()));
          },
          child: Container(
            height: 36,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Color(0xff003366)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                CustomText(
                  label: 'User Details',
                  size:TextSize.small,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Icon(Icons.edit, color: Color(0xff000000))
      ]),
      SizedBox(
        height: 30,
      ),
      Row(
        children: [
          SizedBox(
            width: 12,
          ),
          CustomText(
            label: 'More liquidity through office automation',
            size: TextSize.medium,
            weight: FontWeight.w500,
            fontType: GoogleFonts.jost,
            color: Color(0xff003366),
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CustomText(
          label:
              'I provide tailored solutions to help you overcome challenges\n'
              'and achieve your goals. My services include problem-\n'
              'solving, process optimization, and strategic support, all\n'
              'delivered with a focus on quality and results. Lets work\n'
              'together to create impactful outcomes!',
          size: TextSize.small,
          weight: FontWeight.w400,
          fontType: GoogleFonts.jost,
          color: Color(0xff544C4C),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            label: 'Videos',
            size: TextSize.small,
            weight: FontWeight.w600,
            fontType: GoogleFonts.jost,
            color: Color(0xff003366),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSolver3()));
            },
            child: CustomText(
              label: 'Services',
              size: TextSize.small,
              weight: FontWeight.w400,
              fontType: GoogleFonts.jost,
              color: Color(0xffC0C0C0),
            ),
          ),
          CustomText(
            label: 'References',
            size: TextSize.small,
            weight: FontWeight.w400,
            fontType: GoogleFonts.jost,
            color: Color(0xffC0C0C0),
          ),
          CustomText(
            label: 'Reviews',
            size: TextSize.small,
            weight: FontWeight.w400,
            fontType: GoogleFonts.jost,
            color: Color(0xffC0C0C0),
          ),
        ],
      ),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width: 14,),
                  Container(
                    height: 4,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff003366)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 178,
                    width: 180,
                    child: Image.asset('assets/pf1.png',fit: BoxFit.cover,),
                  ),
                  Container(
                    height: 178,
                    width: 180,
                    child: Image.asset('assets/pf2.jpg',fit: BoxFit.cover,),)
                ],
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 178,
                    width: 180,
                    child: Image.asset('assets/pf03.jpg',fit: BoxFit.cover,),
                  ),
                  Container(
                    height: 178,
                    width: 180,
                    child: Image.asset('assets/pf4.jpg',fit: BoxFit.cover,),)
                ],
              ),
    ])));
  }
}
