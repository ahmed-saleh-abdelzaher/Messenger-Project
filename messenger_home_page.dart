import 'package:flutter/material.dart';
import 'horizontal_user_design.dart';
import 'vertical_user_design.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String photo = "assets/images/photo10.jpg";

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i){
          setState(() {
            index = i;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble, size: 30,),
              label: 'الدردشات',
              backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            label: "المكالمات",
            icon: Icon(Icons.video_camera_back, size: 30,),
          ),
          BottomNavigationBarItem(
            label: "الأشخاص",
            icon: Icon(Icons.person_sharp, size: 30,),
          ),
          BottomNavigationBarItem(
            label: "القصص",
            icon: Icon(Icons.amp_stories,size: 30,),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Color(0xff303030),
                        child: IconButton(onPressed: (){},icon: Icon(Icons.menu, color: Colors.white,),)
                    ),
                    SizedBox(width: 25),
                    Text('الدردشات', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff303030),
                  child:
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Colors.white,)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            TextFormField(
              onTap: (){},
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(500),
                ),
                prefixIcon: Icon(Icons.search, color: Colors.grey[700],),
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                filled: true,
                fillColor: Color(0xff303030),
                hintText: "Search",
                hintMaxLines: 1,
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                ),

              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                    children: [
                      Horizontal_User_DesignState(photo: "assets/images/photo10.jpg", user_name2: "Sara",),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo11.jpg", user_name2: "Jannet"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo12.jpg", user_name2: "Ali"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo13.jpg", user_name2: "Manar"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo14.jpg", user_name2: "Salma",),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo15.jpg", user_name2: "nada"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo16.jpg", user_name2: "Khaled"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo17.jpg", user_name2: "Ahmed"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo18.jpg", user_name2: "nesma"),
                      SizedBox(width: 15,),
                      Horizontal_User_DesignState(photo: "assets/images/photo19.jpg", user_name2: "Marawan"),
                    ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: ListView(
                  children: [
                    Vertical_User_Design(photo: "assets/images/photo10.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo11.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo12.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo13.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo14.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo15.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo16.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo17.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo18.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo19.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo72.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo2.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo3.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo4.jpg", user_name: "Mohammed El-Sayes"),
                    Vertical_User_Design(photo: "assets/images/photo5.jpg", user_name: "Mohammed El-Sayes"),
                  ],
                ),
              ),
            ),
        ]),
      ),
    );
  }
}
