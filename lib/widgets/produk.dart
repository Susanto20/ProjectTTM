import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/produk_model.dart';

class Produk extends StatelessWidget {
  const Produk(this.produkModel, {Key? key}) : super(key: key);

  final ProdukModel produkModel;

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
                  produkModel.imageUrl,
                  width: 125,
                  height: 115,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                produkModel.namaProduk,
                style:
                    GoogleFonts.poppins().copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                produkModel.hargaProduk,
                style:
                    GoogleFonts.poppins().copyWith(fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
