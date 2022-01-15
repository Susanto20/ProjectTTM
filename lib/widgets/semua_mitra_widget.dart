import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/models/semua_mitra_model.dart';
import 'package:taptapmaterialku/pages/profil_toko.dart';

class SemuaMitraWidget extends StatelessWidget {
  const SemuaMitraWidget(this.semuaMitraModel, {Key? key}) : super(key: key);

  final SemuaMitraModel semuaMitraModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: avoid_unnecessary_containers
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            // ignore: prefer_const_constructors
            return const ProfilToko();
          }));
        },
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Image.asset(
                semuaMitraModel.imageUrlSemuaMitra,
                height: 115,
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 7,
              ),
              Text(
                semuaMitraModel.noToko,
                style: GoogleFonts.poppins()
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 19),
              )
            ],
          ),
        ),
      ),
    );
  }
}
