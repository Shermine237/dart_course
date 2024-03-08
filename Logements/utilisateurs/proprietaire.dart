import './utilisateur.dart' show Utilisateur;

class Proprietaire extends Utilisateur{
  Proprietaire(super.nom, super.email){
    this.role = "Proprietaire";
  }
}
