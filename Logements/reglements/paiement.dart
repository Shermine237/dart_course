import '../utilisateurs/locataire.dart' show Locataire;

class Paiement{
  int _montant;
  DateTime _date_paiment;
  Locataire locataire;

  Paiement(this._montant, this._date_paiment, this.locataire);

  //Getters
  int get_montant(){
    return _montant;
  }

  DateTime get_date_paiment(){
    return _date_paiment;
  }

  //Setters
  void set_montant(int montant){
    _montant = montant;
  }

  void set_date_paiment(DateTime date){
    _date_paiment = date;
  }
}
