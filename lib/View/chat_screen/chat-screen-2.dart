import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:google_fonts/google_fonts.dart';
import 'package:team_work_project/View/chat_screen/chat-screen-3.dart';
import 'package:team_work_project/View/profile_seeker_view/profile_seeker_4.dart';

import '../../Controller/text_comp/text_component.dart';

class ChatScreen2 extends StatefulWidget {
  const ChatScreen2({super.key});

  @override
  State<ChatScreen2> createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  final TextEditingController _textController = TextEditingController();
  final _user = types.User(id: 'user1'); // current user
  List<types.Message> _messages = [];

  @override
  void initState() {
    super.initState();
    _loadInitialMessages();
  }

  void _loadInitialMessages() {
    final otherUser = types.User(
      id: 'user2',
      firstName: 'Tom',
      lastName: 'Schneider',
    );

    _messages = [
      types.TextMessage(
        author: otherUser,
        createdAt: DateTime.now()
            .subtract(Duration(minutes: 8))
            .millisecondsSinceEpoch,
        id: 'msg3',
        text: 'Have a great working week!!',
      ),
      types.TextMessage(
        author: otherUser,
        createdAt: DateTime.now()
            .subtract(Duration(minutes: 7))
            .millisecondsSinceEpoch,
        id: 'msg4',
        text: 'Hope you like it',
      ),
      types.TextMessage(
        author: _user,
        createdAt: DateTime.now()
            .subtract(Duration(minutes: 7))
            .millisecondsSinceEpoch,
        id: 'msg5',
        text: 'You did your job well',
      ),
      types.TextMessage(
        author: otherUser,
        id: 'msg6',
        text: 'Hello ! Nazrul how are you',
      ),
      types.TextMessage(
        author: _user,
        id: 'msg7',
        text: 'hello John Abraham',
      ),
    ];
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/person.jpg')),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(label: 'Tom Schneider', size: 16, weight: FontWeight.w500, fontType: GoogleFonts.jost,color: Color(0xff000E08),),
                CustomText(label: 'Active now', size: 12, weight: FontWeight.w400, fontType: GoogleFonts.jost,color: Color(0xff797C7B),),

              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body:
           Column(
             children: [
                 Expanded(
                   child: Chat(
                     messages: _messages,
                     onSendPressed: _handleSendPressed,
                     user: _user,

                     showUserAvatars: true,
                     showUserNames: true,
                     onAttachmentPressed: () {},
                     theme: DefaultChatTheme(

                       inputBackgroundColor: Color(0xffFFFFFF),
                       inputTextColor: Colors.black,
                       sendButtonIcon:  Icon(Icons.send, color: Colors.blue),
                       primaryColor:  Color(0xFF002DE3), // your sent message color
                       secondaryColor:  Color(0xFFF2F2F2), // received message color
                       receivedMessageBodyTextStyle:  TextStyle(color: Colors.black),
                       attachmentButtonIcon: IconButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen3()));
                       }, icon: Icon(Icons.link,color: Colors.blue,))

                     ),

                                    ),
                 ),
             ],
           ),
    );
  }
}