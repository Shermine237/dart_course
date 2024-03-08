import '../mixins/notifiable.dart' show Notifiable;

class Paiement with Notifiable{
  int _montant;
  DateTime _date_paiment;

  Paiement(this._montant, this._date_paiment){
    this.afficher_notification('Notification de paiement', 'Un paiment de ${_montant} a ete ajoute le [${this._date_paiment}]');
  }

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
