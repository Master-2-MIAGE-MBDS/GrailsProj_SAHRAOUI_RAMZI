# Contributors
#

Etudiante:    SAHRAOUI Fatima-Ezzahra :smile:
#
Etudiant :    RAMZI Mouad :smile:

#

# Encadrement :
M.Grégory Galli

# Lien vers demo
[LIEN DEMO Youtube ](https://www.youtube.com/watch?v=LOsY53T3Yk4)

# Objectifs
Une platforme qui a comme but d’administrer les annonces, les modifier, les supprimer , 
en les associant des illustrations sur les quelles on peut appliquer la meme chose c'est à dire toute Operation de CRUD


# Démarrage
Apres cloner le projet dans votre local et faire le build ,
il faut changer le path des images qui correspond à votre local pour n’avoir aucun problème concernant l’affichage des images,
après leur insertion , et c’est à partir du fichier "grails-app[main]/conf/spring/application.yml" ou vous allez trouver le basePath pour les illustrations:
# Langage,programmes  et ressources 
groovy(back-end) 
#
HTML,CSS (front-end)
#
Intellij (IDE de travail)
#
Spring Security

# Besoins fonctionnels 

On est concernés par 3 utilisateurs qui pourront avoir 3 rôles différents respectivement:
ADMIN , MODERATOR , CLIENT .
chacun d’eux peut s’identifier et se déconnecter également à tout moment.
Apres effectuer son login , l’administrateur peut  Créer ,gérer ,Visualiser , Mettre à jour , Supprimer Des utilisateurs ainsi que des annonces (avec upload d’illustrations et leurs images) , 
alors il peut accéder à chaque annonce à partir d’un tableau qui les regroupe tous (chaque annonce avec l’utilisateur associé) ,
puis il peut appliquer toute opération voulue du CRUD , il peut également modifier une annonce pour ajouter plus d’illustrations bien sur avec leurs images qui vont être affichées par la suite dans le tableau des annonces après l’actualisation ,
Concernant le client , il ne peut ni gérer ni avoir la main sur la gestion des utilisateurs

Point de plus : On peut switcher à tout moment l'utilisateur connecté et qui s'affiche en haut 
de page comme current user 

# captures des Besoins 

# la page du login

<p>

<img src="images/login.png" width="1280" height="599">

</p>

 

# les utilisateurs



<p>

<img src="images/create-user.jpeg" width="1280" height="595">

</p>


<p>

<img src="images/show-user.jpeg" width="1280" height="595">

</p>


<p>

<img src="images/users.jpeg" width="1280" height="595">

</p>


# créer une Annonce.

<p>

<img src="images/create-annonce.jpeg" width="1280" height="595">

</p>

# lister les Annonces

<p>

<img src="images/liste-annonces.jpeg" width="1280" height="595">

</p>

# Illustration

<p>

<img src="images/show-illustration.jpeg" width="1280" height="595">

</p>

# Versions
Version de Grails : 3.3.8

Java : OpenJDK 1.8

Git : version non pertinente






