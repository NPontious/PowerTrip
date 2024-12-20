// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

class LiquidJar extends StatefulWidget {
  const LiquidJar({
    super.key,
    this.width,
    this.height,
    required this.subFuelList, // Changed from waterPercentage to subFuelList
  });

  final double? width;
  final double? height;
  final List<SubFuelStruct> subFuelList; // List of SubFuel

  @override
  State<LiquidJar> createState() => _LiquidJarState();
}

class _LiquidJarState extends State<LiquidJar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 6),
      vsync: this,
      upperBound: 2 * pi, // Full revolution for the wave animation
    );
    _controller.repeat(); // Loop the wave animation
  }

  @override
  Widget build(BuildContext context) {
    // Use null-aware operators to provide default values if widget.width or widget.height is null
    double width = widget.width ?? 200; // Default width
    double height = widget.height ?? 400; // Default height

    return CustomPaint(
      size: Size(width, height), // Use the width and height values
      painter: WaterJarPainter(
        controller: _controller,
        subFuelList: widget.subFuelList, // Pass subFuelList to the painter
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class WaterJarPainter extends CustomPainter {
  final AnimationController controller;
  final List<SubFuelStruct> subFuelList;

  WaterJarPainter({required this.controller, required this.subFuelList})
      : super(repaint: controller);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint jarPaint = Paint()
      ..color = Colors.brown[300]!
      ..style = PaintingStyle.fill;

    // Draw the jar (a simple rectangle with rounded corners)
    final jarRect = Rect.fromLTWH(50, 50, 100, 300);
    final jarPath = Path()
      ..addRRect(RRect.fromRectAndRadius(jarRect, Radius.circular(20)));
    canvas.drawPath(jarPath, jarPaint);

    // Calculate total amount of fuel in the subFuelList
    double totalAmount =
        subFuelList.fold(0.0, (sum, subFuel) => sum + subFuel.amount);

    // Draw liquid layers dynamically based on the subFuelList
    double accumulatedHeight = 0; // Track the height of each liquid layer

    for (int i = 0; i < subFuelList.length; i++) {
      double layerAmount = subFuelList[i].amount;
      double layerHeight =
          (layerAmount / totalAmount) * size.height; // Proportional height

      // Choose a distinct color for each layer (can be customized)
      Color layerColor = Color.lerp(
          Colors.blue[100]!, Colors.blue[900]!, i / subFuelList.length)!;

      // Draw each liquid layer
      drawLiquidLayer(canvas, size, accumulatedHeight, layerHeight, layerColor);

      // Update accumulatedHeight for the next layer
      accumulatedHeight += layerHeight;
    }
  }

  void drawLiquidLayer(Canvas canvas, Size size, double accumulatedHeight,
      double layerHeight, Color color) {
    final Paint liquidPaint = Paint()
      ..color = color.withOpacity(0.6) // Semi-transparent layer for depth
      ..style = PaintingStyle.fill;

    Path liquidPath = Path();
    double waveSpeed = controller.value * 2 * pi; // Animate the wave motion

    // Start the liquid path from the left side of the jar
    liquidPath.moveTo(50, size.height - accumulatedHeight);

    // Create the wavy surface based on the sin function
    for (double x = 50; x <= 150; x++) {
      double y = size.height -
          accumulatedHeight +
          waveAmplitudeForLayer(x) * sin(waveSpeed + x * 0.05);
      liquidPath.lineTo(x, y);
    }

    // Close the path to the right side of the jar and bottom
    liquidPath.lineTo(150, size.height - accumulatedHeight + layerHeight);
    liquidPath.lineTo(50, size.height - accumulatedHeight + layerHeight);
    liquidPath.close();

    // Draw the liquid layer
    canvas.drawPath(liquidPath, liquidPaint);
  }

  // Function for wave amplitude that varies per layer
  double waveAmplitudeForLayer(double x) {
    return 5.0 + (x % 2) * 10.0; // Adjust this based on desired wave pattern
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
