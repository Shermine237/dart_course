import '../reglements/tarification.dart' show Tarification;
import '../mixins/periodique.dart' show Periodique;
import '../mixins/commentable.dart' show Commentable;

abstract class Logement with Periodique, Commentable{
  String _nom_logement;
  String _localisation;
  bool est_disponible = true;
  late Tarification _tarif_jour;
  late String _description;

  Logement(this._nom_logement, this._localisation);

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

  Tarification get_tarif_jour(){
    return _tarif_jour;
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

  void set_disponibility(bool disponibility){
    this.est_disponible = disponibility;
  }

  void set_tarif_jour(Tarification tarif){
    _tarif_jour = tarif;
  }

  //Methods
  @override
  // Herite du code de '../mixin/periodique.dart'
  void afficher_periode() {
    print('Disponible du ${this.date_debut} au ${this.date_fin}');
  }

}
