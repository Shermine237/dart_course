import './utilisateur.dart' show Utilisateur;
import '../reglements/reservation.dart' show Reservation;
import '../logements/logement.dart' show Logement;

class Locataire extends Utilisateur{
  List<Reservation> reservations = [];

  Locataire(super.nom, super.email){
    this.role = "Locataire";
  }

  //Methods
  reserver_logement(Logement logement, DateTime debut, DateTime fin){
    if(logement.est_disponible){
      Reservation reservation = Reservation(debut, fin, logement);
      reservations.add(reservation);
    }
    else{
      print("${logement.get_nom_logement()} n'est pas disponible.");
    }
  }
}
