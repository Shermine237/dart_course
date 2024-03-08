class Tarification{
  int _tarif_jour;

  Tarification(this._tarif_jour);

//Getters
  int get_tarif_jour(){
    return _tarif_jour;
  }

//Setters
  void set_tarif_jour(int tarif){
    _tarif_jour = tarif;
  }

//Methods
  int cout_total(DateTime debut, DateTime fin){
    if (fin.isBefore(debut)) {
      throw ArgumentError("La date de fin doit être supérieure à la date de début.");
    }
    
    Duration difference = fin.difference(debut);
    return difference.inDays * _tarif_jour;
  }
}
