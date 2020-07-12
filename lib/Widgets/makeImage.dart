import 'package:flutter/material.dart';
class MakeImage extends StatelessWidget {
  String renderUrl;
  MakeImage(this.renderUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 120.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(renderUrl),fit: BoxFit.contain),
      ),
    );
  }
}
