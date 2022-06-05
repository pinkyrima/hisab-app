
import 'package:flutter/material.dart';

class KTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final bool isPasswordField;
  final TextEditingController controller;
  final TextInputType type;

  const KTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.isPasswordField = false,
    required this.controller,
    required this.type
  }) : super(key: key);

  @override
  _KTextFieldState createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: BoxDecoration(
          border: Border.all(),
          //color: KColor.aliceBlue,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: TextField(
          controller: widget.controller,
          obscureText: widget.isPasswordField,
          keyboardType: widget.type,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            prefixIcon: Icon(widget.icon,color: Colors.black38,),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            hintText: widget.hintText,
           // hintStyle: KTextStyle.bodyText.copyWith(color: KColor.grayish),
          ),
        ),
      ),
    );
  }
}
