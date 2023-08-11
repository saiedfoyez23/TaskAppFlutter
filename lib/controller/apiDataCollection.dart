import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testflutterapp/model/data.dart';

class ApiDataCollection with ChangeNotifier{
   
   Future<Data?> DataColllection() async {
    
    var response = await http.get(
      Uri.parse("https://enorsia.nextgenitltd.com/api/data"),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }
    );
    
    if(response.statusCode == 200){
      Map<String,dynamic> dataResponse = jsonDecode(response.body);
      return Data.fromJson(dataResponse);
    }else{
      print(response.statusCode);
    }

   }
  
}