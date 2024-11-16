import 'dart:io';
import 'package:csv/csv.dart';
import 'dart:math';

enum ParamType {
  int,
  double,
  string,
  bool,
  dateTime,
}


Future<List<List<dynamic>>> readCsv(String filePath) async {
  try {
    // Read the file as a string
    final file = File(filePath);
    final contents = await file.readAsString();

    // Parse the CSV
    const csvParser = CsvToListConverter();
    final List<List<dynamic>> rows = csvParser.convert(contents);

    return rows;
  } catch (e) {
    print('Error reading the CSV file: $e');
    return [];
  }
}


class RandomData {
  final Random _random = Random();

  // Generates a random integer between min and max (inclusive)
  int randomInteger(int min, int max) {
    return min + _random.nextInt(max - min + 1);
  }

  // Generates a random double between min and max
  double randomDouble(double min, double max) {
    return min + _random.nextDouble() * (max - min);
  }

  // Generates a random date within a specific range of years
  DateTime randomDate() {
    int year = _random.nextInt(20) + 2000; // Random year between 2000 and 2020
    int month = _random.nextInt(12) + 1;  // Random month between 1 and 12
    int day = _random.nextInt(28) + 1;    // Random day between 1 and 28 to avoid invalid dates
    return DateTime(year, month, day);
  }
}

String serializeParam(dynamic value, ParamType paramType) {
  switch (paramType) {
    case ParamType.int:
      if (value is int) {
        return value.toString();
      } else {
        throw ArgumentError('Expected an integer.');
      }
    case ParamType.double:
      if (value is double) {
        return value.toStringAsFixed(2); // For example, rounding to 2 decimal places
      } else {
        throw ArgumentError('Expected a double.');
      }
    case ParamType.string:
      if (value is String) {
        return value; // Directly return the string
      } else {
        throw ArgumentError('Expected a string.');
      }
    case ParamType.bool:
      if (value is bool) {
        return value.toString();
      } else {
        throw ArgumentError('Expected a boolean.');
      }
    case ParamType.dateTime:
      if (value is DateTime) {
        return value.toIso8601String(); // Serialize DateTime to ISO 8601 format
      } else {
        throw ArgumentError('Expected a DateTime.');
      }
    default:
      throw ArgumentError('Unsupported parameter type.');
  }
}

Map<String, String> removeNulls(Map<String, String> map) {
  return Map.fromEntries(map.entries.where((entry) => entry.value != null));
}