import 'produit.dart' show Produit; // Importe uniquement la classe Produit

class CategorieProduit extends Produit{
  String categorie;

  CategorieProduit(super.nom, super.prix, super.quantiteStock, this.categorie);

  @override
  void show_product(){
    super.show_product();
    print('Categorie: ${this.categorie}');
  }
}