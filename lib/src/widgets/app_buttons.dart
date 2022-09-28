import 'package:flutter/material.dart';
import 'package:weather_app_assessment/src/core/constants/colors.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final bool isLoading;

  const AppButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 64,
      width: 220,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
          primary: AppColors.light,
          onPrimary: AppColors.dark,
        ),
        child: isLoading
            ? const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  color: AppColors.deep,
                  strokeWidth: 2,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    label,
                    style: textTheme.headline5,
                  ),
                  const Icon(Icons.keyboard_arrow_up_outlined)
                ],
              ),
      ),
    );
  }
}
