mixin Periodique{
  late DateTime date_debut;
  late DateTime date_fin;

  void set_date_debut(DateTime date){
    this.date_debut = date;
  }

  void set_date_fin(DateTime date){
    this.date_fin = date;
  }

  void set_periode(DateTime debut, DateTime fin){
    this.date_debut = debut;
    this.date_fin = fin;
  }

  void afficher_periode(){
    print('Valide du ${this.date_debut} au ${this.date_fin}');
  }
}
