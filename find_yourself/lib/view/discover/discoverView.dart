import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/discover/widget/list_category.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatelessWidget {
const DiscoverView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.discoverNavTitle),),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal:15),
        child: Column(
          children: [
          Expanded(
            flex: 2,
            child: ListCategory()
          ),
          Expanded(
            flex: 8,
            child: Text(""))
        
        ],),
      ),
      );
  }

 

 
}