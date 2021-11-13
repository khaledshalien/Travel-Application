import 'package:flutter/material.dart';

void main() {
  runApp((
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Travel_application() ,
    )
  ));
}

class Travel_application extends StatefulWidget {


  @override
  _Travel_applicationState createState() => _Travel_applicationState();
}

class _Travel_applicationState extends State<Travel_application> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child:
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                  ],
                  ),
                ),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "What would you like to find?"
                      ,textAlign: TextAlign.center,style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,

                        color: Colors.white),),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.all(3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText: "Search for cities, places...",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),

              ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(

               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Best Destination",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                        children: [
                          MakeItem("assets/images/canada.jpg","Canada"),
                          MakeItem("assets/images/Italy.jpg","Italy"),
                          MakeItem("assets/images/greece.jpg","Greece"),
                          MakeItem("assets/images/united-states.jpg","United states"),
                        ],

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text("Best Hotels",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MakeItem("assets/images/canda_hotel.jpg","Canada"),
                        MakeItem("assets/images/italy_hotel.jpg","Italy"),
                        MakeItem("assets/images/greece_hotel.jpg","Greece"),
                        MakeItem("assets/images/united_hotel.jpg","United states"),
                      ],

                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      )
    );

  }

  Widget MakeItem(image,title){
   return AspectRatio(
       aspectRatio: 1/1,
     child: Container(
       margin: EdgeInsets.only(right: 15),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
         image: DecorationImage(
           image: AssetImage(image),
           fit: BoxFit.cover,
         ),
       ),
       child: Container(
         padding: EdgeInsets.all(20),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           gradient: LinearGradient(
             begin: Alignment.bottomRight,
             colors: [
               Colors.black.withOpacity(0.8),
               Colors.black.withOpacity(0.2),
             ],
           ),
         ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(title,style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),),
            )
       ),
     ),

   );
  }

}

