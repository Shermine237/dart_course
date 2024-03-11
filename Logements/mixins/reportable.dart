import '../reports/rapportRevenu.dart' show RapportRevenu;

mixin Reportable{
  List<RapportRevenu> rapports_revenu = [];

  void ajouter_rapport(RapportRevenu rapport){
    if (!this.rapports_revenu.contains(rapport)) {
      this.rapports_revenu.add(rapport);
    }
  }

  void afficher_rapport_revenu_mensuel(int mois){
    int total = 0;
    for (var rapport in this.rapports_revenu) {
      if(rapport.date.month == mois){
        print('Date: ${rapport.date} | Revenu: ${rapport.revenu} Fcfa | ${rapport.information}');
        total += rapport.revenu;
      }
    }
    print('Montant total : ${total} Fcfa');
  }

  void afficher_rapport_revenu_annuel(int annee){
    int total = 0;
    for (var rapport in this.rapports_revenu) {
      if(rapport.date.year == annee){
        print('Date: ${rapport.date} | Revenu: ${rapport.revenu} Fcfa | ${rapport.information}');
        total += rapport.revenu;
      }
    }
    print('Montant total : ${total} Fcfa');
  }
}
