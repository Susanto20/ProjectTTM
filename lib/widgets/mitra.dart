import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/mitra_model.dart';

class Mitra extends StatelessWidget {
  const Mitra(this.mitraModel, {Key? key}) : super(key: key);

  final MitraModel mitraModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      // ignore: sized_box_for_whitespace
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: 115,
          child: Column(
            children: [
              GestureDetector(
                child: Image.asset(
                  mitraModel.imageUrl,
                  width: 125,
                  height: 115,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                mitraModel.namaToko,
                style:
                    GoogleFonts.poppins().copyWith(fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
