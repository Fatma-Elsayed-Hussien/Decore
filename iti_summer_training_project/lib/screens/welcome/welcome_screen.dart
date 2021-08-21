import 'package:flutter/material.dart';
import 'package:iti_summer_training_project/components/custom_button.dart';
import 'package:iti_summer_training_project/models/custom_button_model.dart';

class WelcomeScreen extends StatefulWidget {

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // total height and width of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04,), 
            Text(
              "Decor &",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40, ),
            ),
            Text(
              " enjoy!",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40,),
            ),
            SizedBox(height: size.height * 0.02,), 
            
            Image.asset("assets/images/icon-09.png", height: size.height* 0.47,), 
            SizedBox(height: size.height * 0.05,), 

            CustomButton(
              buttonModel: CustomButtonModel(
                text: "Get started", onButtonClick: (){
                  Navigator.pushNamed(context, '/login');
                } 
              )
            ),
            SizedBox( height: size.height * 0.07,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500 ,),),
                TextButton(
                  child: Text("Sing in", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.black)),
                  onPressed: (){
                    Navigator.pushNamed(context, '/login' );
                  }
                )
              ]
            ),
          ],
        ),
      )
    );
    
  }
}