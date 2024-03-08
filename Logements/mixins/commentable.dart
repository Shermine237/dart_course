import '../wizard/commentaire.dart' show Commentaire;
mixin Commentable{
  List<Commentaire> commentaires = [];

  void afficher_commentaires(){
    for (var commentaire in this.commentaires) {
      commentaire.afficher_commentaire();
      print('...');
    }
  }

  void ajouter_commentaire(Commentaire commantaire){
    this.commentaires.add(commantaire);
  }

  void supprimer_commentaire(Commentaire commentaire){
    if (this.commentaires.contains(commentaire)){
      this.commentaires.remove(commentaire);
    }
  }

}
