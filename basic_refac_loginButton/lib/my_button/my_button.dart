import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  MyButton({required this.image, required this.text, required this.color, required this.radius, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
                opacity: 0.0,
                child: image)
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: color,
          minimumSize: Size(100,45)
        ),
        onPressed: onPressed,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(radius)
          )
      ),
    );
  }
}
