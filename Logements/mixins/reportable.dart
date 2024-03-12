import '../reports/rapport.dart' show Rapport;

mixin Reportable{
  List<Rapport> rapports = [];

  void ajouter_rapport(Rapport rapport){
    if (!this.rapports.contains(rapport)) {
      this.rapports.add(rapport);
    }
  }

  void afficher_rapport_mensuel(int mois){
    int total = 0;
    print('RAPPORT DU MOIS de ${this._chiffreEnMois(mois)}');
    for (var rapport in this.rapports) {
      if(rapport.date.month == mois){
        print('>> Date: ${rapport.date} | Montant: ${rapport.montant} Fcfa | ${rapport.information}');
        total += rapport.montant;
      }
    }
    print('Total : ${total} Fcfa');
  }

  void afficher_rapport_annuel(int annee){
    int total = 0;
    print("RAPPORT DE L'ANNEE ${annee}");
    for (var rapport in this.rapports) {
      if(rapport.date.year == annee){
        print('>> Date: ${rapport.date} | Montant: ${rapport.montant} Fcfa | ${rapport.information}');
        total += rapport.montant;
      }
    }
    print('Total : ${total} Fcfa');
  }

  String _chiffreEnMois(int chiffre){
    String mois = "";
    switch (chiffre) {
      case 1:
        mois = 'Janvier';
        break;
      case 2:
        mois = 'Fevrier';
        break;
      case 3:
        mois = 'Mars';
        break;
      case 4:
        mois = 'Avril';
        break;
      case 5:
        mois = 'Mai';
        break;
      case 6:
        mois = 'Juin';
        break;
      case 7:
        mois = 'Juillet';
        break;
      case 8:
        mois = 'Aout';
        break;
      case 9:
        mois = 'Septembre';
        break;
      case 10:
        mois = 'Octobre';
        break;
      case 11:
        mois = 'Novenbre';
        break;
      case 12:
        mois = 'Decembre';
        break;
      default:
        mois = 'Inconnu';
    }
    return mois;
  }
}
