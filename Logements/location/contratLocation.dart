import 'paiement.dart' show Paiement;

class ContratLocation{
  DateTime _date_debut;
  DateTime _date_fin;
  bool statut_active = true;
  List<Paiement> paiements = [];

  ContratLocation(this._date_debut, this._date_fin);

  //Getter
  DateTime get_date_debut(){
    return _date_debut;
  }

  DateTime get_date_fin(){
    return _date_fin;
  }

  //Setter
  void set_date_debut(DateTime date){
    _date_debut = date;
  }

  void set_date_fin(DateTime date){
    _date_fin = date;
  }

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
