import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/semua_produk_model.dart';
import 'package:taptapmaterialku/widgets/semua_produk_widget.dart';

class SemuaProduk extends StatelessWidget {
  const SemuaProduk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          title: Text(
            "Semua Produk",
            style: GoogleFonts.poppins()
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            SemuaProdukWidget(SemuaProdukModel(
                imageUrlSemuaProduk: "assets/images/Toko.jpg",
                hargaProduk: "Rp. 46.000",
                namaToko: "TB. Angkasa")),
            // ignore: prefer_const_constructors
            SemuaProdukWidget(SemuaProdukModel(
                imageUrlSemuaProduk: "assets/images/Toko.jpg",
                hargaProduk: "Rp. 46.000",
                namaToko: "TB. Angkasa")),
            SemuaProdukWidget(SemuaProdukModel(
                imageUrlSemuaProduk: "assets/images/Toko.jpg",
                hargaProduk: "Rp. 46.000",
                namaToko: "TB. Angkasa")),
            SemuaProdukWidget(SemuaProdukModel(
                imageUrlSemuaProduk: "assets/images/Toko.jpg",
                hargaProduk: "Rp. 46.000",
                namaToko: "TB. Angkasa")),
            SemuaProdukWidget(SemuaProdukModel(
                imageUrlSemuaProduk: "assets/images/Toko.jpg",
                hargaProduk: "Rp. 46.000",
                namaToko: "TB. Angkasa")),
          ],
        ));
  }
}
