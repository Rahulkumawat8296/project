import 'package:adstacks/dashboard/attende.dart';
import 'package:adstacks/dashboard/informatin.dart';
import 'package:adstacks/dashboard/summary.dart';
import 'package:adstacks/res/textstyle.dart';
import 'package:flutter/material.dart';

import 'employe.dart';
import 'home.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Center(child: Text("AdStacks",style: AppStyle.normal_24,)),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black.withOpacity(0.2),
                thickness: 1,
                indent : 10,
                endIndent : 10,
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: CircleAvatar(

                 radius: 70,
                child: Image.asset("assets/images/persion.png"),
                
              ),
            ),
            SizedBox(height: 10,),
            Center(child: Text("Pooja Mishra",style: AppStyle.normal_16,)),
            SizedBox(height: 10,),
            Center(
              child: Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.blueAccent
                  ),
                ),
                child: Center(child: Text("Admin",style: AppStyle.normal_16,)),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black.withOpacity(0.2),
                thickness: 1,
                indent : 10,
                endIndent : 10,
              ),
            ),

            ListTile(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              leading: Icon(Icons.home),
              title: Text("Home",style: AppStyle.normal_16,),
            ),

            ListTile(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Employe()));
              },
              leading: Icon(Icons.person),
              title: Text("Employees",style: AppStyle.normal_16,),
            ),
            ListTile(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:
                    (context)=>Attendent()));
              },
              leading: Icon(Icons.playlist_add_check),

              title: Text("Attendance",style: AppStyle.normal_16,),
            ),
            ListTile(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>Summary()));

              },
              leading: Icon(Icons.summarize),
              title: Text("Summary",style: AppStyle.normal_16,),
            ),
            ListTile(
              onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>Informatin()));

              },
              leading: Icon(Icons.info_outline),
              title: Text("Informatin",style: AppStyle.normal_16,),
            ),

            ListTile(
              title: Text("WORKSPACES",style: AppStyle.normal_16,),
            ),
            ListTile(
              title: Row(
                children: [
                  SizedBox(width: 40,),
                  Text("Adstacks",style: AppStyle.normal_16,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                ],
              )
            ),
            ListTile(
                title: Row(
                  children: [
                    SizedBox(width: 40,),
                    Text("Finance",style: AppStyle.normal_16,),
                    SizedBox(width: 5,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                  ],
                )
            ),

            SizedBox(height: 80,),
            ListTile(
              onTap: (){
                //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              leading: Icon(Icons.settings),
              title: Text("Setting",style: AppStyle.normal_16,),
            ),

            ListTile(
              onTap: (){
              //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              leading: Icon(Icons.logout),
              title: Text("Loout",style: AppStyle.normal_16,),
            ),


          ],
        ),
      ),
    );
  }
}
