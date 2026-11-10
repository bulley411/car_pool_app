import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyVehiclesViewModel extends BaseViewModel {
  final List<Map<String, dynamic>> myVehicles = [
    {
      'carMake': 'Toyota',
      'carModel': 'Corolla SE',
      'plateNumber': 'DKA-116HW',
      'seats': '4 Seats',
      'image': Image.asset(
        'assets/images/image1.png',
        width: 120,
        fit: BoxFit.contain,
      ),
    },
    {
      'carMake': 'Honda',
      'carModel': 'Pilot',
      'plateNumber': 'ABJ-4G12W',
      'seats': '2 Seats',
      'image': Image.asset(
        'assets/images/image1.png',
        width: 120,
        fit: BoxFit.contain,
      ),
    },
    {
      'carMake': 'Mercedes Benz',
      'carModel': 'E350',
      'plateNumber': 'AGL-9KPL09',
      'seats': '3 Seats',
      'image': Image.asset(
        'assets/images/image1.png',
        width: 120,
        fit: BoxFit.contain,
      ),
    },
    {
      'carMake': 'Toyota',
      'carModel': 'Corolla SE',
      'plateNumber': 'DKA-116HW',
      'seats': '4 Seats',
      'image': Image.asset(
        'assets/images/image1.png',
        width: 120,
        fit: BoxFit.contain,
      ),
    },
    {
      'carMake': 'Toyota',
      'carModel': 'Corolla SE',
      'plateNumber': 'DKA-116HW',
      'seats': '4 Seats',
      'image': Image.asset(
        'assets/images/image1.png',
        width: 120,
        fit: BoxFit.contain,
      ),
    },
  ];
}
