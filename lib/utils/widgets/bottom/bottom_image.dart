import 'package:flutter/material.dart';
import 'package:landing_page/utils/widgets/bottom/bottom_image_decoration.dart';

class BottomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            child: Image.asset(
              'assets/images/business-man.jpg',
              height: screenSize.height / 3,
              fit: BoxFit.cover,
            ),
            decoration: bottomImageDecoration,
          ),
        ],
      ),
    );
  }
}
