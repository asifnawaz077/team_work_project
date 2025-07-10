import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';

class ProfileSeeker1 extends StatefulWidget {
  const ProfileSeeker1({super.key});

  @override
  State<ProfileSeeker1> createState() => _ProfileSeeker1State();
}

class _ProfileSeeker1State extends State<ProfileSeeker1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/Apple.png'),
                ),
                Column(
                  children: [
                    CustomText(
                      label: 'Alexander Scheer',
                      size: 14,
                      weight: FontWeight.w600,
                      fontType: GoogleFonts.jost,
                      color: Color(0XFF544C4C),
                    ),
                    CustomText(
                      label: '@alexalex',
                      size: 16,
                      weight: FontWeight.w400,
                      fontType: GoogleFonts.jost,
                      color: Color(0xff544C4C),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        CustomText(
                            label: ' 4.5',
                            size: 16,
                            weight: FontWeight.w600,
                            fontType: GoogleFonts.jost),
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
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                CustomText(
                  label: 'Description',
                  size: 16,
                  weight: FontWeight.w500,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff003366),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                CustomText(
                  label:
                      'I provide tailored solutions to help you overcome challenges\n'
                      'and achieve your goals.My services include problem-\n'
                      'solving, process optimization, and strategic support, all\n'
                      'delivered with a focus on quality and results. Lets work\n'
                      'together to create impactful outcomes!',
                  size: 13,
                  weight: FontWeight.w400,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff544C4C),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  label: 'User Details',
                  size: 14,
                  weight: FontWeight.w600,
                  fontType: GoogleFonts.jost,
                  color: Color(0xff003366),
                ),
                InkWell(
                    onTap: (){},
                    child: CustomText(label: 'Reviews', size: 14, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xffC0C0C0),))
              ],
            ),
            SizedBox(height: 18,),
            Row(
              children: [
                SizedBox(width: 69,),
                Container(height: 4.0,width: 104,decoration: BoxDecoration(
                    color: Color(0xff003366),
                  borderRadius: BorderRadius.circular(2)
                ),),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded)),
                 SizedBox(width: 95,),
                 CustomText(label: 'User Details', size: 16, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
