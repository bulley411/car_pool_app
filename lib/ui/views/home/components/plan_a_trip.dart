import 'package:flutter/material.dart';

class PlanATrip extends StatefulWidget {
  const PlanATrip({super.key});

  @override
  State<PlanATrip> createState() => _PlanATripState();
}

class _PlanATripState extends State<PlanATrip> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Plan A Trip Page'),
    );
  }
}
