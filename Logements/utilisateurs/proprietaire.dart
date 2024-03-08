import './utilisateur.dart' show Utilisateur;
import '../logements/logement.dart' show Logement;

class Proprietaire extends Utilisateur{
  List<Logement> logements = [];

  Proprietaire(super.nom, super.email){
    this.role = "Proprietaire";
  }

  void ajouter_logement(Logement logement){
    if (!this.logements.contains(logement)) {
      this.logements.add(logement);
    }
    else{
      print('${this.get_nom()} est deja proprietaire de ${logement.get_nom_logement()}');
    }
  }
}
