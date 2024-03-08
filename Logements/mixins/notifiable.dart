mixin Notifiable{
  void afficher_notification(titre, message){
    print('----------');
    print('>> ${titre} <<');
    print(message);
    print('----------');
  }

}
