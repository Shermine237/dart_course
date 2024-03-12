import '../reglements/occupation.dart' show Occupation;
import '../utilisateurs/locataire.dart' show Locataire;
import '../reglements/tarification.dart' show Tarification;
import '../utilisateurs/proprietaire.dart' show Proprietaire;
import '../mixins/periodique.dart' show Periodique;
import '../mixins/commentable.dart' show Commentable;

abstract class Logement with Periodique, Commentable{
  String _nom_logement;
  String _localisation;
  Proprietaire proprietaire;
  bool est_reserve = false;
  late Tarification _tarif_jour;
  late String _description;
  List<Occupation> occupations = [];

  Logement(this._nom_logement, this._localisation, this.proprietaire, DateTime debut_disponibilite, DateTime fin_disponibilite, this._tarif_jour){
    this.date_debut = debut_disponibilite;
    this.date_fin = fin_disponibilite;
    this.proprietaire.ajouter_logement(this);
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

  void set_tarif_jour(Tarification tarif){
    _tarif_jour = tarif;
  }

  //Methods
  @override
  // Herite du code de '../mixin/periodique.dart'
  void afficher_periode() {
    print('${this.get_nom_logement()} Disponible du ${this.date_debut} au ${this.date_fin}');
  }

  void ajouter_occupant(Locataire occupant, DateTime debut, DateTime fin){
    Occupation occupation = Occupation(occupant, debut, fin);
    if (!this.occupations.contains(occupation)) {
      this.occupations.add(occupation);
    }
  }

  void afficher_statistique(){
    print("Historique d'occupation de ${this.get_nom_logement()}");
    for (var occupation in this.occupations) {
      print(">> Du ${occupation.date_debut} au ${occupation.date_fin} par ${occupation.occupant.get_nom()}");
    }
  }
}
