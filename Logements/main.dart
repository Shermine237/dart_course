import './utilisateurs/administrateur.dart' show Administrateur;
import './utilisateurs/locataire.dart' show Locataire;
import './utilisateurs/proprietaire.dart' show Proprietaire;

void main(){
  //1- Utilisateurs
  Administrateur admin1 = Administrateur('Jean admin', "jean@email.sample");
  admin1.se_presenter();
  Locataire locataire1 = Locataire('Michel locat', "michel@email.sample");
  locataire1.se_presenter();
  Proprietaire proprietaire1 = Proprietaire('Kankan proprio', "kankan@email.sample");
  proprietaire1.se_presenter();
}
