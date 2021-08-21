import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iti_summer_training_project/components/custom_button.dart';
import 'package:iti_summer_training_project/models/custom_button_model.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() =>_LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _email ,_password;
  final _emailText = TextEditingController(); 
  final _passwordText = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  
  _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Valid form $_email, $_password");
    } else {
      print("Form is not valid");
    }
  }
  @override
  void dispose(){
    _emailText.dispose();
    _passwordText.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          padding: EdgeInsets.only(top: 45), 
          child:SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.22), 
                        spreadRadius: -26, 
                        blurRadius: 10,
                        //offset: Offset(-10, -30), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset("assets/images/icon-08.png", height: 170),
                ),
                Text(
                  "Find your",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600), 
                ),
                SizedBox(height: 3),
                Text(
                  "unique piece!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 14),
                Text(
                  "Join us,",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
            
                Padding(
                  padding: EdgeInsets.all(28.0), 
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 3),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailText,
                          onFieldSubmitted: (String? value) {
                            _email = value;
                          },
                          onSaved: (String? value) {
                            _email = value;
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email";
                            }
                            if (!value.contains("@")) {
                              return "Please enter a valid email";
                            }
                          },
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffceced1),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            errorStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                            //errorBorder: UnderlineInputBorder(borderSide: BorderSide(width: 1.3, color: Colors.red)),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Color(0xffcfcfcf)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue
                              ),
                            ),  
                          ),
                        ),
                        SizedBox(height: 30),
                      
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: _passwordText,
                          obscureText: true,
                          onFieldSubmitted: (String? value) {
                            _password = value;
                          },
                          onSaved: (String? value) {
                            _password = value;
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your password";
                           }
                            // if (value.length < 8) {
                            //   return "Password must be greater than 8 characters";
                            // }
                          },
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffceced1),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            errorStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Color(0xffcfcfcf)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.blue
                              ),
                            ), 
                          ),
                        ),

                        SizedBox(height: 50),
                        CustomButton(
                          buttonModel: CustomButtonModel(
                            text: "Create Account", 
                            onButtonClick: (){
                              _submitForm();
                              if(_emailText.text.isNotEmpty && _passwordText.text.isNotEmpty && _emailText.text.contains("@")){
                                //_submitForm();
                                Navigator.pushNamed(context, '/home' );
                              }
                            } 
                          )
                        ),
                        
                        SizedBox(height: 15),
                        Text("Sign up with", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                      
                        Image.asset("assets/images/icon-01.png", height: 90,),
                        SizedBox(height: 10,),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already have an account?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500 ,),),
                            TextButton(
                              child: Text("Sing in", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.black)),
                              onPressed: (){
                                
                              }
                            )
                          ]
                        )
                      ],
                    ),
                  )
                ),
              ]
            )
          )
        )
      )
    );
  }
}