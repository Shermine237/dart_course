import 'elementSocial.dart' show ElementSocial;
import 'commentable.dart' show Commentable;

class Video extends ElementSocial implements Commentable{
  String lienVideo;
  int duree;

  Video(super.auteur, super.datePublication, this.lienVideo, this.duree);

  @override
  void afficherDetails(){
    super.afficherDetails();
    print('Video: ${this.lienVideo}\nDuree: ${this.duree}');
  }

  void ajouterCommentaire(String commentaire){
    print("Nouveau commentaire: ${commentaire}");
  }
}
