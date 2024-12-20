// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

Future<SubFuelStruct?> imgToData() async {
  // Step 1: Capture an image using the camera
  final picker = ImagePicker();
  final XFile? imageFile = await picker.pickImage(source: ImageSource.camera);

  if (imageFile == null) {
    return null; // No image captured
  }

  // Step 2: Perform OCR on the captured image
  final inputImage = InputImage.fromFilePath(imageFile.path);
  final textRecognizer = GoogleMlKit.vision.textRecognizer();
  final RecognizedText recognizedText =
      await textRecognizer.processImage(inputImage);
  String ocrText = recognizedText.text;

  // Step 3: Updated Regular Expressions
  RegExp numberRegex =
      RegExp(r'\b\d+\.\d+\b'); // Matches floating-point numbers
  List<Match> matches = numberRegex.allMatches(ocrText).toList();

  if (matches.length >= 2) {
    // Assume the first number is 'total cost' and the second is 'gallons'
    double totalCost = double.parse(matches[0].group(0)!);
    double gallons = double.parse(matches[1].group(0)!);

    // Step 4: Return the result as a SubFuelStruct
    return SubFuelStruct(amount: gallons, price: totalCost);
  }

  return null; // Return null if numbers aren't found
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
