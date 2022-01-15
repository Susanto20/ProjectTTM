class ProdukModel {
  int? id;
  // ignore: prefer_typing_uninitialized_variables
  var imageUrl;
  // ignore: prefer_typing_uninitialized_variables
  var namaProduk;
  // ignore: prefer_typing_uninitialized_variables
  var hargaProduk;

  String imageurl(String imageUrl) => imageUrl;
  String namaproduk(String namaProduk) => namaProduk;
  String hargaproduk(String hargaProduk) => hargaProduk;

  ProdukModel({this.id, this.imageUrl, this.namaProduk, this.hargaProduk});
}
