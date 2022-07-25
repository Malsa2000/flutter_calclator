import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevationButtonNum extends StatelessWidget {
  final String number;
  final void Function() onActionPressd;

  const ElevationButtonNum({
    required String number,
    required Function() onActionPressd,
    Key? key,
  })  : number = number,
        onActionPressd = onActionPressd,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onActionPressd,
      child: Text(number,
          style: GoogleFonts.nunito(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFEFEAD8))),
      style: ElevatedButton.styleFrom(
          primary: Color(0xFF5F7161),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
