import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/view/onboardingView/widget/find_your_self_button.dart';
import 'package:find_yourself/view/onboardingView/widget/onboarding_title.dart';
import 'package:flutter/material.dart';

class OnboardingBottom extends StatelessWidget {
  const OnboardingBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         OnboardingTitle(
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
            FindYourSelfButton(
            title: AppConstants.findYourselfButton)
      ],),
    );
  }
}
