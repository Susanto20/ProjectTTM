import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/profil_toko_model.dart';
import 'package:taptapmaterialku/pages/deskripsi_produk.dart';

class ProfilTokoWidget extends StatelessWidget {
  const ProfilTokoWidget(this.profilTokoModel, {Key? key}) : super(key: key);

  final ProfilTokoModel profilTokoModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          // ignore: prefer_const_constructors
          return const DeskripsiProduk();
        }));
      },
      child: Card(
        child: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: 115,
          child: Column(
            children: [
              Image.asset(profilTokoModel.imageUrlProfilToko),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Text(
                profilTokoModel.namaProdukProfilToko,
                style:
                    GoogleFonts.poppins().copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                profilTokoModel.hargaProdukProfilToko,
                style:
                    GoogleFonts.poppins().copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
