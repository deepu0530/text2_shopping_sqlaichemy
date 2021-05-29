import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:text2networkcalls_29may2021/screens/allproductspage.dart';

import 'package:text2networkcalls_29may2021/screens/homepage.dart';
import 'package:text2networkcalls_29may2021/screens/registrationpage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   bool loading = false;
   dynamic res;
    void _performlogin() async {
    String email = mailController.text.trim();
    String password = passwordController.text.trim();
    SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();

    FormData formdata = FormData.fromMap({
      "email": email,
      "password":password,
    });

    try {
  
      Response responses =
      await Dio().post("http://vps-d5b18cef.vps.ovh.net:5000/login/",data: formdata);

      setState(() {
        if(responses.statusCode ==200)  {
         prefs.setString("access_token", responses.data["access_token"]);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  AllProducts(
                  ),
            ),
          );
        }
        else{
          Fluttertoast.showToast(msg: "Invalid  ");
        }
      });
      print(responses);
    } catch (e) {
      setState(() {

      });
      print(e);
    }
  }
  final mailController = TextEditingController();
  final passwordController = TextEditingController();


  bool _isObscure = true;

  
 // bool _isObscure = true;


  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical:40),
                    child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image(image: AssetImage("assets/images/logo.png"),height: 59,width: 59,),
           
             SizedBox(height: 20,),
             
               Text("Login",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.deepPurple),
              ),
               SizedBox(height: 40,),
Padding(
  padding: const EdgeInsets.only(left: 25),
  child:   Row(
    children: [
      Text("Email Address",
      
                              style: TextStyle(color: Colors.deepPurple,fontSize: 16,
                              fontWeight: FontWeight.bold,
                              ),
      
                              ),
    ],
  ),
),
                        SizedBox(height: 20,),
Container(
                height: 60,
                width: 350,
                 decoration:BoxDecoration(
                    color:Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                ),
                child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     
                     TextFormField(
                       controller:mailController,
    cursorColor: Colors.white,
    keyboardType: TextInputType.text,
  
    decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          hintText: "Enter Your Email",
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white
          )
          ),
  ),
                    
                    ],),
                ),

SizedBox(height:20),
Padding(
  padding: const EdgeInsets.only(left: 25),
  child:   Row(
  
    children: [
  
          Text("Password",
  
      
  
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,color: Colors.deepPurple),
  
      
  
                              ),
  
    ],
  
  ),
),
                        SizedBox(height: 20,),
Container(
                height: 60,
                width: 350,
                 decoration:BoxDecoration(
                    color:Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                ),
                child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     
                     TextFormField(
                  controller: passwordController,
                       obscureText: _isObscure,
    cursorColor: Colors.white,
    keyboardType: TextInputType.text,
    decoration: new InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          hintText: "Enter Password",
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white,
          
          ),
           suffixIcon: IconButton(
                      icon: Icon(
                        
          
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: _isObscure?Colors.white:Colors.white,
                          
                          ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      })),
      
          ),
                    
                    ],),
                ),
                SizedBox(height:20),
                Padding(
                    padding: const EdgeInsets.only(left:25),
                    child: Row(
                      children: [
                        Text("Forgot password?",
                        style: TextStyle(
  
                                    fontSize: 16, fontWeight: FontWeight.bold,color: Colors.deepPurple)),
                      
                      ],
                    ),
                ),
SizedBox(height:40),
              InkWell(
                onTap: (){
                  _performlogin();
                },
          //       onTap: (){
          //          Navigator.push(context,
          // MaterialPageRoute(builder: (context) => AllProducts()));
          //       },
                              child: Container(
                  height: 60,
                  width: 350,
                   decoration:BoxDecoration(
                      color:Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
                  )),
                ),
              ),
              SizedBox(height:40),
InkWell(
  onTap: (){
    Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegistrationPage()));
  },
  child:   RichText(
  
                        text: TextSpan(
  
                          text: '',
  
                          style: TextStyle(),
  
                          children: <TextSpan>[
  
                            TextSpan(
  
                                text: 'Dont have an account?',
  
                                style: TextStyle(fontSize: 14,color: Colors.deepPurple)),
  
                            TextSpan(
  
                                text: ' Register Now',
  
                                style: TextStyle(
  
                                    fontSize: 14, fontWeight: FontWeight.bold,color: Colors.deepPurple)),
  
              
  
                          ],
  
                        ),
  
                        textAlign: TextAlign.center,
  
                      ),
),
                    
            ],
          ),
                  ),
        ),
      ),
    );
  }
}

