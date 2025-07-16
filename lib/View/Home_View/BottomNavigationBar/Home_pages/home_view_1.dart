import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';
import 'package:team_work_project/View/Home_View/BottomNavigationBar/Home_pages/top_experts.dart';

class HomeView1 extends StatefulWidget {
  const HomeView1({super.key});

  @override
  State<HomeView1> createState() => _HomeView1State();
}

class _HomeView1State extends State<HomeView1> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Base screen size used in original design
    const baseWidth = 375.0;
    const baseHeight = 812.0;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // scaling factors
    final w = screenWidth / baseWidth;
    final h = screenHeight / baseHeight;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100 * h),
            Center(
              child: CustomText(
                label: 'How can we help?',
                size: TextSize.extralarge,
                weight: FontWeight.w800,
                fontType: GoogleFonts.jost,
              ),
            ),
            SizedBox(height: 10 * h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 * w),
              child: CustomTextField(
                hintText: 'Search',
                controller: searchController,
                prefixIcon: Icons.search,
              ),
            ),
            SizedBox(height: 50 * h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16 * w),
              child: InkWell(
                onTap: () {},
                child: CustomText(
                  label: 'Trending Solution',
                  size: TextSize.medium,
                  weight: FontWeight.w600,
                  fontType: GoogleFonts.jost,
                ),
              ),
            ),
            SizedBox(height: 15 * h),
            SizedBox(
              height: 200 * h,
              child: Padding(
                padding: EdgeInsets.only(left: 20 * w, right: 16 * w),
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
                      padding: EdgeInsets.only(right: 6 * w),
                      child: Column(
                        children: [
                          Container(
                            height: 152 * h,
                            width: 150 * w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12 * w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12 * w),
                              child: Image.asset(
                                imageList[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6 * h),
                          Center(
                            child: CustomText(
                              label: titleList[index],
                              size: TextSize.minismall,
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
              padding: EdgeInsets.symmetric(horizontal: 16 * w),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TopExperts()),
                  );
                },
                child: CustomText(
                  label: 'Top Experts',
                  size: TextSize.medium,
                  weight: FontWeight.w600,
                  fontType: GoogleFonts.jost,
                ),
              ),
            ),
            SizedBox(height: 15 * h),
            SizedBox(
              height: 180 * h,
              child: Padding(
                padding: EdgeInsets.only(left: 20 * w, right: 16 * w),
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
                      padding: EdgeInsets.only(right: 6 * w),
                      child: Column(
                        children: [
                          Container(
                            height: 148 * h,
                            width: 99 * w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12 * w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12 * w),
                              child: Image.asset(
                                expertImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6 * h),
                          Center(
                            child: CustomText(
                              label: expertNames[index],
                              size: TextSize.minismall,
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
