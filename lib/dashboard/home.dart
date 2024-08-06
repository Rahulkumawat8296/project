import 'package:adstacks/dashboard/profile_screen.dart';
import 'package:flutter/material.dart';
import '../res/color.dart';
import '../utils/custome.dart';
import 'fl_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TextEditingController _textController;
  late TabController _tabController;
   double _value = 0;
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _tabController = TabController(length: 3, vsync: this); // Adjust the length based on the number of tabs
  }

  @override
  void dispose() {
    _textController.dispose();
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 //alignment: Alignment.topLeft,
                 height: 40,
                 decoration: BoxDecoration(
                   color:AppColor.black,
                   border: Border.all(
                   ),
                   shape: BoxShape.circle,
                 ),
                 child:  IconButton(onPressed: (){
                   Navigator.pushReplacement(context,
                       MaterialPageRoute(builder: (context)=>ProfileScreen()));
                 },icon: Icon(Icons.arrow_back,color: AppColor.white,),) ,
               ),
             ),

            Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.height*0.01),
                  child: Text("Home",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left:20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.blue,
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 16,color: Colors.white),
                    suffixIcon: Icon(Icons.search,color: Colors.white,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.2),
                      )
                    ),

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                          )
                      ),


                )),
              ),
              ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.notification_important_outlined,size: 30,),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: size.height*0.01,right: size.width*0.01),
                  height: size.height * 0.30,
                  width: size.width * 0.99,
                  decoration: BoxDecoration(
                    color: AppColor.black,
                    image: DecorationImage(
                      image: AssetImage("assets/images/floder.png"),fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 20,
                        ),
                        child: Text(
                          "Top Rating \nProject",
                          style: TextStyle(color: AppColor.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text("Treading project and high rating\n project created by team",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 30,
                  bottom: 10,
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Learn More"),
                    ),
                  ),
                ),
                // Positioned(
                //   top: 20,
                //   right: size.width * 0.067,
                //   bottom: 0,
                //   child: Image.asset("assets/images/image.png",
                //     fit: BoxFit.cover,
                //     width: 100, // Adjust the width as needed
                //     height: 100, // Adjust the height as needed
                //   ),
                // ),

              ],
            ),

            //SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                   Container(
                     height: size.height*0.4,
                     width: size.width*0.85,
                     decoration: BoxDecoration(
                         color: AppColor.black,
                       borderRadius:BorderRadius.circular(15)
                     ),

                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("All Projects",style: TextStyle(fontSize:16,color: AppColor.white),),
                         ),

                         ListView.builder(
                           physics: NeverScrollableScrollPhysics(),
                           shrinkWrap: true,
                           itemCount:3,
                             itemBuilder: (context,index){
                           return Container(
                             padding: EdgeInsets.only(left: 25),
                             height: size.height*0.08,
                             margin: EdgeInsets.all(8.0),
                             decoration: BoxDecoration(
                               color: AppColor.blue,
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(
                                 color: AppColor.blue
                               )

                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     color: Colors.white,

                                   ),

                                 ),
                                 Text("Technology benind Blockchain",style: TextStyle(color: AppColor.white),),
                                 Icon(Icons.edit,color: Colors.white,),
                               ],
                             ),


                           );
                         })
                       ],

                     )
                   ),
                    SizedBox(width: 10,),
                Container(
                    height: size.height*0.4,
                    width: size.width*0.85,
                    decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius:BorderRadius.circular(15)
                    ),

                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Top Creator",style: TextStyle(fontSize:16,color: AppColor.white),),
                        ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                               Text("Name",style: TextStyle(color: AppColor.white,fontSize: 16,fontWeight: FontWeight.w400),),
                               Text("Artwork",style: TextStyle(color: AppColor.white,fontSize: 16,fontWeight: FontWeight.w400),),
                               Text("Rating",style: TextStyle(color: AppColor.white,fontSize: 16,fontWeight: FontWeight.w400),),
                               ],
                             ),
                                                ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount:3,
                                  itemBuilder: (context,index){
                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: AppColor.white,
                                            child: Icon(Icons.person),
                                          ),
                                        ),
                                        Text("@User",style:
                                        TextStyle(color: Colors.white),),
                                           Icon(Icons.star)
                                      //   Slider(
                                      //     min: 0,
                                      //     max: 100,
                                      //     value: _value,
                                      //     onChanged: (value) {
                                      //       setState(() {
                                      //         _value = value;
                                      //       });
                                      //     },
                                      //   ),
                                      ],
                                    );
                                  }),



                      ],

                    )
                ),
                ]
                ),
              ),
            ),
            SizedBox(height: 10,),
            LineChartSample1(),

          ],
        ),
      ),
    );
  }
}
