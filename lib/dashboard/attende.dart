import 'package:adstacks/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
class Attendent extends StatefulWidget {
  const Attendent({super.key});

  @override
  State<Attendent> createState() => _AttendentState();
}

class _AttendentState extends State<Attendent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
        },icon: Icon(Icons.arrow_back),),
      ),
      body: Center(child: Text("Attendance")),
    );
  }
}
