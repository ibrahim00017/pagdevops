#!/usr/bin/env bash
#premier parametre representant le repertoire dans lequel ont a cloner tous les projets
#Un tableau contenant le nom de tous les projets qui generent un war
projets_wars=("categorie.service.fonctionnel" "projet.service.fonctionnel" "commentaire.service.fonctionnel" "media.service.fonctionnel" "liketable.service.fonctionnel" "note.service.fonctionnel"  "debat.service.fonctionnel"  "censure.service.fonctionnel" "sondage.service.fonctionnel" "notification.generator.services" "notification.diffusion.services" "preference.service.fonctionnel" "programme.service.fonctionnel" "debat.service.use.case")

#On verifie si le repertoire dans lequel ont a cloner tous les projets existe
#Et On sort du script si le repertoire n'existe
# if [ ! -d "$repository_dir" ]
# then
#     exit
# fi


for projet_war in ${projets_wars[@]}
   do
	
	      cd "$projet_war"
	      git pull
	      cd ..
	
	
done
