import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Controller/text_comp/text_component.dart';

class ajay extends StatefulWidget {
  const ajay({super.key});

  @override
  State<ajay> createState() => _ajayState();
}

class _ajayState extends State<ajay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        CustomText(label: 'WELCOME', size: TextSize.large, weight: FontWeight.bold, fontType: GoogleFonts.jost)

    );
  }
}
