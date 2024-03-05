class ElementSocial{
  String auteur;
  DateTime datePublication;

  ElementSocial(this.auteur, this.datePublication);

  void afficherDetails(){
    print('Auteur: ${this.auteur}\nDate de publication: ${this.datePublication}');
  }
}