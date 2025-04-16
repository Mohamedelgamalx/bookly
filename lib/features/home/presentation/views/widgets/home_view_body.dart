import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), CustomListItem()]);
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.textImage),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
