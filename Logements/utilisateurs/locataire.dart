import './utilisateur.dart' show Utilisateur;
import '../logements/logement.dart' show Logement;
import '../wizard/commentaire.dart' show Commentaire;
import '../reglements/reservation.dart' show Reservation;

class Locataire extends Utilisateur{
  List<Reservation> reservations_en_attente = [];
  List<Reservation> reservations = [];
  List<Commentaire> commentaires = [];

  Locataire(super.nom, super.email){
    this.role = "Locataire";
  }

  //Methods
  reserver_logement(Logement logement, DateTime debut, DateTime fin){
    if(!logement.est_reserve){
      Reservation reservation = Reservation(debut, fin, logement, this);
      _ajouter_reservation(this.reservations_en_attente, reservation);
      return reservation;
    }
  }

  void enregistrer_reservation(Reservation reservation){
    _ajouter_reservation(this.reservations, reservation);
  }

  void _ajouter_reservation(List<Reservation> liste, Reservation reservation){
    if (!liste.contains(reservation)) {
      liste.add(reservation);
    }
    else{
      print('${this.get_nom()} a deja une reservation de ${reservation.logement.get_nom_logement()}');
    }
  }

  void commenter(String message, int note, DateTime date, Logement logement){
    Commentaire commentaire = Commentaire(this, note, message, date);
    logement.ajouter_commentaire(commentaire);
    this.commentaires.add(commentaire);
  }
}
