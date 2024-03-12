import '../utilisateurs/utilisateur.dart' show Utilisateur;

class Paiement{
  int _montant;
  DateTime _date_paiment;
  Utilisateur _personne;
  String _raison;

  Paiement(this._montant, this._date_paiment, this._personne, this._raison);

  //Getters
  int get_montant(){
    return _montant;
  }

  DateTime get_date_paiment(){
    return _date_paiment;
  }

  Utilisateur get_personne(){
    return _personne;
  }

  String get_raison(){
    return _raison;
  }

  //Setters
  void set_montant(int montant){
    _montant = montant;
  }

  void set_date_paiment(DateTime date){
    _date_paiment = date;
  }
}
