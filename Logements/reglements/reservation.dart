import '../logements/logement.dart' show Logement;
import '../utilisateurs/locataire.dart' show Locataire;
import '../mixins/notifiable.dart' show Notifiable;
import '../mixins/periodique.dart' show Periodique;

class Reservation with Notifiable, Periodique{
  Logement logement;
  bool est_confirme = false;
  Locataire locataire;

  Reservation(debut, fin, this.logement, this.locataire){
    this.date_debut = debut;
    this.date_fin = fin;
  }

  void confirner(){
    this.afficher_notification('Confirmation de Rservation', 'Le logement ${this.logement.get_nom_logement()} a ete confirme');
    this.locataire.enregistrer_reservation(this);
    this.est_confirme = true;
    this.logement.est_disponible = false;
  }

  int cout_total(){
    return this.logement.get_tarif_jour().cout_total(this.date_debut, this.date_fin);
  }
}
