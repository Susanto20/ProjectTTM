import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PenutupLantai extends StatelessWidget {
  const PenutupLantai({Key? key}) : super(key: key);

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
          "Penutup Lantai",
          style: GoogleFonts.poppins()
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Ukuran Penutup Lantai : ",
              style: GoogleFonts.poppins().copyWith(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 35,
              width: 180,
              child: Center(
                child: Text(
                  "Keramik Ukuran 30 x 30",
                  style: GoogleFonts.poppins().copyWith(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: const Color(0xff79B4B7),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 35,
              width: 180,
              child: Center(
                child: Text(
                  "Marmer Ukuran 100 x 100",
                  style: GoogleFonts.poppins().copyWith(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: const Color(0xff79B4B7),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 35,
              width: 180,
              child: Center(
                child: Text(
                  "Vinyl Ukuran 30 x 30",
                  style: GoogleFonts.poppins().copyWith(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: const Color(0xff79B4B7),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
