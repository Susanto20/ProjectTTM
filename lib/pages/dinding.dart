import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dinding extends StatefulWidget {
  const Dinding({Key? key}) : super(key: key);

  @override
  _DindingState createState() => _DindingState();
}

class _DindingState extends State<Dinding> {
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
          "Dinding",
          style: GoogleFonts.poppins()
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("Lebar dinding yang ingin dibuat : ",
                style: GoogleFonts.poppins().copyWith()),
            // ignore: sized_box_for_whitespace
            Container(
              height: 45,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Satuan dalam meter",
                    hintStyle: GoogleFonts.poppins().copyWith(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Panjang dinding yang ingin dibuat : ",
                style: GoogleFonts.poppins().copyWith()),
            // ignore: sized_box_for_whitespace
            Container(
              height: 45,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Satuan dalam meter",
                    hintStyle: GoogleFonts.poppins().copyWith(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 35,
                width: 150,
                child: Center(
                  child: Text(
                    "Hitung",
                    style: GoogleFonts.poppins().copyWith(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xff79B4B7),
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10),
            Text(
              "Dengan luas dinding\nsebesar ... anda membutuhkan : ",
              style: GoogleFonts.poppins().copyWith(),
              textAlign: TextAlign.center,
            ),
            Table(
              border: TableBorder.all(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              defaultColumnWidth: const FixedColumnWidth(100),
              children: [
                TableRow(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Barang Yang Dibutuhkan",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins().copyWith(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Banyaknya",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins().copyWith(),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Perkiraan Harga",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins().copyWith(),
                        )
                      ],
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    ),
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    ),
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    ),
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    ),
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    )
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    ),
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    ),
                    Column(
                      // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
                      children: [Text("")],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
