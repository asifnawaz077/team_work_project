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
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: CustomText(
                  label: 'How can we help?',
                  size: 20,
                  weight: FontWeight.w800,
                  fontType: GoogleFonts.jost),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Search',
              controller: searchController,
              prefixIcon: Icons.search,
            ),
          ],
        ),
      ),
    );
  }
}
