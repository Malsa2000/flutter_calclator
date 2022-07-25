import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFild extends StatelessWidget {
  final String value;
  const TextFild({
    Key? key,
    required  String value,

  }) : value =value,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: Color(0xFF5F7161),borderRadius: BorderRadius.circular(10)
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      child: Text(
          value
          ,style: GoogleFonts.nunito(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFFEFEAD8))),
    );
  }
}
