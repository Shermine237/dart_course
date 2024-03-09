import '../mixins/notifiable.dart' show Notifiable;

abstract class Utilisateur with Notifiable{
  String _nom;
  String _email;
  String role = "";

  Utilisateur(this._nom, this._email);

  //Getters
  String get_nom(){
    return _nom;
  }

  String get_email(){
    return _email;
  }

  //Setters
  void set_nom(String nom){
    _nom = nom;
  }

  void set_email(String email){
    _email = email;
  }

  //Methods
  void se_presenter(){
    print('Nom: ${_nom}\nEmail: ${_email}\nRole: ${role}');
  }

  bool se_connecter(){
    return true;
  }

  bool se_deconnecter(){
    return true;
  }
}
