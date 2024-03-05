class Produit {
  // la difference attribut prive et public c'est le '_', on le met devant le prive
  static int _counter = 0; // Compteur pour générer des identifiants uniques
  late int _id; // Attribut privé

  String nom; // Attribut public
  double prix;  // Attribut public
  int quantiteStock;  // Attribut public

  Produit(this.nom, this.prix, this.quantiteStock) {
    _id = ++_counter; // Incrémente le compteur et attribue une valeur unique à _id
  }

  void show_product(){
    print('id: ${this._id}\nNom: ${this.nom}\nPrix: ${this.prix}\nQuantite: ${this.quantiteStock}');
  }
}
