import './utilisateur.dart' show Utilisateur;
import '../reglements/reservation.dart' show Reservation;
import '../logements/logement.dart' show Logement;

class Locataire extends Utilisateur{
  List<Reservation> reservations_en_attente = [];
  List<Reservation> reservations = [];

  Locataire(super.nom, super.email){
    this.role = "Locataire";
  }

  //Methods
  reserver_logement(Logement logement, DateTime debut, DateTime fin){
    if(logement.est_disponible){
      Reservation reservation = Reservation(debut, fin, logement, this);
      _ajouter_reservation(this.reservations_en_attente, reservation);
    }
    else{
      print("${logement.get_nom_logement()} n'est pas disponible.");
    }
  }

  void enregistrer_reservation(Reservation reservation){
    _ajouter_reservation(this.reservations, reservation);
  }

  void _ajouter_reservation(List<Reservation> liste, Reservation reservation){
    if (!liste.contains(reservation)) {
      liste.add(reservation);
    }
 print('${this.get_nom()} a deja une reservation de ${reservation.logement.get_nom_logement()}');
  }
}
