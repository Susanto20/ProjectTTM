import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Daftar extends StatelessWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 150, 30, 30),
        child: ListView(children: [
          Center(
              child: Text("Halaman Daftar",
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 30, fontWeight: FontWeight.bold))),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              "E-mail",
              style: GoogleFonts.poppins(),
              textAlign: TextAlign.left,
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 50,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                hintText: "Masukkan alamat e-mail",
                hintStyle: GoogleFonts.poppins(),
              ),
            ),
          ),
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Password",
              style: GoogleFonts.poppins(),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 50,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                hintText: "Masukkan Password",
                hintStyle: GoogleFonts.poppins(),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Container(
            height: 35,
            width: 150,
            child: Center(
              child: Text(
                "Daftar",
                style: GoogleFonts.poppins().copyWith(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                color: const Color(0xff79B4B7),
                borderRadius: BorderRadius.circular(7)),
            margin: const EdgeInsets.symmetric(horizontal: 90),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Sudah mempunyai akun? ",
                  style: GoogleFonts.poppins(),
                ),
                GestureDetector(
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins()
                        // ignore: prefer_const_constructors
                        .copyWith(color: Color(0xff79B4B7)),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
