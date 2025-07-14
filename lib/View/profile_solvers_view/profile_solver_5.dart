import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/text_comp/text_component.dart';

class ProfileSolver5 extends StatefulWidget {
  const ProfileSolver5({super.key});

  @override
  State<ProfileSolver5> createState() => _ProfileSolver5State();
}

class _ProfileSolver5State extends State<ProfileSolver5> {
  int seletedindex=4;
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
                  label: 'Profile', icon: Icon(Icons.perm_identity_rounded)),
            ]),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color(0xff003366),
          onPressed: () {},
          child: CircleAvatar(
            backgroundColor: Color(0xff003366),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
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
                width: 94,
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
            height: 25,
          ),
            Center(
              child: Container(
                height: 50,
                width: 298,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffF0F0F0)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Icon(Icons.star, color: Color(0xffFFB543)),
                    Icon(Icons.star, color: Color(0xffFFB543)),
                    Icon(Icons.star, color: Color(0xffFFB543)),
                    Icon(Icons.star, color: Color(0xffFFB543)),
                    Icon(
                      Icons.star,
                      color: Color(0xffC5C5C5),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    CustomText(
                      label: '21 Reviews',
                      size: 18,
                      weight: FontWeight.w400,
                      fontType: GoogleFonts.jost,
                      color: Color(0xff7A7A7A),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 30, backgroundImage: AssetImage('assets/person2.jpg')),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                                label: 'Sascha',
                                size: 15,
                                weight: FontWeight.w500,
                                fontType: GoogleFonts.jost),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffC5C5C5),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(children: [
                          CustomText(
                            label: '4 days ago',
                            size: 10,
                            weight: FontWeight.w400,
                            fontType: GoogleFonts.jost,
                            color: Color(0xff414042),
                          )
                        ]),
                        SizedBox(height: 8),
                        CustomText(
                          label:
                          "Amazing experience! The team was friendly, prompt, and delivered beyond expectations. Will definitely return!",
                          size: 12,
                          weight: FontWeight.w400,
                          fontType: GoogleFonts.jost,
                          color: Color(0xff7A7A7A),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 35,),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 30, backgroundImage: AssetImage('assets/person3.jpg')),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                                label: 'Adil',
                                size: 15,
                                weight: FontWeight.w500,
                                fontType: GoogleFonts.jost),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFFB543),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(children: [
                          CustomText(
                            label: '9 days ago',
                            size: 10,
                            weight: FontWeight.w400,
                            fontType: GoogleFonts.jost,
                            color: Color(0xff414042),
                          )
                        ]),
                        SizedBox(height: 8),
                        CustomText(
                          label:
                          "Excellent service! Quick, efficient and very profession. Highly recommended for anyone seeking quality and reliability",
                          size: 12,
                          weight: FontWeight.w400,
                          fontType: GoogleFonts.jost,
                          color: Color(0xff7A7A7A),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 35,),
            Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                        radius: 30, backgroundImage: AssetImage('assets/person4.jpg')),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                  label: 'Jonas',
                                  size: 15,
                                  weight: FontWeight.w500,
                                  fontType: GoogleFonts.jost),
                              Spacer(),
                              Icon(
                                Icons.star,
                                color: Color(0xffFFB543),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFFB543),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFFB543),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffFFB543),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xffC5C5C5),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(children: [
                            CustomText(
                              label: '1 month ago',
                              size: 10,
                              weight: FontWeight.w400,
                              fontType: GoogleFonts.jost,
                              color: Color(0xff414042),
                            )
                          ]),
                          SizedBox(height: 8),
                          CustomText(
                            label:
                            "Top-notch service with great attention  to detail. Everything was handled perfectly--couldnt ask for more!",
                            size: 12,
                            weight: FontWeight.w400,
                            fontType: GoogleFonts.jost,
                            color: Color(0xff7A7A7A),
                          )
                        ],
                      ),
                    )
                  ],
                ),
            )])));
  }
}
