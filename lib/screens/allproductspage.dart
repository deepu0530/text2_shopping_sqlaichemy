import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:text2networkcalls_29may2021/models/allproducts_model.dart';
class AllProducts extends StatefulWidget {
  @override
  _AllProductsState createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {


// Amazon list=Amazon(filters: null, products: []);

//   bool _fetching = true;
//   void getHttp() async {
//     setState(() {
//       _fetching = true;
//     });
//     try {
//       Response response =
//       await Dio().get("http://vps-d5b18cef.vps.ovh.net:5000/products?page=0");
//       setState(() {
//         list = amazonFromJson(jsonEncode(response.data));
//         _fetching = false;
//       });
//       print(response);
//     } catch (e) {
//       setState(() {
//         _fetching = false;
//       });
//       print(e);
//     }
//   }
//   //int pressedButtonNo ;
//   @override
//   void initState() {
//     getHttp();
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Products",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 40,
          color: Colors.deepPurple,
          ),
          ),

        ],
      ),),
    );
  }
}