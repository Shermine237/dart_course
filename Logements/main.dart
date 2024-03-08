import './reglements/paiement.dart' show Paiement;
import './utilisateurs/locataire.dart' show Locataire;
import 'reglements/reservation.dart' show Reservation;
import './logements/logementVide.dart' show LogementVide;
import './utilisateurs/proprietaire.dart' show Proprietaire;
import './logements/logementMeuble.dart' show LogementMeuble;
import './utilisateurs/administrateur.dart' show Administrateur;
import './reglements/contratLocation.dart' show ContratLocation;

void main(){
  //1. Création de Classes de Base
  print('Utilisateurs :');
  Administrateur admin1 = Administrateur('Jean admin', "jean@email.sample");
  admin1.se_presenter();
  print('');
  Locataire locataire1 = Locataire('Michel locat', "michel@email.sample");
  locataire1.se_presenter();
  print('');
  Proprietaire proprietaire1 = Proprietaire('Kankan proprio', "kankan@email.sample");
  proprietaire1.se_presenter();
  print('');

  //2. Gestion des Logements
  LogementVide logement_vides1 = LogementVide("Duplex de rose", "Akwa", proprietaire1);
  LogementMeuble logementMeuble1 = LogementMeuble("Villa de jouvence", "Deido", proprietaire1, "Meubles");
  print('Proprietes de ${proprietaire1.get_nom()} :');
  for (var logement in proprietaire1.logements) {
    print('>> ${logement.get_nom_logement()}');
  }
  print('');

  //Reservation
  if(logementMeuble1.est_disponible){
    Reservation reservation1 = locataire1.reserver_logement(logementMeuble1, DateTime(2024, 1, 25), DateTime(2024, 5, 25));
    print('Logements en reservation attente de ${locataire1.get_nom()} :');
    for (var reservation in locataire1.reservations_en_attente) {
      print('>> ${reservation.logement.get_nom_logement()}');
    }

    //3. Gestion des Locations
    ContratLocation contratLocation = ContratLocation(reservation1);
    Paiement paiement1 = Paiement(50000, DateTime.now(), locataire1);
    contratLocation.ajouter_paiement(paiement1);
  }
  else{
    print("${logementMeuble1.get_nom_logement()} n'est pas disponible.");
  }

}
