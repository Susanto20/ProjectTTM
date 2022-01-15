import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/semua_produk_model.dart';
import 'package:taptapmaterialku/pages/deskripsi_produk.dart';

class SemuaProdukWidget extends StatelessWidget {
  const SemuaProdukWidget(this.semuaProdukModel, {Key? key}) : super(key: key);

  final SemuaProdukModel semuaProdukModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: avoid_unnecessary_containers
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DeskripsiProduk();
          }));
        },
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Image.asset(
                semuaProdukModel.imageUrlSemuaProduk,
                height: 115,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 3,
              ),
              Text(
                semuaProdukModel.hargaProduk,
                style: GoogleFonts.poppins()
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                semuaProdukModel.namaToko,
                style: GoogleFonts.poppins()
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
