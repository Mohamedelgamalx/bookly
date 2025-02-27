import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/BOOKLY.png"),
        const SizedBox(height: 12,),
        const Text('Read Free Books',
        textAlign: TextAlign.center,)
      ],
    );
  }
}
