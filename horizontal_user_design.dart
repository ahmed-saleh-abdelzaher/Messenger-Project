import 'package:flutter/material.dart';
import 'messenger_home_page.dart';


class Horizontal_User_DesignState extends StatelessWidget {
  Horizontal_User_DesignState({required String photo, required String user_name2}){
    name = photo;
    user2 = user_name2;
  }
  String? name;
  String? user2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('$name'),
        ),
        Text("$user2", style: TextStyle(color: Colors.grey),),
      ],
    );
  }
}
