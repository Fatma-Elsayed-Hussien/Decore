import 'package:flutter/material.dart';

class ChairsDetailsScreen extends StatefulWidget {
  
  @override
  _ChairsDetailsScreenState createState() => _ChairsDetailsScreenState();
}

class _ChairsDetailsScreenState extends State<ChairsDetailsScreen> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    // return getDetailsWidget();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 340,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/chair.jpg", width: 300, fit: BoxFit.cover,),
            ),
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  icon: Image.asset("assets/images/icon-07.png"),
                  iconSize: 110,
                  onPressed: () {
                  },
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Chair",
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Chairs",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color:  Colors.grey),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "\$190.-",
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff7c95d3) ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Lorem ipsum dolor sit amet, consecte-tuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.w500, 
                            color: Colors.grey[600], 
                            wordSpacing: 1,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 18,),       
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Quantity",
                              style:TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.grey[600]),
                            ),
                            
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: RawMaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity++;
                                      });
                                    },
                                    child: Icon(Icons.add, size: 20,),
                                    elevation: 0,
                                    constraints: BoxConstraints.tightFor(
                                      width: 30,height: 30
                                    ),
                                  ),
                                ),
                                Text("  $quantity  " , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.w500, color: Colors.grey[800])),
                                Container(
                                  width: 25,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: RawMaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        quantity--;
                                      });
                                    },
                                    child: Icon(Icons.remove, size: 20,),
                                    elevation: 0,
                                    constraints: BoxConstraints.tightFor(
                                      width: 30,height: 30
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Colors",
                              style:TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.grey[600]),
                            ),
                            SizedBox(height: 6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2),
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey,
                                    )
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  height: 22,
                                  width: 22,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color(0xffeaadd8),
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  height: 22,
                                  width: 22,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color(0xff1eb893),
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  height: 22,
                                  width: 22,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color(0xff009dff),
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  padding: EdgeInsets.all(2),
                                  height: 22,
                                  width: 22,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Color(0xff000000),
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
         ),
       ],
      ),
    );
  }
}
