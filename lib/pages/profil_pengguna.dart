import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taptapmaterialku/main.dart';
import 'package:taptapmaterialku/pages/halaman_utama.dart';
import 'package:taptapmaterialku/pages/memesan.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilPengguna extends StatefulWidget {
  const ProfilPengguna({Key? key}) : super(key: key);

  @override
  _ProfilPenggunaState createState() => _ProfilPenggunaState();
}

class _ProfilPenggunaState extends State<ProfilPengguna> {
  // ignore: prefer_final_fields, unused_field
  bool _isEditingName = false;
  // ignore: prefer_final_fields, unused_field
  bool _isEditingPhone = false;
  // ignore: prefer_final_fields, unused_field
  bool _isEditingAddress = false;

  final namaCont = TextEditingController();
  final hpCont = TextEditingController();
  final alamatCont = TextEditingController();

  String initialNameText = "";
  String initialPhoneText = "";
  String initialAddressText = "";

  var _nama = "No Name";
  var _nomor = "No Number";
  var _alamat = "No Adress";

  _updateNama(updatenya) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString('update', updatenya);
    });
  }

  _updateNomor(updatenya2) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString('update2', updatenya2);
    });
  }

  _updateAlamat(updatenya3) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setString('update1', updatenya3);
    });
  }

  _muatUpdate() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _nama = (pref.getString('update') ?? '');
      _nomor = (pref.getString('update2') ?? '');
      _alamat = (pref.getString('update1') ?? '');
    });
  }

  createAlertDialog2(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // ignore: prefer_const_constructors
            title: Text("Data kamu sudah berhasil disimpan"),
            actions: [
              ElevatedButton(
                child: const Text("Oke"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const ProfilPengguna();
                  }));
                },
              )
            ],
          );
        });
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Kamu telah keluar :(\n Datang Lagi ya"),
            actions: [
              ElevatedButton(
                child: const Text("Oke"),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const MyApp();
                  }));
                },
              )
            ],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await _muatUpdate();
    });
  }

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
            "Profile",
            style: GoogleFonts.poppins()
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 110,
                      height: 110,
                      decoration: const ShapeDecoration(
                          color: Colors.grey, shape: CircleBorder()),
                      child: const Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text("Biodata Saya : ",
                                style: GoogleFonts.poppins()
                                    .copyWith(fontWeight: FontWeight.w700)),
                            Text(_nama,
                                style: GoogleFonts.poppins()
                                    .copyWith(fontWeight: FontWeight.w700)),
                            Text(_nomor,
                                style: GoogleFonts.poppins()
                                    .copyWith(fontWeight: FontWeight.w700)),
                            Text(_alamat,
                                style: GoogleFonts.poppins()
                                    .copyWith(fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Pengaturan Dasar",
                  style: GoogleFonts.poppins()
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 15,
                ),
                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.lock),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Nama',
                                style: GoogleFonts.poppins()
                                    .copyWith(fontSize: 15))
                          ],
                        ),
                        TextField(
                          controller: namaCont,
                          maxLength: 25,
                          decoration: InputDecoration(
                            hintText: "Masukkan Nama anda",
                            hintStyle:
                                GoogleFonts.poppins().copyWith(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.phone),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Handphone',
                                style: GoogleFonts.poppins()
                                    .copyWith(fontSize: 15))
                          ],
                        ),
                        TextField(
                          keyboardType: const TextInputType.numberWithOptions(),
                          controller: hpCont,
                          maxLength: 13,
                          decoration: InputDecoration(
                              hintText: "Masukkan no HP anda",
                              hintStyle:
                                  GoogleFonts.poppins().copyWith(fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Alamat',
                                style: GoogleFonts.poppins()
                                    .copyWith(fontSize: 15))
                          ],
                        ),
                        TextField(
                          controller: alamatCont,
                          maxLength: 25,
                          decoration: InputDecoration(
                              hintText: "Masukkan alamat anda",
                              hintStyle:
                                  GoogleFonts.poppins().copyWith(fontSize: 15)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                createAlertDialog2;
                _updateNama(namaCont.text);
                _updateNomor(hpCont.text);
                _updateAlamat(alamatCont.text);
                _muatUpdate();
              },
              child: Container(
                height: 35,
                width: 210,
                child: Center(
                  child: Text(
                    "Masukkan data dan perbaharui",
                    style: GoogleFonts.poppins().copyWith(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xff79B4B7),
                    borderRadius: BorderRadius.circular(100)),
                margin: const EdgeInsets.symmetric(horizontal: 50),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Tentang Kami",
                style:
                    GoogleFonts.poppins().copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _openFB();
                    },
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: 40,
                      child: Image.asset("assets/images/Logo FB.png"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _openIg();
                    },
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: 40,
                      child: Image.asset("assets/images/Logo taptap.png"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _openIGB();
                    },
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      width: 40,
                      child: Image.asset("assets/images/Logo Ig.png"),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 35,
                width: 130,
                child: Center(
                  child: Text(
                    "Keluar",
                    style: GoogleFonts.poppins().copyWith(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xff79B4B7),
                    borderRadius: BorderRadius.circular(100)),
                margin: const EdgeInsets.symmetric(horizontal: 130),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HalamanUtama();
                    }));
                  },
                  child: const Icon(Icons.home)),
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
                  child: const Icon(Icons.assignment)),
              // ignore: deprecated_member_use
              title: Text('Pesanan', style: GoogleFonts.poppins()),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              // ignore: deprecated_member_use
              title: Text('Akun', style: GoogleFonts.poppins()),
            ),
          ],
          currentIndex: 2,
          selectedItemColor: const Color(0xff79B4B7),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
        ));
  }
}

void _openIg() async {
  var url = 'https://www.instagram.com/taptap_material/';
  await launch(url);
}

void _openIGB() async {
  var url = 'https://www.instagram.com/betukang.id/';
  await launch(url);
}

void _openFB() async {
  var url = 'https://web.facebook.com/Tap-tap-Material-101425728990848/';
  await launch(url);
}
