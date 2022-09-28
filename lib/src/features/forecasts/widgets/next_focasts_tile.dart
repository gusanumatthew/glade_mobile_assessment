import 'package:flutter/material.dart';
import 'package:weather_app_assessment/src/core/constants/dimensions.dart';
import 'package:weather_app_assessment/src/features/forecasts/models/next_model.dart';

class NextTile extends StatelessWidget {
  final NextModel model;
  const NextTile({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.small),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              model.day!,
              style: textTheme.headline3,
            ),
            Image.asset(
              model.symbols!,
              width: 80,
            ),
            Text(
              model.degree!,
              style: textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
