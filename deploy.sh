#!/bin/bash

#login to dockerhub
docker login -u adikhare31 -p PurvaManu_0302 


if [ "$GIT_BRANCH" = "dev" ]; then 
	docker tag nginx_image adikhare31/reactjs-dev 
	docker push adikhare31/reactjs-dev:latest 
elif [ "$GIT_BRANCH" = "main" ]; then 
	docker tag nginx_image adikhare31/reactjs-prod 
	docker push adikhare31/reactjs-prod:latest 
else 
	echo "No branch" 
fi

#run container
docker compose up -d
