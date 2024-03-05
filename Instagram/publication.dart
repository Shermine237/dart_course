abstract class Publication{
  String auteur;
  DateTime datePublication;

  Publication(this.auteur, this.datePublication);

  void afficherDetails(){
    print('Auteur: ${this.auteur}\nDate de publication: ${this.datePublication}');
  }
}
