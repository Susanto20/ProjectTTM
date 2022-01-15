import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:taptapmaterialku/pages/halaman_utama.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _startSplash();
  }

  _startSplash() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const HalamanUtama();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(children: [
        const Align(
          alignment: Alignment.bottomCenter,
          child: Image(
            image: AssetImage("assets/images/Logo taptap.png"),
            height: 330,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Text("Dapatkan Bahan\nMaterialmu Segera !",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 7,
              ),
              Text("Stop Membuang Waktu di Toko Bangunan",
                  style: GoogleFonts.poppins()
                      .copyWith(color: Colors.grey, fontSize: 15.5)),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                  width: 170,
                  height: 40,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    color: const Color(0xff79B4B7),
                    child: Text("Tunggu 3 Detik",
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ))
            ],
          ),
        ),
      ])),
    );
  }
}
