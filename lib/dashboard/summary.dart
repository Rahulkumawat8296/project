import 'package:adstacks/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: Text("Summary"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
        },icon: Icon(Icons.arrow_back),),
      ),
      body: Center(child: Text("Summary")),
    );
  }
}
