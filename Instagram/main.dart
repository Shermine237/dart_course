import 'photo.dart' show Photo;
import 'video.dart' show Video;
import 'publication.dart' show Publication;
import 'commentable.dart' show Commentable;

void main(){
  Publication publication1 = Photo("Jean Pierre", DateTime.now(), "/home/user/img.jpg", "Negatif");
  publication1.afficherDetails();
  Commentable commentaire1 = publication1 as Commentable;
  commentaire1.ajouterCommentaire("Belle Photo !");

  print("----------------------");

  Publication publication2 = Video("Anne Marie", DateTime.now(), "/home/user/video.mp4", 20);
  publication2.afficherDetails();
  Commentable commentaire2 = publication2 as Commentable;
  commentaire2.ajouterCommentaire("Belle Video !");
}
