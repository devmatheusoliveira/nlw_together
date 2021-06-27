import 'package:flutter/material.dart';
import 'package:nlw_together/shared/themes/app_text_styles.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';
import 'package:nlw_together/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottonSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;

  final String title;
  final String subtitle;

  const BottonSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Text.rich(
                    TextSpan(
                      text: title,
                      style: TextStyles.buttonBoldHeading,
                      children: [
                        TextSpan(
                          style: TextStyles.buttonHeading,
                          text: "\n$subtitle",
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 1,
                  color: AppColors.stroke,
                ),
                SetLabelButtons(
                  enablePrimaryColor: true,
                  primaryLabel: primaryLabel,
                  primaryOnPressed: primaryOnPressed,
                  secondaryLabel: secondaryLabel,
                  secondaryOnPressed: secondaryOnPressed,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
