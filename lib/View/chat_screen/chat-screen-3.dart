import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
class ChatScreen3 extends StatefulWidget {
  const ChatScreen3({super.key});

  @override
  State<ChatScreen3> createState() => _ChatScreen3State();
}

class _ChatScreen3State extends State<ChatScreen3>{

 File? _imageFile;
Future<void> _pickImageFromCamera()async{
  final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
  if (pickedFile!=null) {
    setState(() {
      _imageFile = File(pickedFile.path);
    });
    print('Image Path: ${_imageFile!.path}');
  }
}
 Future<void> _pickDocument() async {
   final result = await FilePicker.platform.pickFiles(
     type: FileType.custom,
     allowedExtensions: ['pdf', 'doc', 'docx', 'xls', 'xlsx'],
   );

   if (result != null && result.files.isNotEmpty) {
     final filePath = result.files.single.path;
     print('Picked document: $filePath');
   } else {
     print('No document selected.');
   }
 }
 Future<void> _pickMediaFromGallery() async {
   final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery); // You can also use pickVideo
   if (pickedFile != null) {
     setState(() {
       _imageFile = File(pickedFile.path);
     });
     print('Media Path: ${_imageFile!.path}');
   } else {
     print('No media selected.');
   }
 }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        bottomSheet: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: CustomText(label: 'Share Content', size: TextSize.medium, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),),
              ),
              SizedBox(height: 16),
              ListTile(
                leading: IconButton(onPressed: _pickImageFromCamera, icon: Icon(Icons.camera_alt)),
                title: CustomText(label: 'Camera', size: TextSize.small, weight: FontWeight.w500, fontType:   GoogleFonts.jost,color: Color(0xff000E08),),
              ),

              ListTile(
                leading: IconButton(onPressed: _pickDocument, icon: Icon(Icons.dock)),
                title: CustomText(label: 'Document', size: TextSize.small, weight: FontWeight.w500, fontType:   GoogleFonts.jost,color: Color(0xff000E08),),
                subtitle: CustomText(label: 'Share your files', size: TextSize.minismall, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff797C7B),),
              ),
              ListTile(
                leading: IconButton(onPressed: _pickMediaFromGallery, icon: Icon(Icons.photo)),
                title: CustomText(label: 'Media', size: TextSize.small, weight: FontWeight.w500, fontType:   GoogleFonts.jost,color: Color(0xff000E08),),
                subtitle:CustomText(label: 'Share photos and videos', size: TextSize.minismall, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff797C7B),),
              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/person.jpg')),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(label: 'Tom Schneider', size: TextSize.medium, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),),
                CustomText(label: 'Active now', size: TextSize.minismall, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff797C7B),)
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey[400],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              SizedBox(height: 200,),
              Container(
                height: 37,
                width: 151,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff003366)
                ),
                child:  Center(child: CustomText(label: 'you did you job well', size: TextSize.minismall, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xffFFFFFF),)),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/person.jpg'),
              ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(label: 'Tom Schneider', size: TextSize.medium, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),),
                    Column(
                      children: [
                        SizedBox(width: 5,),
                        Container(
                          height: 37,
                          width: 151,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:  Center(child: CustomText(label: 'Have a great working week', size: TextSize.minismall, weight: FontWeight.w400, fontType: GoogleFonts.jost,)),
                        ),
                      ],
                    )
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
