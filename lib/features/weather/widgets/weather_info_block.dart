import 'package:flutter/material.dart';

class WeatherInfoBlock extends StatelessWidget {
  final String title;
  final String value;

  const WeatherInfoBlock({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    if (value.isEmpty || title.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title : ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
