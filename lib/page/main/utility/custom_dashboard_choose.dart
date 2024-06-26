import 'package:build_app/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class buttonPilihMesin extends StatefulWidget {
  const buttonPilihMesin({
    super.key,
    required this.pilihanMesin,
    required this.namaMesin,
    required this.ukuranLebar,
    required this.ukuranTinggi,
  });

  final String pilihanMesin;
  final String namaMesin;
  final double ukuranLebar;
  final double ukuranTinggi;

  @override
  State<buttonPilihMesin> createState() => _buttonPilihMesinState();
}

class _buttonPilihMesinState extends State<buttonPilihMesin> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        print(widget.pilihanMesin);
      },
      style: OutlinedButton.styleFrom(
          minimumSize: Size(widget.ukuranLebar, widget.ukuranTinggi),
          padding: const EdgeInsets.all(11.0),
          backgroundColor: pageModeScheme.secondary,
          side: BorderSide(color: pageModeScheme.onSecondary)),
      child: Text(
        widget.namaMesin,
        style: GoogleFonts.inter(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 10.5,
        ),
      ),
    );
  }
}
