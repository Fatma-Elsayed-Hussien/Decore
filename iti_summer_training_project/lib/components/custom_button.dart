import 'package:flutter/material.dart';
import 'package:iti_summer_training_project/models/custom_button_model.dart';

class CustomButton extends StatelessWidget {
  
  final CustomButtonModel buttonModel;
  CustomButton({
    required this.buttonModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.buttonModel.onButtonClick != null) {
          this.buttonModel.onButtonClick!();
        }
      },
      child: Container(
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: ElevatedButton( 
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(0),
            ),
            onPressed: () {this.buttonModel.onButtonClick!();},
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff7c95d4), Color(0xffa7a5dd), Color(0xffa7a6db)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              ),
              
              child: Container(
                constraints: BoxConstraints(
                  minHeight: 49,
                ),
                alignment: Alignment.center,
                child: Text(
                  "${this.buttonModel.text}",
                  style: TextStyle(color: Colors.white, fontSize: 18,),
                ),
              )
            ),
         ),
        ),
      ),
    );
  }
}