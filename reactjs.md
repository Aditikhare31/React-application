##Launch EC2 instance (t2.micro)
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/EC2_instance.png">

##Added ports for Node exporter, Grafana, Prometheus, Jenkins in security group
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/EC2_SG_configs.png">

##Now connect to Ec2 instance and install Jenkins, docker, Prometheus, Grafana and node exporter

##create Dockerfile, docker-compose file to run and build the image

##create build.sh and deploy.sh file for building image and pushing image to docker hub

##Connect to Jenkins using 8080 port
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Jenkins-login-page.png">

##configure pipeline for both dev and main branch. First run pipeline via main branch
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Jenkins-config.png">

<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Jenkins-console-output-main.png">

##then with dev branch
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Jenkins-config-dev.png">

<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Jenkins-console-output-dev.png">

##and image pushed to docker hub repos
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Dockerhub-dev-repo.png">

<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Dockerhub-prod-repo.png">

##Open deployed application on web server
<img width="959" alt="Screenshot 2023-12-23 123623" src="https://github.com/Aditikhare31/React-application/blob/main/Deployed_site_page.png">
