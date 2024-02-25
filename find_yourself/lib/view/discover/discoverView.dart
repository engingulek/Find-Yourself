import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/discover/widget/category/list_category.dart';
import 'package:find_yourself/view/discover/widget/popular/popular_gridList.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatelessWidget {
const DiscoverView({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.discoverNavTitle),),
      body:   Padding(
        padding: EdgeInsets.symmetric(horizontal:15),
        child: Column(
          children: [
          const Expanded(
            flex: 2,
            child: ListCategory()
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const Text("Popular",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
              TextButton(onPressed: (){},
               child: const Text("Show All",style: TextStyle(
                fontSize: 16,
                color: Colors.red),))
          ],)),
          const Expanded(
            flex: 7,
            child: PopularGridList()
            
            
            )
        
        ],),
      ),
      );
  }

 

 

 
}

