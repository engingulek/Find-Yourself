import 'package:flutter/material.dart';

class onboarding_title extends StatelessWidget {
  const onboarding_title({
    super.key, required this.onboardingTitle,
  });
  final String onboardingTitle;
  @override
  Widget build(BuildContext context) {
    return  Text(
       onboardingTitle,
       style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,fontSize: 30)
       );
  }
}