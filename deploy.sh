#!/bin/bash

docker login -u adikhare31 -p PurvaManu_0302 

if [ "$GIT_BRANCH" = "origin/dev" ]; then 
	docker tag nginx_image aditikhare31/reactjs-dev 
	docker push aditikhare31/reactjs-dev:latest 
elif [ "$GIT_BRANCH" = "origin/main" ]; then 
	docker tag image aditikhare31/reactjs-prod 
	docker push aditikhare31/reactjs-prod:latest 
else 
	echo "No branch" 
fi
