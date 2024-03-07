import 'photo.dart' show Photo;
import 'video.dart' show Video;

void main(){
  Photo photo1 = Photo("Jean Pierre", DateTime.now(), "/home/user/img.jpg", "Negatif");
  photo1.afficherDetails();
  photo1.ajouterCommentaire("Belle Photo !");

  print("----------------------");

  Video video1 = Video("Anne Marie", DateTime.now(), "/home/user/video.mp4", 20);
  video1.afficherDetails();
  video1.ajouterCommentaire("Belle Video !");
}
