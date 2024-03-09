import '../wizard/commentaire.dart' show Commentaire;
mixin Commentable{
  List<Commentaire> commentaires = [];

  void afficher_commentaires(){
    print('>> TOUS LES COMMENTAIRES <<');
    for (var commentaire in this.commentaires) {
      commentaire.afficher_commentaire();
      print('...');
    }
  }

  void ajouter_commentaire(Commentaire commentaire){
    this.commentaires.add(commentaire);
  }

  void supprimer_commentaire(Commentaire commentaire){
    if (this.commentaires.contains(commentaire)){
      this.commentaires.remove(commentaire);
    }
  }

}
