import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/pages/aci_dinding.dart';
import 'package:taptapmaterialku/pages/dinding.dart';
import 'package:taptapmaterialku/pages/penutup_lantai.dart';
import 'package:taptapmaterialku/pages/plaster_dinding.dart';

class FiturSmartTap extends StatelessWidget {
  const FiturSmartTap({Key? key}) : super(key: key);

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
          "Fitur Smart Tap",
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
              "Hitung kebutuhan materialmu : ",
              style: GoogleFonts.poppins().copyWith(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Dinding();
              }));
            },
            child: Container(
              height: 35,
              width: 150,
              child: Center(
                child: Text(
                  "Dinding",
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PlasterDinding();
              }));
            },
            child: Container(
              height: 35,
              width: 150,
              child: Center(
                child: Text(
                  "Plaster Dinding",
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AciDinding();
              }));
            },
            child: Container(
              height: 35,
              width: 150,
              child: Center(
                child: Text(
                  "Aci Dinding",
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PenutupLantai();
              }));
            },
            child: Container(
              height: 35,
              width: 150,
              child: Center(
                child: Text(
                  "Penutup Lantai",
                  style: GoogleFonts.poppins().copyWith(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: const Color(0xff79B4B7),
                  borderRadius: BorderRadius.circular(7)),
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ],
      ),
    );
  }
}
