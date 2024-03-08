import './paiement.dart' show Paiement;
import './reservation.dart' show Reservation;
import '../mixins/periodique.dart' show Periodique;

class ContratLocation with Periodique{
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

  void ajouter_paiement(Paiement paiement){
    this.paiements.add(paiement);
  }

  void supprimer_paiement(Paiement paiement){
    if (this.paiements.contains(paiement)) {
      this.paiements.remove(paiement);
    }
  }
}
