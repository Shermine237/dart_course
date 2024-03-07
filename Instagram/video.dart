import 'elementSocial.dart' show ElementSocial;
import 'commentable.dart' show Commentable;

class Video extends ElementSocial with Commentable{
  String lienVideo;
  int duree;

  Video(super.auteur, super.datePublication, this.lienVideo, this.duree);

  @override
  void afficherDetails(){
    super.afficherDetails();
    print('Video: ${this.lienVideo}\nDuree: ${this.duree}');
  }
}
