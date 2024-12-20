// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    DateTime? time,
    double? altitude,
    double? averageSpeed,
    double? averageSpeedGPS,
    double? calculatedInstantFuelConsumption,
    double? calculatedInstantFuelRate,
    double? distanceTravelled,
    double? distanceTravelledTotal,
    double? engineCoolantTemperature,
    int? engineRPM,
    double? engineRPMX1000,
    double? fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
    double? fuelUsed,
    double? fuelUsedTotal,
    double? fuelUsedPrice,
    double? fuelUsedPriceTotal,
    double? instantEnginePower,
    double? mAFAirFlowRate,
    double? oxygenSensor1WideRangeCurrent,
    double? oxygenSensor1WideRangeEquivalenceRatio,
    double? powerFromMAF,
    double? speed,
    double? throttlePosition,
    double? vehicleAcceleration,
    double? vehicleSpeed,
    double? latitude,
    double? longitude,
  })  : _time = time,
        _altitude = altitude,
        _averageSpeed = averageSpeed,
        _averageSpeedGPS = averageSpeedGPS,
        _calculatedInstantFuelConsumption = calculatedInstantFuelConsumption,
        _calculatedInstantFuelRate = calculatedInstantFuelRate,
        _distanceTravelled = distanceTravelled,
        _distanceTravelledTotal = distanceTravelledTotal,
        _engineCoolantTemperature = engineCoolantTemperature,
        _engineRPM = engineRPM,
        _engineRPMX1000 = engineRPMX1000,
        _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition =
            fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
        _fuelUsed = fuelUsed,
        _fuelUsedTotal = fuelUsedTotal,
        _fuelUsedPrice = fuelUsedPrice,
        _fuelUsedPriceTotal = fuelUsedPriceTotal,
        _instantEnginePower = instantEnginePower,
        _mAFAirFlowRate = mAFAirFlowRate,
        _oxygenSensor1WideRangeCurrent = oxygenSensor1WideRangeCurrent,
        _oxygenSensor1WideRangeEquivalenceRatio =
            oxygenSensor1WideRangeEquivalenceRatio,
        _powerFromMAF = powerFromMAF,
        _speed = speed,
        _throttlePosition = throttlePosition,
        _vehicleAcceleration = vehicleAcceleration,
        _vehicleSpeed = vehicleSpeed,
        _latitude = latitude,
        _longitude = longitude;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  set time(DateTime? val) => _time = val;

  bool hasTime() => _time != null;

  // "Altitude" field.
  double? _altitude;
  double get altitude => _altitude ?? 0.0;
  set altitude(double? val) => _altitude = val;

  void incrementAltitude(double amount) => altitude = altitude + amount;

  bool hasAltitude() => _altitude != null;

  // "Average_speed" field.
  double? _averageSpeed;
  double get averageSpeed => _averageSpeed ?? 0.0;
  set averageSpeed(double? val) => _averageSpeed = val;

  void incrementAverageSpeed(double amount) =>
      averageSpeed = averageSpeed + amount;

  bool hasAverageSpeed() => _averageSpeed != null;

  // "Average_speed_GPS" field.
  double? _averageSpeedGPS;
  double get averageSpeedGPS => _averageSpeedGPS ?? 0.0;
  set averageSpeedGPS(double? val) => _averageSpeedGPS = val;

  void incrementAverageSpeedGPS(double amount) =>
      averageSpeedGPS = averageSpeedGPS + amount;

  bool hasAverageSpeedGPS() => _averageSpeedGPS != null;

  // "Calculated_instant_fuel_consumption" field.
  double? _calculatedInstantFuelConsumption;
  double get calculatedInstantFuelConsumption =>
      _calculatedInstantFuelConsumption ?? 0.0;
  set calculatedInstantFuelConsumption(double? val) =>
      _calculatedInstantFuelConsumption = val;

  void incrementCalculatedInstantFuelConsumption(double amount) =>
      calculatedInstantFuelConsumption =
          calculatedInstantFuelConsumption + amount;

  bool hasCalculatedInstantFuelConsumption() =>
      _calculatedInstantFuelConsumption != null;

  // "Calculated_instant_fuel_rate" field.
  double? _calculatedInstantFuelRate;
  double get calculatedInstantFuelRate => _calculatedInstantFuelRate ?? 0.0;
  set calculatedInstantFuelRate(double? val) =>
      _calculatedInstantFuelRate = val;

  void incrementCalculatedInstantFuelRate(double amount) =>
      calculatedInstantFuelRate = calculatedInstantFuelRate + amount;

  bool hasCalculatedInstantFuelRate() => _calculatedInstantFuelRate != null;

  // "Distance_travelled" field.
  double? _distanceTravelled;
  double get distanceTravelled => _distanceTravelled ?? 0.0;
  set distanceTravelled(double? val) => _distanceTravelled = val;

  void incrementDistanceTravelled(double amount) =>
      distanceTravelled = distanceTravelled + amount;

  bool hasDistanceTravelled() => _distanceTravelled != null;

  // "Distance_travelled_total" field.
  double? _distanceTravelledTotal;
  double get distanceTravelledTotal => _distanceTravelledTotal ?? 0.0;
  set distanceTravelledTotal(double? val) => _distanceTravelledTotal = val;

  void incrementDistanceTravelledTotal(double amount) =>
      distanceTravelledTotal = distanceTravelledTotal + amount;

  bool hasDistanceTravelledTotal() => _distanceTravelledTotal != null;

  // "Engine_coolant_temperature" field.
  double? _engineCoolantTemperature;
  double get engineCoolantTemperature => _engineCoolantTemperature ?? 0.0;
  set engineCoolantTemperature(double? val) => _engineCoolantTemperature = val;

  void incrementEngineCoolantTemperature(double amount) =>
      engineCoolantTemperature = engineCoolantTemperature + amount;

  bool hasEngineCoolantTemperature() => _engineCoolantTemperature != null;

  // "Engine_RPM" field.
  int? _engineRPM;
  int get engineRPM => _engineRPM ?? 0;
  set engineRPM(int? val) => _engineRPM = val;

  void incrementEngineRPM(int amount) => engineRPM = engineRPM + amount;

  bool hasEngineRPM() => _engineRPM != null;

  // "Engine_RPM_x1000" field.
  double? _engineRPMX1000;
  double get engineRPMX1000 => _engineRPMX1000 ?? 0.0;
  set engineRPMX1000(double? val) => _engineRPMX1000 = val;

  void incrementEngineRPMX1000(double amount) =>
      engineRPMX1000 = engineRPMX1000 + amount;

  bool hasEngineRPMX1000() => _engineRPMX1000 != null;

  // "Fuel_economizer_based_on_fuel_system_status_and_throttle_position" field.
  double? _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition;
  double get fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition =>
      _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition ?? 0.0;
  set fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition(double? val) =>
      _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition = val;

  void incrementFuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition(
          double amount) =>
      fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition =
          fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition + amount;

  bool hasFuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition() =>
      _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition != null;

  // "Fuel_used" field.
  double? _fuelUsed;
  double get fuelUsed => _fuelUsed ?? 0.0;
  set fuelUsed(double? val) => _fuelUsed = val;

  void incrementFuelUsed(double amount) => fuelUsed = fuelUsed + amount;

  bool hasFuelUsed() => _fuelUsed != null;

  // "Fuel_used_total" field.
  double? _fuelUsedTotal;
  double get fuelUsedTotal => _fuelUsedTotal ?? 0.0;
  set fuelUsedTotal(double? val) => _fuelUsedTotal = val;

  void incrementFuelUsedTotal(double amount) =>
      fuelUsedTotal = fuelUsedTotal + amount;

  bool hasFuelUsedTotal() => _fuelUsedTotal != null;

  // "Fuel_used_price" field.
  double? _fuelUsedPrice;
  double get fuelUsedPrice => _fuelUsedPrice ?? 0.0;
  set fuelUsedPrice(double? val) => _fuelUsedPrice = val;

  void incrementFuelUsedPrice(double amount) =>
      fuelUsedPrice = fuelUsedPrice + amount;

  bool hasFuelUsedPrice() => _fuelUsedPrice != null;

  // "Fuel_used_price_total" field.
  double? _fuelUsedPriceTotal;
  double get fuelUsedPriceTotal => _fuelUsedPriceTotal ?? 0.0;
  set fuelUsedPriceTotal(double? val) => _fuelUsedPriceTotal = val;

  void incrementFuelUsedPriceTotal(double amount) =>
      fuelUsedPriceTotal = fuelUsedPriceTotal + amount;

  bool hasFuelUsedPriceTotal() => _fuelUsedPriceTotal != null;

  // "Instant_engine_power" field.
  double? _instantEnginePower;
  double get instantEnginePower => _instantEnginePower ?? 0.0;
  set instantEnginePower(double? val) => _instantEnginePower = val;

  void incrementInstantEnginePower(double amount) =>
      instantEnginePower = instantEnginePower + amount;

  bool hasInstantEnginePower() => _instantEnginePower != null;

  // "MAF_air_flow_rate" field.
  double? _mAFAirFlowRate;
  double get mAFAirFlowRate => _mAFAirFlowRate ?? 0.0;
  set mAFAirFlowRate(double? val) => _mAFAirFlowRate = val;

  void incrementMAFAirFlowRate(double amount) =>
      mAFAirFlowRate = mAFAirFlowRate + amount;

  bool hasMAFAirFlowRate() => _mAFAirFlowRate != null;

  // "Oxygen_sensor_1_Wide_Range_Current" field.
  double? _oxygenSensor1WideRangeCurrent;
  double get oxygenSensor1WideRangeCurrent =>
      _oxygenSensor1WideRangeCurrent ?? 0.0;
  set oxygenSensor1WideRangeCurrent(double? val) =>
      _oxygenSensor1WideRangeCurrent = val;

  void incrementOxygenSensor1WideRangeCurrent(double amount) =>
      oxygenSensor1WideRangeCurrent = oxygenSensor1WideRangeCurrent + amount;

  bool hasOxygenSensor1WideRangeCurrent() =>
      _oxygenSensor1WideRangeCurrent != null;

  // "Oxygen_sensor_1_Wide_Range_Equivalence_ratio" field.
  double? _oxygenSensor1WideRangeEquivalenceRatio;
  double get oxygenSensor1WideRangeEquivalenceRatio =>
      _oxygenSensor1WideRangeEquivalenceRatio ?? 0.0;
  set oxygenSensor1WideRangeEquivalenceRatio(double? val) =>
      _oxygenSensor1WideRangeEquivalenceRatio = val;

  void incrementOxygenSensor1WideRangeEquivalenceRatio(double amount) =>
      oxygenSensor1WideRangeEquivalenceRatio =
          oxygenSensor1WideRangeEquivalenceRatio + amount;

  bool hasOxygenSensor1WideRangeEquivalenceRatio() =>
      _oxygenSensor1WideRangeEquivalenceRatio != null;

  // "Power_from_MAF" field.
  double? _powerFromMAF;
  double get powerFromMAF => _powerFromMAF ?? 0.0;
  set powerFromMAF(double? val) => _powerFromMAF = val;

  void incrementPowerFromMAF(double amount) =>
      powerFromMAF = powerFromMAF + amount;

  bool hasPowerFromMAF() => _powerFromMAF != null;

  // "Speed" field.
  double? _speed;
  double get speed => _speed ?? 0.0;
  set speed(double? val) => _speed = val;

  void incrementSpeed(double amount) => speed = speed + amount;

  bool hasSpeed() => _speed != null;

  // "Throttle_position" field.
  double? _throttlePosition;
  double get throttlePosition => _throttlePosition ?? 0.0;
  set throttlePosition(double? val) => _throttlePosition = val;

  void incrementThrottlePosition(double amount) =>
      throttlePosition = throttlePosition + amount;

  bool hasThrottlePosition() => _throttlePosition != null;

  // "Vehicle_acceleration" field.
  double? _vehicleAcceleration;
  double get vehicleAcceleration => _vehicleAcceleration ?? 0.0;
  set vehicleAcceleration(double? val) => _vehicleAcceleration = val;

  void incrementVehicleAcceleration(double amount) =>
      vehicleAcceleration = vehicleAcceleration + amount;

  bool hasVehicleAcceleration() => _vehicleAcceleration != null;

  // "Vehicle_speed" field.
  double? _vehicleSpeed;
  double get vehicleSpeed => _vehicleSpeed ?? 0.0;
  set vehicleSpeed(double? val) => _vehicleSpeed = val;

  void incrementVehicleSpeed(double amount) =>
      vehicleSpeed = vehicleSpeed + amount;

  bool hasVehicleSpeed() => _vehicleSpeed != null;

  // "Latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "Longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        time: data['time'] as DateTime?,
        altitude: castToType<double>(data['Altitude']),
        averageSpeed: castToType<double>(data['Average_speed']),
        averageSpeedGPS: castToType<double>(data['Average_speed_GPS']),
        calculatedInstantFuelConsumption:
            castToType<double>(data['Calculated_instant_fuel_consumption']),
        calculatedInstantFuelRate:
            castToType<double>(data['Calculated_instant_fuel_rate']),
        distanceTravelled: castToType<double>(data['Distance_travelled']),
        distanceTravelledTotal:
            castToType<double>(data['Distance_travelled_total']),
        engineCoolantTemperature:
            castToType<double>(data['Engine_coolant_temperature']),
        engineRPM: castToType<int>(data['Engine_RPM']),
        engineRPMX1000: castToType<double>(data['Engine_RPM_x1000']),
        fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition:
            castToType<double>(data[
                'Fuel_economizer_based_on_fuel_system_status_and_throttle_position']),
        fuelUsed: castToType<double>(data['Fuel_used']),
        fuelUsedTotal: castToType<double>(data['Fuel_used_total']),
        fuelUsedPrice: castToType<double>(data['Fuel_used_price']),
        fuelUsedPriceTotal: castToType<double>(data['Fuel_used_price_total']),
        instantEnginePower: castToType<double>(data['Instant_engine_power']),
        mAFAirFlowRate: castToType<double>(data['MAF_air_flow_rate']),
        oxygenSensor1WideRangeCurrent:
            castToType<double>(data['Oxygen_sensor_1_Wide_Range_Current']),
        oxygenSensor1WideRangeEquivalenceRatio: castToType<double>(
            data['Oxygen_sensor_1_Wide_Range_Equivalence_ratio']),
        powerFromMAF: castToType<double>(data['Power_from_MAF']),
        speed: castToType<double>(data['Speed']),
        throttlePosition: castToType<double>(data['Throttle_position']),
        vehicleAcceleration: castToType<double>(data['Vehicle_acceleration']),
        vehicleSpeed: castToType<double>(data['Vehicle_speed']),
        latitude: castToType<double>(data['Latitude']),
        longitude: castToType<double>(data['Longitude']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'Altitude': _altitude,
        'Average_speed': _averageSpeed,
        'Average_speed_GPS': _averageSpeedGPS,
        'Calculated_instant_fuel_consumption':
            _calculatedInstantFuelConsumption,
        'Calculated_instant_fuel_rate': _calculatedInstantFuelRate,
        'Distance_travelled': _distanceTravelled,
        'Distance_travelled_total': _distanceTravelledTotal,
        'Engine_coolant_temperature': _engineCoolantTemperature,
        'Engine_RPM': _engineRPM,
        'Engine_RPM_x1000': _engineRPMX1000,
        'Fuel_economizer_based_on_fuel_system_status_and_throttle_position':
            _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
        'Fuel_used': _fuelUsed,
        'Fuel_used_total': _fuelUsedTotal,
        'Fuel_used_price': _fuelUsedPrice,
        'Fuel_used_price_total': _fuelUsedPriceTotal,
        'Instant_engine_power': _instantEnginePower,
        'MAF_air_flow_rate': _mAFAirFlowRate,
        'Oxygen_sensor_1_Wide_Range_Current': _oxygenSensor1WideRangeCurrent,
        'Oxygen_sensor_1_Wide_Range_Equivalence_ratio':
            _oxygenSensor1WideRangeEquivalenceRatio,
        'Power_from_MAF': _powerFromMAF,
        'Speed': _speed,
        'Throttle_position': _throttlePosition,
        'Vehicle_acceleration': _vehicleAcceleration,
        'Vehicle_speed': _vehicleSpeed,
        'Latitude': _latitude,
        'Longitude': _longitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.DateTime,
        ),
        'Altitude': serializeParam(
          _altitude,
          ParamType.double,
        ),
        'Average_speed': serializeParam(
          _averageSpeed,
          ParamType.double,
        ),
        'Average_speed_GPS': serializeParam(
          _averageSpeedGPS,
          ParamType.double,
        ),
        'Calculated_instant_fuel_consumption': serializeParam(
          _calculatedInstantFuelConsumption,
          ParamType.double,
        ),
        'Calculated_instant_fuel_rate': serializeParam(
          _calculatedInstantFuelRate,
          ParamType.double,
        ),
        'Distance_travelled': serializeParam(
          _distanceTravelled,
          ParamType.double,
        ),
        'Distance_travelled_total': serializeParam(
          _distanceTravelledTotal,
          ParamType.double,
        ),
        'Engine_coolant_temperature': serializeParam(
          _engineCoolantTemperature,
          ParamType.double,
        ),
        'Engine_RPM': serializeParam(
          _engineRPM,
          ParamType.int,
        ),
        'Engine_RPM_x1000': serializeParam(
          _engineRPMX1000,
          ParamType.double,
        ),
        'Fuel_economizer_based_on_fuel_system_status_and_throttle_position':
            serializeParam(
          _fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
          ParamType.double,
        ),
        'Fuel_used': serializeParam(
          _fuelUsed,
          ParamType.double,
        ),
        'Fuel_used_total': serializeParam(
          _fuelUsedTotal,
          ParamType.double,
        ),
        'Fuel_used_price': serializeParam(
          _fuelUsedPrice,
          ParamType.double,
        ),
        'Fuel_used_price_total': serializeParam(
          _fuelUsedPriceTotal,
          ParamType.double,
        ),
        'Instant_engine_power': serializeParam(
          _instantEnginePower,
          ParamType.double,
        ),
        'MAF_air_flow_rate': serializeParam(
          _mAFAirFlowRate,
          ParamType.double,
        ),
        'Oxygen_sensor_1_Wide_Range_Current': serializeParam(
          _oxygenSensor1WideRangeCurrent,
          ParamType.double,
        ),
        'Oxygen_sensor_1_Wide_Range_Equivalence_ratio': serializeParam(
          _oxygenSensor1WideRangeEquivalenceRatio,
          ParamType.double,
        ),
        'Power_from_MAF': serializeParam(
          _powerFromMAF,
          ParamType.double,
        ),
        'Speed': serializeParam(
          _speed,
          ParamType.double,
        ),
        'Throttle_position': serializeParam(
          _throttlePosition,
          ParamType.double,
        ),
        'Vehicle_acceleration': serializeParam(
          _vehicleAcceleration,
          ParamType.double,
        ),
        'Vehicle_speed': serializeParam(
          _vehicleSpeed,
          ParamType.double,
        ),
        'Latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'Longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        time: deserializeParam(
          data['time'],
          ParamType.DateTime,
          false,
        ),
        altitude: deserializeParam(
          data['Altitude'],
          ParamType.double,
          false,
        ),
        averageSpeed: deserializeParam(
          data['Average_speed'],
          ParamType.double,
          false,
        ),
        averageSpeedGPS: deserializeParam(
          data['Average_speed_GPS'],
          ParamType.double,
          false,
        ),
        calculatedInstantFuelConsumption: deserializeParam(
          data['Calculated_instant_fuel_consumption'],
          ParamType.double,
          false,
        ),
        calculatedInstantFuelRate: deserializeParam(
          data['Calculated_instant_fuel_rate'],
          ParamType.double,
          false,
        ),
        distanceTravelled: deserializeParam(
          data['Distance_travelled'],
          ParamType.double,
          false,
        ),
        distanceTravelledTotal: deserializeParam(
          data['Distance_travelled_total'],
          ParamType.double,
          false,
        ),
        engineCoolantTemperature: deserializeParam(
          data['Engine_coolant_temperature'],
          ParamType.double,
          false,
        ),
        engineRPM: deserializeParam(
          data['Engine_RPM'],
          ParamType.int,
          false,
        ),
        engineRPMX1000: deserializeParam(
          data['Engine_RPM_x1000'],
          ParamType.double,
          false,
        ),
        fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition:
            deserializeParam(
          data[
              'Fuel_economizer_based_on_fuel_system_status_and_throttle_position'],
          ParamType.double,
          false,
        ),
        fuelUsed: deserializeParam(
          data['Fuel_used'],
          ParamType.double,
          false,
        ),
        fuelUsedTotal: deserializeParam(
          data['Fuel_used_total'],
          ParamType.double,
          false,
        ),
        fuelUsedPrice: deserializeParam(
          data['Fuel_used_price'],
          ParamType.double,
          false,
        ),
        fuelUsedPriceTotal: deserializeParam(
          data['Fuel_used_price_total'],
          ParamType.double,
          false,
        ),
        instantEnginePower: deserializeParam(
          data['Instant_engine_power'],
          ParamType.double,
          false,
        ),
        mAFAirFlowRate: deserializeParam(
          data['MAF_air_flow_rate'],
          ParamType.double,
          false,
        ),
        oxygenSensor1WideRangeCurrent: deserializeParam(
          data['Oxygen_sensor_1_Wide_Range_Current'],
          ParamType.double,
          false,
        ),
        oxygenSensor1WideRangeEquivalenceRatio: deserializeParam(
          data['Oxygen_sensor_1_Wide_Range_Equivalence_ratio'],
          ParamType.double,
          false,
        ),
        powerFromMAF: deserializeParam(
          data['Power_from_MAF'],
          ParamType.double,
          false,
        ),
        speed: deserializeParam(
          data['Speed'],
          ParamType.double,
          false,
        ),
        throttlePosition: deserializeParam(
          data['Throttle_position'],
          ParamType.double,
          false,
        ),
        vehicleAcceleration: deserializeParam(
          data['Vehicle_acceleration'],
          ParamType.double,
          false,
        ),
        vehicleSpeed: deserializeParam(
          data['Vehicle_speed'],
          ParamType.double,
          false,
        ),
        latitude: deserializeParam(
          data['Latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['Longitude'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        time == other.time &&
        altitude == other.altitude &&
        averageSpeed == other.averageSpeed &&
        averageSpeedGPS == other.averageSpeedGPS &&
        calculatedInstantFuelConsumption ==
            other.calculatedInstantFuelConsumption &&
        calculatedInstantFuelRate == other.calculatedInstantFuelRate &&
        distanceTravelled == other.distanceTravelled &&
        distanceTravelledTotal == other.distanceTravelledTotal &&
        engineCoolantTemperature == other.engineCoolantTemperature &&
        engineRPM == other.engineRPM &&
        engineRPMX1000 == other.engineRPMX1000 &&
        fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition ==
            other.fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition &&
        fuelUsed == other.fuelUsed &&
        fuelUsedTotal == other.fuelUsedTotal &&
        fuelUsedPrice == other.fuelUsedPrice &&
        fuelUsedPriceTotal == other.fuelUsedPriceTotal &&
        instantEnginePower == other.instantEnginePower &&
        mAFAirFlowRate == other.mAFAirFlowRate &&
        oxygenSensor1WideRangeCurrent == other.oxygenSensor1WideRangeCurrent &&
        oxygenSensor1WideRangeEquivalenceRatio ==
            other.oxygenSensor1WideRangeEquivalenceRatio &&
        powerFromMAF == other.powerFromMAF &&
        speed == other.speed &&
        throttlePosition == other.throttlePosition &&
        vehicleAcceleration == other.vehicleAcceleration &&
        vehicleSpeed == other.vehicleSpeed &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([
        time,
        altitude,
        averageSpeed,
        averageSpeedGPS,
        calculatedInstantFuelConsumption,
        calculatedInstantFuelRate,
        distanceTravelled,
        distanceTravelledTotal,
        engineCoolantTemperature,
        engineRPM,
        engineRPMX1000,
        fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
        fuelUsed,
        fuelUsedTotal,
        fuelUsedPrice,
        fuelUsedPriceTotal,
        instantEnginePower,
        mAFAirFlowRate,
        oxygenSensor1WideRangeCurrent,
        oxygenSensor1WideRangeEquivalenceRatio,
        powerFromMAF,
        speed,
        throttlePosition,
        vehicleAcceleration,
        vehicleSpeed,
        latitude,
        longitude
      ]);
}

DataStruct createDataStruct({
  DateTime? time,
  double? altitude,
  double? averageSpeed,
  double? averageSpeedGPS,
  double? calculatedInstantFuelConsumption,
  double? calculatedInstantFuelRate,
  double? distanceTravelled,
  double? distanceTravelledTotal,
  double? engineCoolantTemperature,
  int? engineRPM,
  double? engineRPMX1000,
  double? fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
  double? fuelUsed,
  double? fuelUsedTotal,
  double? fuelUsedPrice,
  double? fuelUsedPriceTotal,
  double? instantEnginePower,
  double? mAFAirFlowRate,
  double? oxygenSensor1WideRangeCurrent,
  double? oxygenSensor1WideRangeEquivalenceRatio,
  double? powerFromMAF,
  double? speed,
  double? throttlePosition,
  double? vehicleAcceleration,
  double? vehicleSpeed,
  double? latitude,
  double? longitude,
}) =>
    DataStruct(
      time: time,
      altitude: altitude,
      averageSpeed: averageSpeed,
      averageSpeedGPS: averageSpeedGPS,
      calculatedInstantFuelConsumption: calculatedInstantFuelConsumption,
      calculatedInstantFuelRate: calculatedInstantFuelRate,
      distanceTravelled: distanceTravelled,
      distanceTravelledTotal: distanceTravelledTotal,
      engineCoolantTemperature: engineCoolantTemperature,
      engineRPM: engineRPM,
      engineRPMX1000: engineRPMX1000,
      fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition:
          fuelEconomizerBasedOnFuelSystemStatusAndThrottlePosition,
      fuelUsed: fuelUsed,
      fuelUsedTotal: fuelUsedTotal,
      fuelUsedPrice: fuelUsedPrice,
      fuelUsedPriceTotal: fuelUsedPriceTotal,
      instantEnginePower: instantEnginePower,
      mAFAirFlowRate: mAFAirFlowRate,
      oxygenSensor1WideRangeCurrent: oxygenSensor1WideRangeCurrent,
      oxygenSensor1WideRangeEquivalenceRatio:
          oxygenSensor1WideRangeEquivalenceRatio,
      powerFromMAF: powerFromMAF,
      speed: speed,
      throttlePosition: throttlePosition,
      vehicleAcceleration: vehicleAcceleration,
      vehicleSpeed: vehicleSpeed,
      latitude: latitude,
      longitude: longitude,
    );
