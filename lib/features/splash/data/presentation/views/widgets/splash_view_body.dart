import 'package:bookly/constants.dart';
import 'package:bookly/features/splash/data/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/BOOKLY.png"),
        const SizedBox(height: 12,),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }


  void initSlideAnimation() {
    animationController = AnimationController(vsync: this ,duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2) ,end: Offset(0, 0) ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    });
  }
}
