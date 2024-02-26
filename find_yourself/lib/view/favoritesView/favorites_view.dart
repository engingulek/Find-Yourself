import 'package:find_yourself/core/common/common_gridList.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
const FavoritesView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Favorites"),),
    body: const Padding(
      padding: EdgeInsets.only(top: 20),
      child: CommonGridList(),
    )
    
    ,);
  }
}