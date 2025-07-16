import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

class TopExperts extends StatefulWidget {
  const TopExperts({super.key});

  @override
  State<TopExperts> createState() => _TopExpertsState();
}

class _TopExpertsState extends State<TopExperts> {
  TextEditingController serachController = TextEditingController();
  int isSelected = 2;

  double getWidth(BuildContext context, double value) {
    return MediaQuery.of(context).size.width * (value / 375); // base width: 375
  }

  double getHeight(BuildContext context, double value) {
    return MediaQuery.of(context).size.height *
        (value / 812); // base height: 812
  }

  @override
  Widget build(BuildContext context) {
    // Experts Data
    List<String> expertsImage = [
      'assets/experts_image1.png',
      'assets/experts_image2.png',
    ];
    List<String> expertsTitle = ['Alexander Becker', 'Michael Mettler'];
    List<String> expertsSubTitle = [
      'I will give an Excellent service!\n Quick, efficient, and very\n professional.',
      'I will give an Excellent service!\n Quick, efficient, and very\n professional.',
    ];

    // Services Data
    List<String> servicesImage = [
      'assets/services_image1.png',
      'assets/services_image2.png',
      'assets/services_image3.png',
    ];
    List<String> servicesTitle = [
      'Safe 25% tax',
      'Finding good employees',
      'AI Agents do your work'
    ];
    List<String> servicesSubTitle = [
      'I will give an Excellent service!\n Quick, efficient, and very\n professional.',
      'I will give an Excellent service!\n Quick, efficient, and very\n professional.',
      'I will give an Excellent service!\n Quick, efficient, and very\n professional.',
    ];

    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          radius: getWidth(context, 25),
          backgroundImage: AssetImage('assets/robot.png'),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: ArrowBackIcon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.arrow_back_outlined,
        ),
        title: CustomTextField(
          hintText: 'Search',
          controller: serachController,
          prefixIcon: Icons.search,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(context, 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                filterButton(context, 'All', 1),
                filterButton(context, 'Experts', 2),
                filterButton(context, 'Services', 3),
                filterButton(context, 'Videos', 4),
                filterButton(context, 'References', 5),
              ],
            ),
            SizedBox(height: getHeight(context, 20)),

            // Experts Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(context, 15)),
              child: CustomText(
                label: 'Experts',
                size: TextSize.medium,
                weight: FontWeight.w600,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: getHeight(context, 10)),
            ListView.builder(
              itemCount: expertsTitle.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return listCard(
                  context,
                  imagePath: expertsImage[index],
                  title: expertsTitle[index],
                  subtitle: expertsSubTitle[index],
                );
              },
            ),

            // Services Section
            SizedBox(height: getHeight(context, 20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(context, 15)),
              child: CustomText(
                label: 'Services',
                size: TextSize.medium,
                weight: FontWeight.w600,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: getHeight(context, 10)),
            ListView.builder(
              itemCount: servicesTitle.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return listCard(
                  context,
                  imagePath: servicesImage[index],
                  title: servicesTitle[index],
                  subtitle: servicesSubTitle[index],
                );
              },
            ),
            SizedBox(height: getHeight(context, 20)),
          ],
        ),
      ),
    );
  }

  // Filter button
  Widget filterButton(BuildContext context, String title, int id) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = id;
        });
      },
      child: Container(
        height: getHeight(context, 26),
        padding: EdgeInsets.symmetric(horizontal: getWidth(context, 12)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isSelected == id
              ? const Color(0xFF003366)
              : const Color(0xFFD9D9D9),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.jost(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isSelected == id ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  // Reusable List Card Widget
  Widget listCard(
    BuildContext context, {
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getWidth(context, 15),
        vertical: getHeight(context, 8),
      ),
      child: Container(
        padding: EdgeInsets.all(getWidth(context, 10)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: getHeight(context, 80),
              width: getWidth(context, 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: getWidth(context, 12)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.jost(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: getHeight(context, 4)),
                  Text(
                    subtitle,
                    style: GoogleFonts.jost(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
