import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/profil_toko_model.dart';
import 'package:taptapmaterialku/widgets/profil_toko_widget.dart';

class ProfilToko extends StatelessWidget {
  const ProfilToko({Key? key}) : super(key: key);

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
            "Profile Toko",
            style: GoogleFonts.poppins()
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 150, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_constructors
                CircleAvatar(
                  radius: 45,
                  // ignore: prefer_const_constructors
                  backgroundImage: AssetImage('assets/images/Toko.jpg'),
                ),
                Column(
                  children: [
                    Text(
                      "TOKO ... ",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Pontianak",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "Jl. Ayani",
                          style: GoogleFonts.poppins().copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            color: Colors.black,
            height: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Wrap(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ProfilTokoWidget(ProfilTokoModel(
                    imageUrlProfilToko: "assets/images/batu.jpg",
                    namaProdukProfilToko: "Batu",
                    hargaProdukProfilToko: "Rp. 55.000")),
                // ignore: prefer_const_constructors
                ProfilTokoWidget(ProfilTokoModel(
                    imageUrlProfilToko: "assets/images/batu.jpg",
                    namaProdukProfilToko: "Batu",
                    hargaProdukProfilToko: "Rp. 55.000")),
                // ignore: prefer_const_constructors
                ProfilTokoWidget(ProfilTokoModel(
                    imageUrlProfilToko: "assets/images/batu.jpg",
                    namaProdukProfilToko: "Batu",
                    hargaProdukProfilToko: "Rp. 55.000")),
                // ignore: prefer_const_constructors
                ProfilTokoWidget(ProfilTokoModel(
                    imageUrlProfilToko: "assets/images/batu.jpg",
                    namaProdukProfilToko: "Batu",
                    hargaProdukProfilToko: "Rp. 55.000")),
                // ignore: prefer_const_constructors
                ProfilTokoWidget(ProfilTokoModel(
                    imageUrlProfilToko: "assets/images/batu.jpg",
                    namaProdukProfilToko: "Batu",
                    hargaProdukProfilToko: "Rp. 55.000")),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          )
        ]));
  }
}
