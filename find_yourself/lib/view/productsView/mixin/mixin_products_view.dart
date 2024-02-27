import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

mixin MixinProductsView {
  final List<String> sortTypeList = [
    "Lowest Price",
    "Highest Price",
    "Most Favorites"
  ];

  void showBottomSheetForSort(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _showBottomSheetTitle(title: AppConstants.sort,),
             
              _showBottomSheetListView(listType: sortTypeList,),
            ],
          ),
        );
      },
    );
  }

   void showBottomSheetForFilter(BuildContext context) {
  final  List<String> filterTypeList = [
    "Man",
    "Woman",
    "Child",
    "Unisex"];
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const _showBottomSheetTitle(title: AppConstants.filter,),
             
              _checkBoxListView(listType: filterTypeList,),
            ],
          ),
        );
    },
  );
}
}


class _showBottomSheetListView extends StatelessWidget {
  const _showBottomSheetListView({
    required this.listType,
  });
  final List<String> listType;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listType.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(listType[index],
            style: const TextStyle(color: 
             Colors.white
             ),
            ),
          onTap: () {
           
          },
        );
      },
    );
  }
}

class _checkBoxListView extends StatelessWidget {
   _checkBoxListView({
    required this.listType,
  });
  

  final List<String> listType;
  
  @override
    Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
      itemCount: listType.length,
      itemBuilder: (context,index){
        return CheckboxListTile(
          title: Text(listType[index]),
          value: false, 
          onChanged: (bool? value){
 if (value != null && value) {
                  
                } else {
                  
                }
          });
    });
      
      }
    
  }



class _showBottomSheetTitle extends StatelessWidget {
  const _showBottomSheetTitle({
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
