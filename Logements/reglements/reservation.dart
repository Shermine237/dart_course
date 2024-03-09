import '../logements/logement.dart' show Logement;
import '../utilisateurs/locataire.dart' show Locataire;
import '../mixins/notifiable.dart' show Notifiable;
import '../mixins/periodique.dart' show Periodique;

class Reservation with Notifiable, Periodique{
  Logement logement;
  bool est_confirme = false;
  bool disponible = false;
  Locataire locataire;

  Reservation(debut, fin, this.logement, this.locataire){
    this.date_debut = debut;
    this.date_fin = fin;
    if(this.logement.date_debut.isBefore(this.date_debut) && this.logement.date_fin.isAfter(this.date_fin)){
      this.disponible = true;
    }
    else{
      print("Le logement ${this.logement.get_nom_logement()} n'est pas disponible pour la periode choisie");
    }
  }

  void confirner(){
    if(this.disponible){
      this.afficher_notification('Confirmation de Reservation', 'Le logement ${this.logement.get_nom_logement()} a ete reserve par ${this.locataire.get_nom()} du ${this.date_debut} au ${this.date_fin}');
      this.locataire.enregistrer_reservation(this);
      this.est_confirme = true;
      this.logement.est_reserve = true;
    }
    else{
      print("Vous ne pouvez pas confirmer une reservation dont le logement n'est pas disponible");
    }
  }

  int cout_total(){
    return this.logement.get_tarif_jour().cout_total(this.date_debut, this.date_fin);
  }

}
