import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/constentes/blue_button/blue_button_widget.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:team_work_project/Controller/textformfield/textform_field.dart';

class ProfileSolver2 extends StatefulWidget {
  const ProfileSolver2({super.key});

  @override
  State<ProfileSolver2> createState() => _ProfileSolver2State();
}

class _ProfileSolver2State extends State<ProfileSolver2> {
  int seletedindex=4;
  TextEditingController _titleController=TextEditingController();
  TextEditingController _descriptionController=TextEditingController();
  TextEditingController _keywordController=TextEditingController();
  String? selectedFile;

  Future<void> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFile = result.files.single.name;
      });
    }
  }

  void upload() {
    if (selectedFile != null) {
      // Do your upload logic here
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Uploading: $selectedFile')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please choose a file first')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            seletedindex=index;
            setState(() {

            });
          },
          unselectedItemColor: Color(0xffC0C0C0),
          selectedItemColor: Color(0xff003366),
          currentIndex: seletedindex,
          items: [
            BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'SolvboxAI',icon: Icon(Icons.lightbulb)),
            BottomNavigationBarItem(label: 'Chats',icon: Icon(Icons.chat)),
            BottomNavigationBarItem(label: 'LodeMo',icon: Icon(Icons.lightbulb_rounded)),
            BottomNavigationBarItem(label: 'Profile',icon: Icon(Icons.perm_identity_rounded)),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Center(child: CustomTextField(hintText: 'Title', controller:_titleController ,)),
            SizedBox(height: 20,),
            Center(child: CustomTextField(hintText: 'Description', controller:_descriptionController )),
            SizedBox(height: 20,),
            Center(child: CustomTextField(hintText: 'Keyword', controller:_keywordController )),
            SizedBox(height: 190,),
            Center(child: BlueButtonWidget(onPressed: pickFile, text: 'Upload')),
                    ],
        ),
      ),

    );
  }
}
