import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/text_comp/text_component.dart';

class ProfileSolver6 extends StatefulWidget {
  const ProfileSolver6({super.key});

  @override
  State<ProfileSolver6> createState() => _ProfileSolver6State();
}

class _ProfileSolver6State extends State<ProfileSolver6> {
  int seletedindex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      bottomSheet: BottomSheet(onClosing: (){}, builder:(context){
        return Container(
          padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border(
        top: BorderSide(color: Colors.grey.shade300),
        ),),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 2,),
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close_rounded)),
                  SizedBox(width: 85,),
                  CustomText(
                    label: 'User Details',
                    size: 16,
                    weight: FontWeight.w500,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff000E08),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.account_balance,
                        color: Color(0xff003366),
                      ),
                      title: CustomText(
                        label: 'Company Name',
                        size: 14,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                        color: Color(0xff000E08),
                      ),
                      subtitle: CustomText(
                        label: 'Solvbox',
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,color: Color(0xff9794AA),),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.business,
                        color: Color(0xff003366),
                      ),
                      title: CustomText(
                        label: 'Industry',
                        size: 14,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                        color: Color(0xff000E08),
                      ),
                      subtitle: CustomText(
                        label: 'Designing',
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,color: Color(0xff9794AA),),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff003366),
                      ),
                      title: CustomText(
                        label: 'Location',
                        size: 14,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                        color: Color(0xff000E08),
                      ),
                      subtitle: CustomText(
                        label: 'Germany',
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,color: Color(0xff9794AA),),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color(0xff003366),
                      ),
                      title: CustomText(
                        label: 'Email',
                        size: 14,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                        color: Color(0xff000E08),
                      ),
                      subtitle: CustomText(
                        label: 'alexalexander@gmail.com',
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,color: Color(0xff9794AA),),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Color(0xff003366),
                      ),
                      title: CustomText(
                        label: 'Phone Number',
                        size: 14,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                        color: Color(0xff000E08),
                      ),
                      subtitle: CustomText(
                        label: '001 123 4567',
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,color: Color(0xff9794AA),),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.language,
                        color: Color(0xff003366),
                      ),
                      title: CustomText(
                        label: 'Website',
                        size: 14,
                        weight: FontWeight.w500,
                        fontType: GoogleFonts.jost,
                        color: Color(0xff000E08),
                      ),
                      subtitle: CustomText(
                        label: 'Solvbox',
                        size: 14,
                        weight: FontWeight.w400,
                        fontType: GoogleFonts.jost,color: Color(0xff9794AA),),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
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
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff003366)),
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
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff003366)),
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
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff003366),
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
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xffC0C0C0),
                  ),
                  CustomText(
                    label: 'Reviews',
                    size: 14,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xffC0C0C0),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 14,
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
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 178,
                    width: 180,
                    child: Image.asset(
                      'assets/pf1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 178,
                    width: 180,
                    child: Image.asset(
                      'assets/pf2.jpg',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
