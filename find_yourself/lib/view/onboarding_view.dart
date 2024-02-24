import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/widget/find_your_self_button.dart';
import 'package:find_yourself/view/widget/onboarding_backImage.dart';
import 'package:find_yourself/view/widget/onboarding_title.dart';
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
          onboarding_backImage(defaultImageUrl: defaultImageUrl),
          const _Onboarding_bottom(),
    
       
      ],));
  }
}

class _Onboarding_bottom extends StatelessWidget {
  const _Onboarding_bottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         onboarding_title(
            onboardingTitle: AppConstants.onboardingTitle
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting ",
                style: TextStyle(
                  color: Colors.white,
        fontSize: 15)
                ),
            ),
            find_yourself_button(
            findYourselfButton: 
            AppConstants.findYourselfButton)
      ],),
    );
  }
}





