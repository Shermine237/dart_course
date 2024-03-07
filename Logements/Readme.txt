Exercise Poo Dart - Gestion Évolutive de Locations de Logements :

##Description :
Cet exercice invite les apprenants à concevoir et implémenter un système de gestion de locations de logements en utilisant les concepts simples, intermédiaires et avancés de la programmation orientée objet (POO) en Dart. Le problème nécessite la création d'un système flexible avec des fonctionnalités diverses pour différents types de profils utilisateur.

 Niveau: avancé 

##Problème à Résoudre :
Développer un système de gestion de locations de logements avec des fonctionnalités spécifiques pour les propriétaires, les locataires et les administrateurs, en utilisant les concepts de la POO.

##Fonctionnalités avec Types de Profils Utilisateur :

- Gestion des Utilisateurs :
  - Création de compte utilisateur (Propriétaire, Locataire, Administrateur)
  - Connexion et déconnexion
  - Profil utilisateur avec informations personnelles
  - Concepts POO : Classes, Encapsulation, Polymorphisme

- Gestion des Logements :
  - Ajout, modification et suppression de logements (Propriétaire)
  - Catégorisation des logements (vide ou meublé)
  - Stockage des informations détaillées sur chaque logement
  - Concepts POO : Héritage, Encapsulation Avancée

- Gestion des Locations :
  - Création et annulation de contrats de location (Propriétaire, Locataire)
  - Suivi des paiements (mensuels pour logements vides, quotidiens pour meublés)
  - Historique des locations et des paiements
  - Concepts POO : Composition, Encapsulation Avancée

- Calendrier de Disponibilité :
  - Affichage des dates de disponibilité pour les logements (Propriétaire, Locataire)
  - Réservation des logements pour des périodes spécifiques (Locataire)
  - Concepts POO : Encapsulation, Méthodes Génériques

- Gestion des Tarifs :
  - Définition des tarifs de location par type de logement (Propriétaire)
  - Calcul automatique des coûts en fonction de la durée de location
  - Concepts POO : Encapsulation, Méthodes Génériques

- Notifications :
  - Alertes pour les paiements à venir (Locataire, Propriétaire)
  - Notifications de confirmation de réservation (Locataire, Propriétaire)
  - Concepts POO : Polymorphisme, Encapsulation

- Gestion des Commentaires et Évaluations :
  - Ajout de commentaires et évaluations par les locataires (Locataire)
  - Affichage des évaluations sur les logements
  - Concepts POO : Polymorphisme, Encapsulation

- Statistiques et Rapports :
  - Rapports mensuels sur les revenus (Propriétaire)
  - Statistiques sur l'occupation des logements
  - Concepts POO : Méthodes et Classes Génériques, Encapsulation

Tâches à Réaliser pour toutes les fonctionnalités :

1. Création de Classes de Base :
   - Définissez une classe Utilisateur avec des sous-classes pour les profils (Propriétaire, Locataire, Administrateur).
   - Ajoutez des attributs tels que nom, email, et des méthodes pour la gestion du compte.
   - Concepts POO : Classes, Héritage, Encapsulation

2. Gestion des Logements :
   - Implémentez les classes Logement, LogementVide, et LogementMeuble avec des attributs spécifiques à chaque type.
   - Utilisez l'encapsulation avancée avec des getters, setters et des méthodes spécifiques.
   - Concepts POO : Héritage, Encapsulation Avancée

3. Gestion des Locations :
   - Créez une classe ContratLocation pour représenter un contrat de location.
   - Ajoutez des méthodes pour la création, l'annulation et le suivi des paiements.
   - Concepts POO : Composition, Encapsulation Avancée

4. Calendrier de Disponibilité :
   - Intégrez un mécanisme pour afficher les dates de disponibilité des logements.
   - Permettez aux locataires de réserver des logements pour des périodes spécifiques.
   - Concepts POO : Encapsulation, Méthodes Génériques

5. Gestion des Tarifs :
   - Développez une classe Tarification pour définir les tarifs de location par type de logement.
   - Ajoutez un calcul automatique des coûts en fonction de la durée de location.
   - Concepts POO : Encapsulation, Méthodes Génériques

6.  Notifications et Commentaires :
   - Intégrez un système de notifications pour les paiements à venir et les réservations confirmées.
   - Permettez aux locataires d'ajouter des commentaires et des évaluations.
   - Concepts POO : Polymorphisme, Encapsulation

7. Statistiques et Rapports :
   - Créez des rapports mensuels sur les revenus pour les propriétaires.
   - Affichez des statistiques sur l'occupation des logements.
   - Concepts POO : Méthodes et Classes Génériques, Encapsulation

Livrables :

1. Code Dart structuré utilisant des concepts simples, intermédiaires et avancés de la POO.
2. Capture d'écran des tests d'exécution ( sorties console) sur un online Dart code editor and compiler ou en local sur votre environement  .
3. Explications détaillées de l'utilisation de chaque concept dans la résolution du problème.
4. Démo interactive du système mettant en évidence la flexibilité et la structure évolutive.