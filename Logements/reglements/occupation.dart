import '../mixins/periodique.dart' show Periodique;
import '../utilisateurs/locataire.dart' show Locataire;

class Occupation with Periodique{
  Locataire occupant;

  Occupation(this.occupant, DateTime debut, DateTime fin){
    this.date_debut = debut;
    this.date_fin = fin;
  }
}
