import 'package:flutter/material.dart';
class MakeDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child: Divider(height: 3.0,color:Theme.of(context).primaryColor),
    );
  }
}
