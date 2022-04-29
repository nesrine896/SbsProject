import 'package:flutter/material.dart';

import '../constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title, progressproject;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.progressproject,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "ATB Project",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    progressproject: "1.9%",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Biat Project",
    numOfFiles: 1328,
    svgSrc: "assets/icons/unknown.svg",
    progressproject: "2.9%",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Clinique yassmina",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    progressproject: "1%",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "others",
    numOfFiles: 5328,
    svgSrc: "assets/icons/unknown.svg",
    progressproject: "7.3%",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];
