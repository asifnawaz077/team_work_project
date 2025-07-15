import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/Controller/text_comp/text_component.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
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
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
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

              CustomText(label: 'Share Content', size: 16, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),),

              SizedBox(height: 16),

              ListTile(
                leading: IconButton(onPressed: _pickImageFromCamera, icon: Icon(Icons.camera_alt)),
                title: CustomText(label: 'Camera', size: 14, weight: FontWeight.w500, fontType:   GoogleFonts.jost,color: Color(0xff000E08),),
              ),

              ListTile(
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.dock)),
                title: CustomText(label: 'Document', size: 14, weight: FontWeight.w500, fontType:   GoogleFonts.jost,color: Color(0xff000E08),),
                subtitle: CustomText(label: 'Share your files', size: 12, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff797C7B),),
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: Icon(Icons.photo)),
                title: CustomText(label: 'Media', size: 14, weight: FontWeight.w500, fontType:   GoogleFonts.jost,color: Color(0xff000E08),),
                subtitle:CustomText(label: 'Share photos and videos', size: 12, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff797C7B),),
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
                Text("Tom Schneider", style: TextStyle(fontSize: 16)),
                Text("Active now",
                    style: TextStyle(fontSize: 12, color: Colors.green)),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Spacer(),
              Container(
                height: 37,
                width: 151,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff003366)
                ),
                child:  Center(child: CustomText(label: 'you did you job well', size: 12, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xffFFFFFF),)),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/person.jpg'),
              ),
                Column(
                  children: [
                    CustomText(label: 'Tom Schneider', size: 12, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),),
                    Column(
                      children: [
                        Container(
                          height: 37,
                          width: 151,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:  Center(child: CustomText(label: 'Have a great working week', size: 12, weight: FontWeight.w400, fontType: GoogleFonts.jost,)),
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
