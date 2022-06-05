import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const KButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 62,
        width: double.infinity,
        // ignore: deprecated_member_use
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            //primary: KColor.primary,
          ),
          onPressed: onPressed,
          child: Text(
            buttonText,
           style: TextStyle(fontSize: 20),
          ),
        ));
  }
}
