import 'elementSocial.dart' show ElementSocial;

class Video extends ElementSocial{
  String lien_video;

  Video(super.auteur, super.datePublication, this.lien_video);

  @override
  void afficherDetails(){
    super.afficherDetails();
    print('Photo: ${this.lien_video}');
  }
}