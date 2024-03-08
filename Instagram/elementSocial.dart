import './publication.dart' show Publication;

class ElementSocial extends Publication{

  ElementSocial(super.auteur, super.datePublication);

  // Getters
  String get_auteur(){
    return this.auteur;
  }

  DateTime get_datePublication(){
    return this.datePublication;
  }

  // setters
  void set_datePublication(DateTime date){
    this.datePublication = date;
  }

  // Methodes
  void modifierAuteur(String nouvelAuteur){
    this.auteur = nouvelAuteur;
  }
}
