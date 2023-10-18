import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final bool obsecuretext;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.obsecuretext = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: controller,
        style: GoogleFonts.signikaNegative(
            color: Colors.black87,
            decorationColor: Colors.white,
            decoration: TextDecoration.none),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          label: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hintText,
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
        ),
        maxLines: maxLines,
        obscureText: obsecuretext,
        validator: (val) {
          if (val == null || val.isEmpty) {
            return 'Enter your $hintText';
          }
          return null;
        },
      ),
    );
  }
}
