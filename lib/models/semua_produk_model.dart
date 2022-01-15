class SemuaProdukModel {
  int? id;
  // ignore: prefer_typing_uninitialized_variables
  var hargaProduk;
  // ignore: prefer_typing_uninitialized_variables
  var imageUrlSemuaProduk;
  // ignore: prefer_typing_uninitialized_variables
  var namaToko;

  // ignore: non_constant_identifier_names
  String hargaproduk(String HargaProduk) => HargaProduk;
  // ignore: non_constant_identifier_names
  String imageurlsemuamitra(String ImageUrlSemuaProduk) => imageUrlSemuaProduk;
  // ignore: non_constant_identifier_names
  String namatoko(String NamaToko) => NamaToko;
  SemuaProdukModel(
      {this.id, this.hargaProduk, this.imageUrlSemuaProduk, this.namaToko});
}
