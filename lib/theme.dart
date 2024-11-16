import 'package:flutter/material.dart';

class FlutterFlowTheme extends InheritedWidget {
  final ThemeData themeData;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle labelMedium;
  final TextStyle displaySmall;
  final TextStyle titleSmall;
  final TextStyle labelLarge;
  final TextStyle titleLarge;
  final TextStyle labelSmall;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final Color alternate;
  final Color accent1;
  final Color info;
  final Color primary;
  final Color primaryText;
  final Color secondaryText;
  final Color primaryBackground;
  final Color secondary;

  const FlutterFlowTheme({super.key, 
    required this.themeData,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.labelMedium,
    required this.displaySmall,
    required this.titleSmall,
    required this.labelLarge,
    required this.titleLarge,
    required this.labelSmall,
    required this.alternate,
    required this.accent1,
    required this.bodyMedium,
    required this.bodySmall,
    required this.info,
    required this.primary,
    required this.primaryText,
    required this.secondaryText,
    required this.primaryBackground,
    required this.secondary,
    required super.child,
  });

  // Retrieve the theme instance
  static FlutterFlowTheme of(BuildContext context) {
    final FlutterFlowTheme? instance =
        context.dependOnInheritedWidgetOfExactType<FlutterFlowTheme>();
    assert(instance != null, 'No FlutterFlowTheme found in context');
    return instance!;
  }

  // Define additional theme properties
  Color get secondaryBackground => themeData.colorScheme.surface;

  @override
  bool updateShouldNotify(FlutterFlowTheme oldWidget) {
    return themeData != oldWidget.themeData ||
        headlineMedium != oldWidget.headlineMedium ||
        headlineSmall != oldWidget.headlineSmall ||
        labelMedium != oldWidget.labelMedium ||
        displaySmall != oldWidget.displaySmall ||
        titleSmall != oldWidget.titleSmall ||
        labelLarge != oldWidget.labelLarge ||
        titleLarge != oldWidget.titleLarge ||
        labelSmall != oldWidget.labelSmall ||
        alternate != oldWidget.alternate ||
        bodyMedium != oldWidget.bodyMedium ||
        bodySmall != oldWidget.bodySmall ||
        info != oldWidget.info ||
        primary != oldWidget.primary ||
        primaryText != oldWidget.primaryText ||
        secondaryText != oldWidget.secondaryText ||
        primaryBackground != oldWidget.primaryBackground ||
        secondary != oldWidget.secondary ||
        accent1 != oldWidget.accent1;
  }
}

// Extension for overriding TextStyle
extension TextStyleExtensions on TextStyle {
  TextStyle override({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    String? fontFamily,
    double? letterSpacing,
    double? wordSpacing,
  }) {
    return copyWith(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
    );
  }
}
