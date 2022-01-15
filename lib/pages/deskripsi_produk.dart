import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/pages/memesan.dart';

class DeskripsiProduk extends StatelessWidget {
  const DeskripsiProduk({Key? key}) : super(key: key);

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
          "Deskripsi Produk",
          style: GoogleFonts.poppins()
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: ListView(
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                // ignore: prefer_const_constructors
                child: Image(
                  // ignore: prefer_const_constructors
                  image: AssetImage(
                    "assets/images/Pasir.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 8,
              ),
              Text(
                "Pasir",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins().copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rp. 58.000",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins()
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "TB. Angkasa",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins()
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 3,
                    // ignore: prefer_const_constructors
                    color: Color(0xff79B4B7),
                    width: 166,
                  ),
                  Container(
                    height: 3,
                    color: Colors.black45,
                    width: 166,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins().copyWith(
                        // ignore: prefer_const_constructors
                        color: Color(0xff79B4B7),
                        fontWeight: FontWeight.bold)),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 150,
                        // color: Colors.blue,
                        child: Center(
                            child: Text("Beli Langsung",
                                style: GoogleFonts.poppins().copyWith(
                                    // ignore: prefer_const_constructors
                                    color: Color(0xff79B4B7),
                                    fontWeight: FontWeight.bold))),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.8,
                            // ignore: prefer_const_constructors
                            color: Color(0xff79B4B7),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Memesan();
                        }));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        // color: Colors.blue,
                        child: Center(
                            child: Text("+ List Pesanan",
                                style: GoogleFonts.poppins().copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                        decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          color: Color(0xff79B4B7),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
