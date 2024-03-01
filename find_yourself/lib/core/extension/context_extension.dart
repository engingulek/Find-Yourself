
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width; 

  double get categoryImageHeight => 80;
  double get categoryImageWidget => 80;

  double get categoryImageCircle => categoryImageHeight / 2;

  
  }