import 'package:flutter/material.dart';

class BookATrip extends StatefulWidget {
  const BookATrip({super.key});

  @override
  State<BookATrip> createState() => _BookATripState();
}

class _BookATripState extends State<BookATrip> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Book a Trip Page'),
    );
  }
}
