import 'package:find_yourself/view/onboardingView/widget/onboarding_back_image.dart';
import 'package:find_yourself/view/onboardingView/widget/onboarding_bottom.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
const OnboardingView({ Key? key }) : super(key: key);
final defaultImageUrl = "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?q=80&w=3098&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          OnboardingBackImage(defaultImageUrl: defaultImageUrl),
          const OnboardingBottom(),
      ],));
  }
}






