import 'paiement.dart' show Paiement;
import '../mixins/periodique.dart' show Periodique;

class ContratLocation with Periodique{
  bool statut_active = true;
  String titre;
  List<Paiement> paiements = [];

  ContratLocation(this.titre);

  //Methods
  void activer(){
    this.statut_active = true;
  }

  void desactiver(){
    this.statut_active = false;
  }

  void add_payment(Paiement paiement){
    this.paiements.add(paiement);
  }

  void remove_payment(Paiement paiement){
    this.paiements.remove(paiement);
  }
}
