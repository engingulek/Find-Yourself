import 'package:find_yourself/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class OnboardingBackImage extends StatelessWidget {
  const OnboardingBackImage({
    super.key,
    required this.defaultImageUrl,
  });

  final String defaultImageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      defaultImageUrl,
       fit: BoxFit.cover,
       width: context.width,
        height: context.height,
      );
  }
}