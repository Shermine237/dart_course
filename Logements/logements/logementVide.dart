import './logement.dart' show Logement;

class LogementVide extends Logement{
  LogementVide(super._nom_logement, super._localisation, super.proprietaire, super.debut_disponibilite, super.fin_disponibilite, super._tarif_jour);
}
