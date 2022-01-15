class ProfilTokoModel {
  int? id;
  // ignore: prefer_typing_uninitialized_variables
  var imageUrlProfilToko;
  // ignore: prefer_typing_uninitialized_variables
  var namaProdukProfilToko;
  // ignore: prefer_typing_uninitialized_variables
  var hargaProdukProfilToko;

  String imageurlprofiltoko(String imageUrlProfilToko) => imageUrlProfilToko;
  String namaprodukprofiltoko(String namaProdukProfilToko) =>
      namaProdukProfilToko;
  String hargaprodukprofiltoko(String hargaProdukProfilToko) =>
      hargaProdukProfilToko;

  ProfilTokoModel(
      {this.id,
      this.imageUrlProfilToko,
      this.namaProdukProfilToko,
      this.hargaProdukProfilToko});
}
