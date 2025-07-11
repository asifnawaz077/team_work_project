import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

class HomeView1 extends StatefulWidget {
  const HomeView1({super.key});

  @override
  State<HomeView1> createState() => _HomeView1State();
}

class _HomeView1State extends State<HomeView1> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Center(
              child: CustomText(
                label: 'How can we help?',
                size: 20,
                weight: FontWeight.w800,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomTextField(
                hintText: 'Search',
                controller: searchController,
                prefixIcon: Icons.search,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomText(
                label: 'Trending Solution',
                size: 16,
                weight: FontWeight.w600,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 16),
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.48),
                  itemCount: 3,
                  padEnds: false,
                  itemBuilder: (context, index) {
                    final imageList = [
                      'assets/home1_image1.png',
                      'assets/home1_image2.png',
                      'assets/home1_image3.png',
                    ];
                    final titleList = [
                      'Asset protection',
                      'Save taxes',
                      'Growth ideas',
                    ];
                    return Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Column(
                        children: [
                          Container(
                            height: 152,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imageList[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Center(
                            child: CustomText(
                              label: titleList[index],
                              size: 11,
                              weight: FontWeight.w600,
                              fontType: GoogleFonts.jost,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomText(
                label: 'Top Experts',
                size: 16,
                weight: FontWeight.w600,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 180,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 16),
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.32),
                  itemCount: 4,
                  padEnds: false,
                  itemBuilder: (context, index) {
                    final expertImages = [
                      'assets/home1_image4.png',
                      'assets/home1_image5.png',
                      'assets/home1_image6.png',
                      'assets/home1_image7.png',
                    ];
                    final expertNames = [
                      'Martin Anderson',
                      'Thomas Miller',
                      'Simon Bott',
                      'Lukas-Finn Konrath',
                    ];
                    return Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Column(
                        children: [
                          Container(
                            height: 148,
                            width: 99,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                expertImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Center(
                            child: CustomText(
                              label: expertNames[index],
                              size: 11,
                              weight: FontWeight.w600,
                              fontType: GoogleFonts.jost,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
