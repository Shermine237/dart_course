import './produit.dart' show Produit; // Importe uniquement la classe Produit
import './categorieProduit.dart' show CategorieProduit;

void main() {
  // Utilisation de la classe Produit
  Produit produit1 = Produit("Produit 1", 10.99, 5);
  produit1.show_product();
  print('----------------');
  Produit produit2 = Produit("Produit 2", 29.99, 10);
  produit2.show_product();
  print('----------------');
  CategorieProduit categorie1 = CategorieProduit(produit1.nom, produit1.prix, produit1.quantiteStock, 'Categorie 1');
  categorie1.show_product();
}
