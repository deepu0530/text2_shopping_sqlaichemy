import 'package:flutter/material.dart';
import 'package:text2networkcalls_29may2021/screens/loginpage.dart';
import 'package:text2networkcalls_29may2021/screens/registrationpage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: Container(
  padding: EdgeInsets.symmetric(vertical: 40),
  child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home,color: Colors.deepPurple,size: 100,),
        SizedBox(height:50),
Text("SinUp",
style: TextStyle(color: Colors.deepPurple,
fontSize: 40,
fontWeight: FontWeight.bold,
),
),
SizedBox(height:200),
InkWell(
onTap: (){
    Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
},
    child:   Container(
    
      height: 60,
    
      width: 350,
    
      decoration: BoxDecoration(shape: BoxShape.rectangle,
    
      borderRadius: BorderRadius.circular(30),
    
      color: Colors.deepPurple,
    
      ),
    
      child: Center(child: Text("SignIn",
    
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
    
      )),
    
    ),
),
SizedBox(height:50),
InkWell(
    onTap: (){
    Navigator.push(context,
            MaterialPageRoute(builder: (context) => RegistrationPage()));
},
    child:   Container(
    
      height: 60,
    
      width: 350,
    
      decoration: BoxDecoration(shape: BoxShape.rectangle,
    
      borderRadius: BorderRadius.circular(30),
    
      color: Colors.deepPurple,
    
      ),
    
      child: Center(child: Text("Register",
    
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
    
      )),
    
    ),
)


],),
  ),),),
    );
  }
}