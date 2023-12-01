import 'package:flutter/material.dart';

class Vertical_User_Design extends StatelessWidget {
  Vertical_User_Design({required String photo, required String user_name}){
    name = photo;
    user = user_name;
  }
  String? name;
  String? user;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 5),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage('$name'),
      ),
      title: Text("$user", style: TextStyle(color: Colors.grey),),
      subtitle: Text("You can chat now", style: TextStyle(color: Colors.grey),),
    );
  }
}
