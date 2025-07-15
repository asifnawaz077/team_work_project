import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

class ProfileSeeker4 extends StatefulWidget {
  const ProfileSeeker4({super.key});

  @override
  State<ProfileSeeker4> createState() => _ProfileSeeker4State();
}

class _ProfileSeeker4State extends State<ProfileSeeker4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CustomText(label: 'Edit', size:TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Center(
               child: CircleAvatar(
                 radius: 70,
                backgroundImage: AssetImage('assets/person.jpg'),
                         ),
             ),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Full Name', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
               width: 343,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Alexander schee',
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'User Name', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: '@alexanderscschee',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Email', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'alexalexander@gmail.com',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Description', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
                height: 90,
                width: 343,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: CustomText(label: 'I provide tailored solution to help you overcome\n'
                    'challenges and achieve your goals. My service include\n'
                    'problem-solving, process optimization, and strategic\n'
                    'support all delivered with a focus on quality and results\n'
                    'Lets work together to create an impactful outcomes',
                  size: TextSize.small,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff544C4C),
                )
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Location', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Germany',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Industry', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Designing',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Company Name', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Solvbox',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Phone Number', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: '001 123 4567',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                CustomText(label: 'Website', size: TextSize.medium, weight: FontWeight.w600, fontType: GoogleFonts.jost,color: Colors.black,),
              ],
            ),
            SizedBox(height: 7,),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              width: 343,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all()
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'www.solvbox.com',
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 70,),
            BlueButtonWidget(onPressed: (){}, text: 'Save'),
            Container(
              height: 20,
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
