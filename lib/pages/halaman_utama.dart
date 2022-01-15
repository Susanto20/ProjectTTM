import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taptapmaterialku/models/mitra_model.dart';
import 'package:taptapmaterialku/pages/deskripsi_produk.dart';
import 'package:taptapmaterialku/pages/fitur_smart_tap.dart';
import 'package:taptapmaterialku/pages/memesan.dart';
import 'package:taptapmaterialku/pages/profil_pengguna.dart';
import 'package:taptapmaterialku/pages/profil_toko.dart';
import 'package:taptapmaterialku/pages/semua_mitra.dart';
import 'package:taptapmaterialku/pages/semua_produk.dart';
import 'package:taptapmaterialku/widgets/mitra.dart';
import 'package:taptapmaterialku/widgets/produk.dart';
import 'package:taptapmaterialku/models/produk_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Tap Tap Material",
                style: GoogleFonts.poppins().copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            leading: Image.asset("assets/images/Logo taptap.png"),
            actions: [
              IconButton(
                color: Colors.black,
                onPressed: () {
                  _openWhatsAppChat();
                },
                icon: const Icon(FontAwesomeIcons.whatsapp),
              ),
            ]),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FiturSmartTap();
                }));
              },
              child: Container(
                height: 35,
                width: 150,
                child: Center(
                  child: Text(
                    "Fitur Smart Tap",
                    style: GoogleFonts.poppins().copyWith(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xff79B4B7),
                    borderRadius: BorderRadius.circular(7)),
                margin: const EdgeInsets.symmetric(horizontal: 110),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mitra",
                    style: GoogleFonts.poppins()
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SemuaMitra();
                        }));
                      },
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.poppins()
                            .copyWith(color: const Color(0xff79B4B7)),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              color: Colors.white70,
              height: 155,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfilToko();
                      }));
                    },
                    child: Mitra(
                      MitraModel(
                        id: 1,
                        namaToko: "Toko 1",
                        imageUrl: "assets/images/Toko.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfilToko();
                      }));
                    },
                    child: Mitra(
                      MitraModel(
                        id: 1,
                        namaToko: "Toko 2",
                        imageUrl: "assets/images/Toko.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfilToko();
                      }));
                    },
                    child: Mitra(
                      MitraModel(
                        id: 1,
                        namaToko: "Toko 3",
                        imageUrl: "assets/images/Toko.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfilToko();
                      }));
                    },
                    child: Mitra(
                      MitraModel(
                        id: 1,
                        namaToko: "Toko 4",
                        imageUrl: "assets/images/Toko.jpg",
                      ),
                    ),
                  ),
                  const SizedBox(width: 3),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 10),
              color: Colors.black,
              height: 1.5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produk",
                    style: GoogleFonts.poppins()
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SemuaProduk();
                        }));
                      },
                      child: Text(
                        "Lihat Semua",
                        style: GoogleFonts.poppins()
                            .copyWith(color: const Color(0xff79B4B7)),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              color: Colors.white70,
              height: 175,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DeskripsiProduk();
                      }));
                    },
                    child: Produk(ProdukModel(
                        id: 1,
                        imageUrl: "assets/images/Pasir.jpg",
                        namaProduk: "Pasir",
                        hargaProduk: "Rp. 50.000")),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DeskripsiProduk();
                      }));
                    },
                    child: Produk(ProdukModel(
                        id: 1,
                        imageUrl: "assets/images/batu.jpg",
                        namaProduk: "Batu",
                        hargaProduk: "Rp. 50.000")),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DeskripsiProduk();
                      }));
                    },
                    child: Produk(ProdukModel(
                        id: 1,
                        imageUrl: "assets/images/Pasir.jpg",
                        namaProduk: "Pasir",
                        hargaProduk: "Rp. 50.000")),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DeskripsiProduk();
                      }));
                    },
                    child: Produk(ProdukModel(
                        id: 1,
                        imageUrl: "assets/images/batu.jpg",
                        namaProduk: "Batu",
                        hargaProduk: "Rp. 50.000")),
                  ),
                  const SizedBox(width: 3),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text('Beranda', style: GoogleFonts.poppins()),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Memesan();
                    }));
                  },
                  // ignore: prefer_const_constructors
                  child: Icon(Icons.assignment)),
              // ignore: deprecated_member_use
              title: Text('Pesanan', style: GoogleFonts.poppins()),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfilPengguna();
                    }));
                  },
                  // ignore: prefer_const_constructors
                  child: Icon(Icons.person)),
              // ignore: deprecated_member_use
              title: Text('Akun', style: GoogleFonts.poppins()),
            ),
          ],
          currentIndex: 0,
          // ignore: prefer_const_constructors
          selectedItemColor: Color(0xff79B4B7),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ));
  }
}

void _openWhatsAppChat() async {
  String phoneNumber = '+6285388943619';
  String kalimat = 'Halo Admin';
  var url = 'https://wa.me/$phoneNumber?text=$kalimat';
  await launch(url);
}
