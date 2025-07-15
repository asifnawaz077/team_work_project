import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_2.dart';
import 'package:team_work_project/View/profile_solvers_view/profile_solver_5.dart';

import '../../Controller/text_comp/text_component.dart';

class ProfileSolver4 extends StatefulWidget {
  const ProfileSolver4({super.key});

  @override
  State<ProfileSolver4> createState() => _ProfileSolver4State();
}

class _ProfileSolver4State extends State<ProfileSolver4> {
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
                        size: 14,
                        weight: FontWeight.w600,
                        fontType: GoogleFonts.jost,
                        color: Color(0XFF544C4C),
                      ),
                      CustomText(
                        label: '    @alexalex',
                        size: 16,
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
                            Icons.star,
                            color: Color(0xffFFE000),
                          ),
                          CustomText(
                            label: ' 4.5',
                            size: 16,
                            weight: FontWeight.w600,
                            fontType: GoogleFonts.jost,
                            color: Color(0xff544C4C),
                          ),
                          CustomText(
                            label: ' (28)',
                            size: 10,
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
                        size: 14,
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
                Container(
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
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,
                        color: Colors.white,
                      )
                    ],
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
                    size: 16,
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
                  size: 14,
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
                    size: 14,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xffC0C0C0),
                  ),
                  CustomText(
                    label: 'Services',
                    size: 14,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xffC0C0C0),
                  ),
                  CustomText(
                    label: 'References',
                    size: 14,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff003366),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSolver5()));
                    },
                    child: CustomText(
                      label: 'Reviews',
                      size: 14,
                      weight: FontWeight.w400,
                      fontType: GoogleFonts.jost,
                      color: Color(0xffC0C0C0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 183,
                  ),
                  Container(
                    height: 4,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff003366)),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/pf8.jpg',width: 150,height: 150,fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 13,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        CustomText(label: 'Rural Metro Fire', size: 15, weight: FontWeight.w600, fontType:GoogleFonts.jost),
                        SizedBox(height: 6,),
                        CustomText(label: 'Protect thousands of\n'
                            'people. In this case study\n'
                            'you will...more', size: 14, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff000000),)
                      ],
                    ))
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 94,
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/pf9.jpg',width: 150,height: 150,fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 13,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        CustomText(label: 'Barmer', size: 15, weight: FontWeight.w600, fontType:GoogleFonts.jost),
                        SizedBox(height: 6,),
                        CustomText(label: 'Safed 100k in bill. In this\n'
                            'case study you^ll see\n'
                            'how...more', size: 14, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff000000),)
                      ],
                    ))
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 94,
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      )
                    ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('assets/pf10.jpg',width: 150,height: 150,fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 13,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        CustomText(label: 'Solvbox', size: 15, weight: FontWeight.w600, fontType:GoogleFonts.jost),
                        SizedBox(height: 6,),
                        CustomText(label: 'Safed 100k in tax. In this\n'
                            'case study you^ll see\n'
                            'how...more', size: 14, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff000000),)
                      ],
                    ))
                  ],
                ),
              )

            ]))
    );
  }
}
