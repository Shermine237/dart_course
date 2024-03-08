import './utilisateur.dart' show Utilisateur;

class Administrateur extends Utilisateur{
  Administrateur(super.nom, super.email){
    this.role = "Administrateur";
  }
}
