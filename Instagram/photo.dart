import 'elementSocial.dart' show ElementSocial;
import 'commentable.dart' show Commentable;

class Photo extends ElementSocial implements Commentable{
  String cheminImage;
  String filtreUtilise;

  Photo(super.auteur, super.datePublication, this.cheminImage, this.filtreUtilise);

  @override
  void afficherDetails(){
    super.afficherDetails();
    print('Photo: ${this.cheminImage}\nFiltre: ${this.filtreUtilise}');
  }

  void ajouterCommentaire(String commentaire){
    print("Nouveau commentaire: ${commentaire}");
  }
}
