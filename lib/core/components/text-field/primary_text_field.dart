import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final bool obscureText;
  const PrimaryTextField({super.key, this.hintText, this.suffixIcon, this.onChanged, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,

          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xffC5C6CC)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xffC5C6CC)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Color(0xffC5C6CC)),
          ),
        ),
      ),
    );
  }
}
