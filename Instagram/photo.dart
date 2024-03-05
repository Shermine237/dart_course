import 'elementSocial.dart' show ElementSocial;

class Photo extends ElementSocial{
  String lien_photo;

  Photo(super.auteur, super.datePublication, this.lien_photo);

  @override
  void afficherDetails(){
    super.afficherDetails();
    print('Photo: ${this.lien_photo}');
  }
}
