Exercise Poo Dart - Contexte Réseau Social Instagram :

Problème :

Vous êtes impliqué dans le développement d'une application de réseau social similaire à Instagram. Pour garantir une gestion flexible des différents types de publications et de commentaires, vous devez utiliser des concepts intermédiaires et simples de la programmation orientée objet (POO) en Dart.

 niveau : intermediaire 

Tâches à Réaliser :

1. Utilisation de Concepts Simples de la POO :
   - Appliquez les concepts simples de la POO pour la création de classes de base, la définition de classes, la création d'objets, l'encapsulation, l'héritage, le polymorphisme, et la redéfinition de méthodes dans des sous-classes.

   - Créez une classe de base ElementSocial qui servira de modèle pour les éléments du réseau social. Cette classe peut contenir des attributs tels que auteur et datePublication. Définissez également une méthode afficherDetails().

   - Utilisez cette classe pour créer des objets de base, représentant par exemple des publications simples, avant d'ajouter des fonctionnalités spécifiques avec les classes Photo et Video.

2. Création de Classes Abstraites :
   - Définissez une classe abstraite Publication avec les propriétés suivantes :
      - auteur (String)
      - datePublication (String)
   - Ajoutez une méthode abstraite afficherDetails() pour afficher les détails de la publication.

3. Implémentation d'Interfaces :
   - Créez une interface Commentable avec une méthode ajouterCommentaire(commentaire: String).

4. Encapsulation Avancée :
   - Ajoutez des getters et setters pour les attributs de la classe ElementSocial.
   - Ajoutez des méthodes spécifiques pour manipuler les données de manière plus fine (ex. modifierAuteur(nouvelAuteur: String)).

5. Héritage Multiple - Classe Photo :
   - Créez une classe Photo qui hérite de ElementSocial et implémente l'interface Commentable.
   - Ajoutez des propriétés spécifiques à une photo telles que cheminImage (String) et filtreUtilise (String).

6. Héritage Multiple - Classe Video :
   - Créez une classe Video qui hérite de ElementSocial et implémente l'interface Commentable.
   - Ajoutez des propriétés spécifiques à une vidéo telles que lienVideo (String) et duree (int).

7. Polymorphisme Avancé :
   - Implémentez le polymorphisme à l'exécution en permettant à la méthode afficherDetails() de la classe ElementSocial d'afficher des informations spécifiques pour les sous-classes Photo et Video.

8. Utilisation de la Liaison Dynamique :
   - Utilisez la liaison dynamique pour appeler la méthode ajouterCommentaire() à partir d'un objet de type Publication, indépendamment de sa sous-classe.


Instructions :

- Utilisez un éditeur de code Dart en ligne ou votre environnement de développement local pour coder et tester votre solution.
- Assurez-vous d'expliquer chaque concept utilisé, en montrant comment ils ont été appliqués pour résoudre le problème spécifique.
- Lors de la présentation des résultats, exécutez votre code pour montrer la sortie générée par votre solution.
- Mettez en avant la plus-value de chaque concept dans la résolution précise du problème posé, en mettant en évidence la flexibilité et la facilité d'extension du système de publications et commentaires.


Livrables :

1. Code Dart Structuré :
   - Organisez votre code de manière claire et structurée en respectant les principes de la POO.
   - Commentez votre code pour expliquer les choix de conception et les applications des concepts POO.

2. Capture d'Écran des Tests d'Exécution :
   - Fournissez une capture d'écran montrant l'exécution de votre code sur un éditeur Dart en ligne ou dans votre environnement de développement local.
   - Assurez-vous que les résultats affichés mettent en évidence les fonctionnalités des classes et des concepts POO utilisés.

3. Explications Détaillées :
   - Écrivez des explications détaillées pour chaque concept POO utilisé dans votre solution.
   - Expliquez comment chaque concept a été appliqué pour résoudre des aspects spécifiques du problème.

4. Démo Interactive :
   - Préparez une démo interactive de votre système de gestion de réseau social en utilisant des publications de photos et de vidéos.
   - Montrez comment la flexibilité des classes et le polymorphisme permettent une extension facile du système.

5. Mise en Avant des Plus-Values :
   - Mettez en évidence la plus-value de chaque concept POO dans la résolution précise du problème.
   - Expliquez comment la POO a facilité la gestion flexible des publications et des commentaires dans le contexte d'un réseau social similaire à Instagram.