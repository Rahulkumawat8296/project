import 'package:adstacks/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
class Employe extends StatefulWidget {
  const Employe({super.key});

  @override
  State<Employe> createState() => _EmployeState();
}

class _EmployeState extends State<Employe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Employees"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
        },icon: Icon(Icons.arrow_back),),
      ),
      body: Center(child: Text("Employes")),
    );
  }
}
