import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/discover/widget/popular/popular_gridList.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
const ProductsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(AppConstants.productsNavTitle),),
      body:  const Column(children: [
        Expanded(flex:1,child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          _SelectedCategoryInfo()
        ],),),
        Expanded(flex:1,child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
         _CommonButton(title: AppConstants.sort),
         _CommonButton(title:  AppConstants.filter)
        
        ],),),
        Expanded(flex:8,child: CommonGridList(),),
      ],),
      );
  }

 
}

class _SelectedCategoryInfo extends StatelessWidget {
  const _SelectedCategoryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Category: Category One",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);
  }
}

class _CommonButton extends StatelessWidget {
  const _CommonButton({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black ),
      onPressed: (){
     
     }, child:  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
       child: Text(title,style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold)),
     ));
  }
}