import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
const FavoritesView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      title: const Text(AppConstants.favoritesNavTitle),),
    body: const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text("")//CommonGridList(),
    )
    ,);
  }
}