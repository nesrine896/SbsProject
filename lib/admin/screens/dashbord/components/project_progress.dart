import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'project_info_card.dart';

class ProgressProject extends StatelessWidget {
  const ProgressProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Progress Project",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          ProjectInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "ATB project",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          ProjectInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Biat project",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          ProjectInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other project",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          ProjectInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "devire",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
