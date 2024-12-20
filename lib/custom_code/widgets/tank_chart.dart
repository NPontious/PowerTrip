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

import 'package:fl_chart/fl_chart.dart';

class TankChart extends StatefulWidget {
  const TankChart({
    super.key,
    this.width,
    this.height,
    required this.subFuelData, // A required parameter for the list of SubFuelStructs
  });

  final double? width;
  final double? height;
  final List<SubFuelStruct> subFuelData; // List of SubFuelStructs

  @override
  State<TankChart> createState() => _TankChartState();
}

class _TankChartState extends State<TankChart> {
  @override
  Widget build(BuildContext context) {
    // Prepare data for the stacked bar chart
    double totalAmount = 0;

    // Create a list of bar rods (stacked segments)
    List<BarChartRodData> bars = [];

    // Calculate the stacked bars and accumulate the total amount
    for (var data in widget.subFuelData) {
      totalAmount += data.amount; // Just sum the amounts for the stacked bars
      bars.add(
        BarChartRodData(
          toY: totalAmount, // Total height for each segment (stacked behavior)
          color: Colors.blue, // You can customize the color here
          borderRadius: BorderRadius.zero, // Optional: rounded corners for bars
          width: 22, // Width of each bar
        ),
      );
    }

    // Return a container with the FLChart BarChart
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 250, // Default height if not provided
      padding: const EdgeInsets.all(8),
      child: BarChart(
        BarChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(
              x: 0, // Only one bar in the chart
              barRods: bars,
              showingTooltipIndicators: [0], // Show tooltip on hover
            ),
          ],
          alignment: BarChartAlignment.spaceAround, // Center the bars
        ),
      ),
    );
  }
}
