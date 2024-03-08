class Commentaire{
  int _note;
  String _auteur;
  String _commentaire;

  Commentaire(this._auteur, this._note, this._commentaire);

  //Setter
  void set_auteur(String auteur){
    _auteur = auteur;
  }

  void set_note(int note){
    _note = note;
  }

  void set_commentaire(String commentaire){
    _commentaire = commentaire;
  }

  //Getter
  String get_auteur(){
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
    print('Auteur: ${_auteur}');
    print('Note: ${_note}');
    print('Commentaire: ${_commentaire}');
  }
}
