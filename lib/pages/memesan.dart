import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/pages/halaman_utama.dart';
import 'package:taptapmaterialku/pages/profil_pengguna.dart';
import 'package:url_launcher/url_launcher.dart';

class Memesan extends StatefulWidget {
  const Memesan({Key? key}) : super(key: key);

  @override
  State<Memesan> createState() => _MemesanState();
}

class _MemesanState extends State<Memesan> {
  final TextEditingController contNama = TextEditingController();

  final TextEditingController contAlamat = TextEditingController();

  final TextEditingController contPesanan = TextEditingController();

  String nnama = "";

  String nalamat = "";

  String npesanan = "";
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
          "Pesanan",
          style: GoogleFonts.poppins()
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("List Pesanan",
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                Text(
                  "Nama",
                  style: GoogleFonts.poppins().copyWith(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 55,
                  child: TextField(
                    controller: contNama,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan nama anda",
                      hintStyle: GoogleFonts.poppins(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    "Alamat",
                    style: GoogleFonts.poppins().copyWith(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 55,
                  child: TextField(
                    controller: contAlamat,
                    maxLines: 2,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan alamat anda",
                      hintStyle: GoogleFonts.poppins(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Text(
                    "List Pesanan",
                    style: GoogleFonts.poppins().copyWith(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 55,
                  child: TextField(
                    controller: contPesanan,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Masukkan list pesanan anda",
                      hintStyle: GoogleFonts.poppins(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      void _openWhatsAppChat() async {
                        nnama = contNama.text;
                        nalamat = contAlamat.text;
                        npesanan = contPesanan.text;
                        String phoneNumber = '+6285388943619';
                        String formatpesan =
                            'Halo Admin, saya $nnama beralamat di $nalamat \n ingin memesan $npesanan';
                        var url =
                            'https://wa.me/$phoneNumber?text=$formatpesan';
                        await launch(url);
                      }

                      _openWhatsAppChat();

                      // ignore: empty_statements
                      ;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    child: Center(
                      child: Text(
                        "Pesan Sekarang",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xff79B4B7),
                        borderRadius: BorderRadius.circular(7)),
                    margin: const EdgeInsets.symmetric(horizontal: 90),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HalamanUtama();
                  }));
                },
                child: const Icon(Icons.home)),
            // ignore: deprecated_member_use
            title: Text('Beranda', style: GoogleFonts.poppins()),
          ),
          BottomNavigationBarItem(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.assignment),
            // ignore: deprecated_member_use
            title: Text('Pesanan', style: GoogleFonts.poppins()),
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProfilPengguna();
                  }));
                },
                // ignore: prefer_const_constructors
                child: Icon(Icons.person)),
            // ignore: deprecated_member_use
            title: Text('Akun', style: GoogleFonts.poppins()),
          ),
        ],
        currentIndex: 1,
        // ignore: prefer_const_constructors
        selectedItemColor: Color(0xff79B4B7),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
