import 'package:adstacks/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
class Informatin extends StatefulWidget {
  const Informatin({super.key});

  @override
  State<Informatin> createState() => _InformatinState();
}

class _InformatinState extends State<Informatin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder:
              (context)=>ProfileScreen()));
        },icon: Icon(Icons.arrow_back),),
      ),
      body: Center(child: Text("Information")),

    );
  }
}
