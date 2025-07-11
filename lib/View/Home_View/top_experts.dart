import 'package:flutter/material.dart';
import 'package:team_work_project/Controller/icon_buttons/arrow_back_icon.dart';

class TopExperts extends StatefulWidget {
  const TopExperts({super.key});

  @override
  State<TopExperts> createState() => _HomeView1State();
}

class _HomeView1State extends State<TopExperts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            ArrowBackIcon(onPressed: () {}, icon: Icons.arrow_back_outlined),
      ),
    );
  }
}
