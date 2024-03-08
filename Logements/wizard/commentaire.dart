import '../utilisateurs/locataire.dart' show Locataire;
class Commentaire{
  int _note;
  Locataire _auteur;
  String _commentaire;

  Commentaire(this._auteur, this._note, this._commentaire);

  //Setter
  void set_auteur(Locataire auteur){
    _auteur = auteur;
  }

  void set_note(int note){
    _note = note;
  }

  void set_commentaire(String commentaire){
    _commentaire = commentaire;
  }

  //Getter
  Locataire get_auteur(){
    return _auteur;
  }

  int get_note(){
    return _note;
  }

  String get_commentaire(){
    return _commentaire;
  }

  //Methods
  void afficher_commentaire(){
    print('Auteur: ${_auteur.get_nom()}');
    print('Note: ${_note}');
    print('Commentaire: ${_commentaire}');
  }
}
