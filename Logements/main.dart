import './reglements/paiement.dart' show Paiement;
import './utilisateurs/locataire.dart' show Locataire;
import 'reglements/reservation.dart' show Reservation;
import './logements/logementVide.dart' show LogementVide;
import './reglements/tarification.dart' show Tarification;
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
  LogementVide logement_vides1 = LogementVide("Duplex de rose", "Akwa", proprietaire1, DateTime(2024, 1, 1), DateTime(2024, 12, 1), Tarification(500));
  LogementMeuble logementMeuble1 = LogementMeuble("Villa de jouvence", "Deido", proprietaire1, DateTime(2024, 1, 1), DateTime(2024, 12, 1), Tarification(500), "Meubles");
  print('Proprietes de ${proprietaire1.get_nom()} :');
  for (var logement in proprietaire1.logements) {
    print('>> ${logement.get_nom_logement()}');
  }
  print('');

  //Reservation
  if(logementMeuble1.est_reserve){
    print("${logementMeuble1.get_nom_logement()} est deja reserve.");
  }
  else{
    Reservation reservation1 = locataire1.reserver_logement(logementMeuble1, DateTime(2024, 1, 25), DateTime(2024, 5, 25));
  }

  if(logement_vides1.est_reserve){
    print("${logement_vides1.get_nom_logement()} est deja reserve.");
    print('');
  }
  else{
    Reservation reservation2 = locataire1.reserver_logement(logement_vides1, DateTime(2024, 2, 12), DateTime(2024, 9, 15));
    print('Logements en reservation attente de ${locataire1.get_nom()} :');
    for (var reservation in locataire1.reservations_en_attente) {
      print('>> ${reservation.logement.get_nom_logement()}');
    }
    print('');

    //3. Gestion des Locations
    if(reservation2.disponible){
      ContratLocation contratLocation = ContratLocation(reservation2);

      Paiement paiement1 = Paiement(5000000000, DateTime.now(), locataire1, "Paiement pour la reservation de ${contratLocation.reservation.logement.get_nom_logement()} du ${contratLocation.reservation.date_debut} au ${contratLocation.reservation.date_fin} pour ${contratLocation.reservation.locataire.get_nom()}");
    
      Paiement paiement2 = Paiement(3000000000, DateTime.now(), locataire1, "Paiement pour la reservation de ${contratLocation.reservation.logement.get_nom_logement()} du ${contratLocation.reservation.date_debut} au ${contratLocation.reservation.date_fin} pour ${contratLocation.reservation.locataire.get_nom()}");

      bool statut_paiement = contratLocation.ajouter_paiement(paiement1);
      bool statut_paiement2 = contratLocation.ajouter_paiement(paiement2);
      print('');
      if(statut_paiement){
        contratLocation.reservation.confirner();
      }
      if(statut_paiement2){
        contratLocation.reservation.confirner();
      }
    }
    print('');
  }
  //4. Calendrier de Disponibilité
  logement_vides1.afficher_periode();
  logementMeuble1.afficher_periode();
  print('');

  //5. Gestion des Tarifs
  logementMeuble1.set_tarif_jour(Tarification(25000));
  print("Tarif de ${logementMeuble1.get_nom_logement()} : ${logementMeuble1.get_tarif_jour().get_tarif_jour()}");
  print('');

  //6.  Notifications et Commentaires
  locataire1.commenter('Beau mais trop cher', 3, DateTime.now(), logementMeuble1);
  locataire1.commenter('Trop bien', 4, DateTime.now(), logementMeuble1);
  print('');
  logementMeuble1.afficher_commentaires();
  print('');

  //7. Statistiques et Rapports
  print('Rapport de Revenu du proprietaire ${proprietaire1.get_nom()}');
  proprietaire1.afficher_rapport_annuel(2024);
  print('');
  proprietaire1.afficher_rapport_mensuel(3);
  print('');
  print('Rapport de Depense du locataire ${locataire1.get_nom()}');
  locataire1.afficher_rapport_mensuel(3);
  print('');
  logement_vides1.afficher_statistique();
}
