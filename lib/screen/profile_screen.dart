import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vrutant_login/screen/test_sscreen1.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/Passport Size Photo.jpeg"),
              ),
              SizedBox(height: 10,),
              Text(
                "Vrutant Bhosle",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "Joined 1 Year Ago",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Manage User"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text("Dark Mode"),
                onTap: () {},
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TestSscreen1()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                ),
                child: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomContainer extends StatelessWidget {
  CustomContainer(
  {
    required this.firstIcon,
    required this.secondIcon,
    required this.text,
  });
  final Widget firstIcon;
  final Widget secondIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: Get.height*0.1,
          width: Get.width*0.13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red.shade100
          ),
          child: firstIcon,
        ),
        SizedBox(width: Get.width*0.05,),
        Text(text,style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        Spacer(),
        secondIcon
      ],
    );
  }
}

