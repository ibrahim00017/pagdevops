#!/usr/bin/env bash
#premier parametre representant le repertoire dans lequel ont a cloner tous les projets
repository_dir=$1

#Un tableau contenant le nom de tous les projets qui generent un war
projets_wars=("categorie.service.fonctionnel" "projet.service.fonctionnel" "commentaire.service.fonctionnel" "media.service.fonctionnel" "liketable.service.fonctionnel" "note.service.fonctionnel"  "debat.service.fonctionnel"  "censure.service.fonctionnel" "sondage.service.fonctionnel" "notification.generator.services" "notification.diffusion.services" "preference.service.fonctionnel" "programme.service.fonctionnel" )

#On verifie si le repertoire dans lequel ont a cloner tous les projets existe
#Et On sort du script si le repertoire n'existe
# if [ ! -d "$repository_dir" ]
# then
#     exit
# fi


for projet_war in ${projets_wars[@]}
   do
	if [ -d "$repository_dir" ]
	then
	      d "$repository_dir/$projet_war"
	      rm -rf src/main/resources/local/
	      rm -rf src/main/resources/dev/
       	  rm -rf src/test/resources/local/
	      rm -rf src/test/resources/dev/
	      rm -rf target/ log*
	      mvn clean install -P test -DskipTests
	      # nohup mvn spring-boot:run -P test  -DskipTests > log.out &
	      mvn spring-boot:run -P test  -DskipTests > log.out 
	fi
	
done
