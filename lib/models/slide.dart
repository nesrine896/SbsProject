import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/demo-1.png',
    title: 'Design Interactive App UI',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci.',
  ),
  Slide(
    imageUrl: 'assets/images/demo-2.png',
    title: 'It\'s Just the Beginning',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci.',
  ),
];
