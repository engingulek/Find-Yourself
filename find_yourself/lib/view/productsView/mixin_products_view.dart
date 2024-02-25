

import 'package:flutter/material.dart';

mixin MixinProductsView  {
    void showBottomSheetForSort(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return const Center(
        child: Text('This is the bottom sheet'),
      );
    },
  );
}

  void showBottomSheetForFilter(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return const Center(
        child: Text('This is the bottom sheet'),
      );
    },
  );
}
}