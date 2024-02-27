import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/cartView/cart_view.dart';
import 'package:find_yourself/view/discover/widget/category/list_category.dart';
import 'package:find_yourself/core/common/common_grid_list.dart';
import 'package:find_yourself/view/favoritesView/favorites_view.dart';
import 'package:flutter/material.dart';

class DiscoverView extends StatelessWidget {
const DiscoverView({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text(AppConstants.discoverNavTitle),
      leading: IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  const FavoritesView()));
            },
          ),
          actions: [
            Stack(
              alignment: Alignment.topRight,
              children: [
             IconButton(onPressed: (){
                   Navigator.push(context,
        MaterialPageRoute(builder: (context)=>  const CartView()));
            }, icon: const Icon(Icons.shopping_basket),
            color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text("1",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold),),
            )
            ]
          
          )],
      
      
      ),
      body:   Padding(
        padding: const EdgeInsets.symmetric(horizontal:15),
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
              const Text(AppConstants.popular,style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
              TextButton(onPressed: (){},
               child: const Text(AppConstants.showAll,style: TextStyle(
                fontSize: 16,
                color: Colors.red),))
          ],)),
          const Expanded(
            flex: 7,
            child: CommonGridList()
            
            
            )
        
        ],),
      ),
      );
  }

 

 

 
}

