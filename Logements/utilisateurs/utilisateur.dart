abstract class Utilisateur{
  String _nom;
  String _email;

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
  bool se_connecter(){
    return true;
  }

  bool se_deconnecter(){
    return true;
  }
}
