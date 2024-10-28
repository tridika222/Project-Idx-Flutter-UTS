import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  final String image;
  final String name;

  const SampleCard({super.key , required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/$image",
                        width: 80,
                        height: 80,
                        ),
                        Text(name)
                      ],
                    ),
                  ),
                );
  }
}