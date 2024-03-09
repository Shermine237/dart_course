import './paiement.dart' show Paiement;
import './reservation.dart' show Reservation;
import '../mixins/periodique.dart' show Periodique;
import '../mixins/notifiable.dart' show Notifiable;

class ContratLocation with Periodique, Notifiable{
  bool statut_active = true;
  List<Paiement> paiements = [];
  Reservation reservation;

  ContratLocation(this.reservation);

  //Methods
  void activer(){
    this.statut_active = true;
  }

  void desactiver(){
    this.statut_active = false;
  }

  bool ajouter_paiement(Paiement paiement){
    if(this.reservation.cout_total() <= paiement.get_montant()){
      this.paiements.add(paiement);
      this.afficher_notification('Notification de paiement', 'Un paiment de ${paiement.get_montant()} a ete ajoute le [${paiement.get_date_paiment()}] par ${this.reservation.locataire.get_nom()}');
      return true;
    }
    print('Montant insuffisant pour reserver');
    return false;
  }

  void supprimer_paiement(Paiement paiement){
    if (this.paiements.contains(paiement)) {
      this.paiements.remove(paiement);
    }
  }
}
