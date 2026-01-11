import 'package:flutter/material.dart';

class AppSpacing {
  // SizedBoxes for vertical spacing
  static const SizedBox verticalSmall = SizedBox(height: 4);
  static const SizedBox verticalMedium = SizedBox(height: 8);
  static const SizedBox verticalLarge = SizedBox(height: 16);
  static const SizedBox verticalXLarge = SizedBox(height: 24);
  static const SizedBox vXXL = SizedBox(height: 36);

  // SizedBoxes for horizontal spacing
  static const SizedBox horizontalSmall = SizedBox(width: 4);
  static const SizedBox horizontalMedium = SizedBox(width: 8);
  static const SizedBox horizontalLarge = SizedBox(width: 16);
  static const SizedBox horizontalXLarge = SizedBox(width: 24);

  // Padding constants
  static const EdgeInsets paddingAllSmall = EdgeInsets.all(4);
  static const EdgeInsets paddingAllMedium = EdgeInsets.all(8);
  static const EdgeInsets paddingAllLarge = EdgeInsets.all(16);
  static const EdgeInsets paddingAllXLarge = EdgeInsets.all(24);

  static const EdgeInsets paddingVerticalSmall = EdgeInsets.symmetric(
    vertical: 4,
  );
  static const EdgeInsets paddingVerticalMedium = EdgeInsets.symmetric(
    vertical: 8,
  );
  static const EdgeInsets paddingVerticalLarge = EdgeInsets.symmetric(
    vertical: 16,
  );

  static const EdgeInsets paddingHorizontalSmall = EdgeInsets.symmetric(
    horizontal: 4,
  );
  static const EdgeInsets paddingHorizontalMedium = EdgeInsets.symmetric(
    horizontal: 8,
  );
  static const EdgeInsets paddingHorizontalLarge = EdgeInsets.symmetric(
    horizontal: 16,
  );

  static double hPadding(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.03;
}
