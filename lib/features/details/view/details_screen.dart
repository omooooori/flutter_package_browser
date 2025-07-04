import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String packageName;

  const DetailsScreen({super.key, required this.packageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(packageName),
      ),
      body: Center(
        child: Text('Details for "$packageName"'),
      ),
    );
  }
}
