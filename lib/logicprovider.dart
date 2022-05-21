

import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/model.dart';
import 'package:http/http.dart' as http;
class Logic extends ChangeNotifier{
  List<DataModel> listData = [];
    DataModel? dataModel;
  fetchData(context) async{
    dataModel = await getData(context);

    notifyListeners();
  }

  Future<DataModel?> getData(context) async {
     DataModel? dataModel;

    try {
      final response = await http
          .get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
         final data = json.decode(response.body);
         listData = List<DataModel>.from(data.map((i) => DataModel.fromJson(i)));
         print(listData[0].title);
        // dataModel = DataModel.fromJson(data[0]);
      }else{
        print("Something went wrong");
      }
    } catch (e) {
      print(e.toString());
    }

    return dataModel;
  }
  void modalBottomSheetMenu(BuildContext context,category,rating){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context,
        builder: (builder){
          return  Container(
            height: 350.0,
            color: Colors.transparent,
            child:  Container(
                decoration:  BoxDecoration(
                    color: Colors.white,
               ),
                child:  Column(
                children: [

                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Category",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(category,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("Rating",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(rating.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),),

                ],
                )),
          );
        }
    );
  }

}