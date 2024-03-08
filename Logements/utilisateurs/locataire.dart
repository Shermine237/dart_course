import 'utilisateur.dart' show Utilisateur;
import '../logements/logement.dart' show Logement;

class Locataire extends Utilisateur{
  List<Logement> logements_reserves = [];

  Locataire(super.nom, super.email);

  //Methods
  reserver_logement(Logement logement, DateTime debut, DateTime fin){
    if(logement.est_disponible){
      this.logements_reserves.add(logement);
      logement.reserver(debut, fin);
    }
    else{
      print("${logement.get_nom_logement()} n'est pas disponible.");
    }
  }
}
