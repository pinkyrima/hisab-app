
import 'package:flutter/material.dart';


class KVerificationTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const KVerificationTextField({
    Key ?key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  _KVerificationTextFieldState createState() => _KVerificationTextFieldState();
}

class _KVerificationTextFieldState extends State<KVerificationTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:62,
      width: 62,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey.shade50),
          //color: KColor.aliceBlue,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.number,
          controller: widget.controller,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
            hintText: widget.hintText,
           // hintStyle: KTextStyle.bodyText.copyWith(color: KColor.grayish),
          ),
        ),
      ),
    );
  }
}
