import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_4.dart';

import '../../Controller/textformfield/textform_field.dart';

class ProfileSeeker3 extends StatefulWidget {
  ProfileSeeker3({
    super.key,
  });

  @override
  State<ProfileSeeker3> createState() => _ProfileSeeker3State();
}

class _ProfileSeeker3State extends State<ProfileSeeker3> {
  int seletedindex = 4;
  bool option1 = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
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
<<<<<<< Updated upstream
<<<<<<< Updated upstream
                label: 'SolvboxAI', icon: Icon(Icons.hourglass_empty_sharp)),
=======
                label: 'SolvboxAI', icon: Icon(Icons.lightbulb)),
>>>>>>> Stashed changes
=======
                label: 'SolvboxAI', icon: Icon(Icons.lightbulb)),
>>>>>>> Stashed changes
            BottomNavigationBarItem(label: 'Chats', icon: Icon(Icons.chat)),
            BottomNavigationBarItem(
                label: 'LodeMo', icon: Icon(Icons.lightbulb_rounded)),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileSeeker4()));
                    },
                    child: Icon(Icons.perm_identity_rounded))),
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: CustomText(
                  label: 'Chose Ratings',
                  size: 16,
                  weight: FontWeight.w600,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 122,
                  ),
                  Icon(Icons.star, color: Color(0xffFFB543)),
                  Icon(Icons.star, color: Color(0xffFFB543)),
                  Icon(Icons.star, color: Color(0xffFFB543)),
                  Icon(Icons.star, color: Color(0xffFFB543)),
                  Icon(
                    Icons.star,
                    color: Color(0xffC5C5C5),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomText(
                    label: 'Full Name',
                    size: 16,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                hintText: 'Alexander Scheer',
                controller: _nameController,
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomText(
                    label: 'Email',
                    size: 16,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                hintText: 'alexalexander@gmail.com',
                controller: _emailController,
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomText(
                    label: 'How was your experience?',
                    size: 16,
                    weight: FontWeight.w600,
                    fontType: GoogleFonts.jost,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Step 2: Box jisme text likha hai
              Container(
                  height: 68,
                  width: 343,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CustomText(
                    label:
                        'Amazing experience! The team was friendly, prompt, and delivered beyond expectations. Will definitely return!',
                    size: 12,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff7A7A7A),
                  )),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                      value: option1,
                      onChanged: ((value) {
                        option1 = value!;
                        setState(() {});
                      })),
                  CustomText(
                    label:
                        'I confirm that the review is honest and based on a\n'
                        'collaboration',
                    size: 12,
                    weight: FontWeight.w400,
                    fontType: GoogleFonts.jost,
                    color: Color(0xff7A7A7A),
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              BlueButtonWidget(onPressed: () {}, text: 'Upload')
            ],
          ),
        ),
      ),
    );
  }
}
