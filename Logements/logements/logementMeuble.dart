import './logement.dart' show Logement;

class LogementMeuble extends Logement{
  String _accessoires;
  LogementMeuble(super._nom_logement, super._localisation, super.proprietaire, super.debut_disponibilite, super.fin_disponibilite, super._tarif_jour, this._accessoires);

  //Getter
  String get_accessoires(){
    return _accessoires;
  }

  //Setter
  void set_accessoires(String accessoires){
    _accessoires = accessoires;
  }
}
