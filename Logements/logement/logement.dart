abstract class Logement{
  String _nom_logement;
  String _localisation;
  int _montant_location;
  late bool est_disponible;
  late String _description;

  Logement(this._nom_logement, this._localisation, this._montant_location){
    this.est_disponible = true;
  }

  //Getter
  String get_nom_logement(){
    return _nom_logement;
  }

  String get_localisation(){
    return _localisation;
  }

  String get_description(){
    return _description;
  }

  int get_montant_location(){
    return _montant_location;
  }

  //Setter
  void set_nom_logement(String nom){
    _nom_logement = nom;
  }

  void set_localisation(String localisation){
    _localisation = localisation;
  }

  void set_description(String description){
    _description = description;
  }

  void set_montant_location(int montant){
    _montant_location = montant;
  }

  void set_disponibility(bool disponibility){
    this.est_disponible = disponibility;
  }

}
