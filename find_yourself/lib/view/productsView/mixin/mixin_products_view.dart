import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

mixin MixinProductsView {
  final List<String> sortTypeList = [
    "Lowest Price",
    "Highest Price",
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
               _ShowBottomSheetTitle(title: AppConstants.sort.value,),
             
              _ShowBottomSheetListView(listType: sortTypeList,),
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
      return   Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ShowBottomSheetTitle(title: AppConstants.filter.value,),
             
              _CheckBoxListView(listType: filterTypeList,),
            ],
          ),
        );
    },
  );
}
}


class _ShowBottomSheetListView extends StatelessWidget {
  const _ShowBottomSheetListView({
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

class _CheckBoxListView extends StatelessWidget {
  const _CheckBoxListView({
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



class _ShowBottomSheetTitle extends StatelessWidget {
  const _ShowBottomSheetTitle({
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
