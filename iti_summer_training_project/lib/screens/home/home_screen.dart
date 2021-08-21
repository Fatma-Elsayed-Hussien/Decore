import 'package:flutter/material.dart';
import 'package:iti_summer_training_project/components/custom_button.dart';
import 'package:iti_summer_training_project/models/custom_button_model.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Categories",
              style: TextStyle(fontSize: 20),
            ),
            //Image.asset("assets/images/icon-05.png", width: 30, height: 30),
            IconButton(
              icon: Image.asset("assets/images/icon-05.png",),
              iconSize: 10,
              onPressed:(){}
            ),
          ],
        ),
        
        leading: Padding(
          padding: EdgeInsets.only(left: 15), 
          child: ImageIcon(AssetImage("assets/images/icon-04.png"),), 
        ),
        leadingWidth: 45, 
        centerTitle: true,
        elevation:0,
  
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            // width: 400,
            height: 30, //size of box
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container( //First 
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), 
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/icon-03.png", height: 26, color: Colors.grey[400]), //grey[500] //bdbdbd
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2) , 
                        child: Text(
                          "Price Range", 
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.grey), //757575
                        ),
                      )
                    ]
                  ),
                ),
                  
                SizedBox(width: 8,),
                Container( // Second
                  width: 83,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/icon-03.png", height: 26, color: Colors.grey[400]),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2) , 
                        child: Text("Tags", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),)
                      ),
                    ]
                  ),
                ),
                  
                SizedBox(width: 8,),
                Container( //Third
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/icon-03.png", height: 26, color: Colors.grey[400]),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2) , 
                        child: Text("Style", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),)
                      ),
                    ]
                  ),
                ),
              
                SizedBox(width: 8,),
                Container( //Fourth
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/icon-03.png", height: 26, color: Colors.grey[400]),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2) , 
                        child: Text("Color", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),)
                      ),
                    ]
                  ),
                ),
              ],
            )
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height, 
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //colors: [Colors.white, Color(0xffe4e4e4), Color(0xffe2e2e2)],
            colors: [Colors.white, Color(0xfff9f9f9) , Color(0xffe9e9e9), Color(0xffe8e8e8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        padding: EdgeInsets.only(top: 30), 
        child: SingleChildScrollView( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column( //First Column      
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/chairsDetails');
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Stack(
                              children:[
                                Image(image: AssetImage("assets/images/chair.jpg"), height: 250, fit: BoxFit.cover,),
                                Positioned(
                                  bottom: 6,
                                  left: 10,
                                  child: Column(
                                    children:[
                                      Text(
                                        "Chairs",
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "From ",
                                            style: TextStyle(fontSize: 10, color: Colors.black,fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "\$190.-",
                                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                      )
                                    ]
                                  )
                                ),
                                Image(image: AssetImage("assets/images/icon-02.png"), height: 40,),
                             ]
                            ),
                          ),
                        ),
                          
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/sofasDetails');
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child:Stack(
                              children:[
                                Image(image: AssetImage("assets/images/sofas.jpg"), height: 250, fit: BoxFit.cover,),
                                Positioned(
                                  bottom: 6,
                                  left: 10,
                                  child: Column(
                                    children:[
                                      Text(
                                        "Sofas",
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "From ",
                                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "\$420.-",
                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                      )
                                    ]
                                  )
                                ),
                                Image(image: AssetImage("assets/images/icon-02.png"), height: 40, ),
                              ]
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                              
                  Expanded(
                    child: Column(
                      children:[
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/nightDetails');
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child:Stack(
                              children:[
                                Image(image: AssetImage("assets/images/night-stand.jpg"), height: 250, fit: BoxFit.cover, ),
                                Positioned(
                                  bottom: 6,
                                  left: 10,
                                  child: Column(
                                    children:[
                                      Text(
                                        "Night Stands",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "From ",
                                            style: TextStyle(fontSize: 10, color: Colors.black,fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "\$140.-",
                                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                      ),
                                    ]
                                  ),
                                ),
                                Image(image:AssetImage("assets/images/icon-02.png"), height: 40, ),
                              ]
                            ),
                          ),
                        ),
                            
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/desksDetails');
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child:Stack(
                              children:[
                                Image(image: AssetImage("assets/images/desk.jpg"), height: 250, fit: BoxFit.cover, ),
                                Positioned(
                                  bottom: 6,
                                  left: 10,
                                  child: Column(
                                    children:[
                                      Text(
                                        "Desks",
                                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "From ",
                                            style: TextStyle(fontSize: 10, color: Colors.black,fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "\$320.-",
                                            style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),
                                Image(image:AssetImage('assets/images/icon-02.png'), height: 40, ),
                              ]
                            ),
                          ),
                      )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              CustomButton(
                buttonModel: CustomButtonModel(
                  text: "Scan my Space", 
                  onButtonClick: (){
                    Navigator.pushNamed(context, '/home');         
                  } 
               )
              ),
              SizedBox(height: 30,),
            ],
          ),
        )
      ),
    );
  }
}