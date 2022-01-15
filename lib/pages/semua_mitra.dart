import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/semua_mitra_model.dart';
import 'package:taptapmaterialku/widgets/semua_mitra_widget.dart';

class SemuaMitra extends StatelessWidget {
  const SemuaMitra({Key? key}) : super(key: key);

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
            "Semua Mitra",
            style: GoogleFonts.poppins()
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            SemuaMitraWidget(SemuaMitraModel(
              imageUrlSemuaMitra: "assets/images/Toko.jpg",
              noToko: "Toko 1",
            )),
            // ignore: prefer_const_constructors
            SemuaMitraWidget(SemuaMitraModel(
              imageUrlSemuaMitra: "assets/images/Toko.jpg",
              noToko: "Toko 2",
            )),
            // ignore: prefer_const_constructors
            SemuaMitraWidget(SemuaMitraModel(
              imageUrlSemuaMitra: "assets/images/Toko.jpg",
              noToko: "Toko 3",
            )),
            // ignore: prefer_const_constructors
            SemuaMitraWidget(SemuaMitraModel(
              imageUrlSemuaMitra: "assets/images/Toko.jpg",
              noToko: "Toko 4",
            )),
            // ignore: prefer_const_constructors
            SemuaMitraWidget(SemuaMitraModel(
              imageUrlSemuaMitra: "assets/images/Toko.jpg",
              noToko: "Toko 5",
            )),
          ],
        ));
  }
}
