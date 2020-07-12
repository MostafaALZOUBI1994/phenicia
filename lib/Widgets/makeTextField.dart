import 'package:flutter/material.dart';
class MakeFieldText extends StatelessWidget {
  String text;
  MakeFieldText(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
      child: TextFormField(
        style: Theme.of(context).textTheme.body1,
        decoration: new InputDecoration(
          filled: true,
          fillColor:  Theme.of(context).accentColor,
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          border: new OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          hintText: text,
          hintStyle:TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
