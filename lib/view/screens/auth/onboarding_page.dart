import 'package:flutter/material.dart';
import 'package:yalla_app/core/utils/assets_constants.dart';
import 'package:yalla_app/widgets/onboarding_content.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingContent content;

  const OnboardingPage({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingContent(
      image: content.image,
      title: content.title,
      subText: content.subText,
    );
  }
}

final List<OnboardingContent> onboardingContent = [
  const OnboardingContent(
    image: 'assets/images/medium-shot@3x.png',
    title: 'Lorem Ipsum',
    subText:
        'Lorem ipsum dolor sit amet,\nconsectetur adipiscing saed do\neiusmod tempor incidinaadipiscing\nelit, nsed',
  ),
  const OnboardingContent(
    image: 'assets/images/view-illuminated-@3x.png',
    title: 'Lorem Ipsum',
    subText:
        'Lorem ipsum dolor sit amet,\nconsectetur adipiscing saed do\neiusmod tempor incidinaadipiscing\nelit, nsed',
  ),
];
