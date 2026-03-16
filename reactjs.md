**React Application CI/CD Pipeline with Monitoring**

This project demonstrates a **complete DevOps pipeline** for deploying a React application using:

* Jenkins CI/CD
* Docker & Docker Hub
* AWS EC2
* Prometheus
* Grafana
* Node Exporter

The pipeline automatically **builds, pushes, and deploys the application** and also **monitors server health and application availability**.

---

# Tools & Technologies

* AWS EC2
* Jenkins
* Docker
* Docker Hub
* Prometheus
* Grafana
* Node Exporter
* GitHub

---

# Step 1: Launch EC2 Instance

Launch an **AWS EC2 instance (t2.micro)** and configure it to host the CI/CD pipeline and monitoring tools.

![EC2 Instance](https://github.com/Aditikhare31/React-application/blob/main/EC2_instance.png)

---

# Step 2: Configure Security Group

Open the required ports in the **EC2 Security Group**.

| Port | Service       |
| ---- | ------------- |
| 22   | SSH           |
| 8080 | Jenkins       |
| 3000 | Grafana       |
| 9090 | Prometheus    |
| 9100 | Node Exporter |
| 80   | Application   |

![Security Group](https://github.com/Aditikhare31/React-application/blob/main/EC2_SG_configs.png)

---

# Step 3: Install Required Tools

Connect to the EC2 instance using SSH and install:

* Jenkins
* Docker
* Prometheus
* Grafana
* Node Exporter

---

# Step 4: Containerization

Create the following files:

* **Dockerfile** → Builds the React application image
* **docker-compose.yml** → Runs the containerized application

---

# Step 5: Create Automation Scripts

Create the following scripts:

### build.sh

Builds the Docker image and pushes it to Docker Hub.

### deploy.sh

Pulls the image from Docker Hub and deploys it to the server.

---

# Step 6: Jenkins Setup

Access Jenkins using:

```
http://<EC2-PUBLIC-IP>:8080
```

Login to Jenkins and configure the pipeline.

![Jenkins Login](https://github.com/Aditikhare31/React-application/blob/main/Jenkins-login-page.png)

---

# Step 7: Configure Jenkins Pipeline

Configure pipelines for **main** and **dev** branches.

### Main Branch Pipeline

![Jenkins Config](https://github.com/Aditikhare31/React-application/blob/main/Jenkins-config.png)

Pipeline execution:

![Main Console Output](https://github.com/Aditikhare31/React-application/blob/main/Jenkins-console-output-main.png)

---

### Dev Branch Pipeline

![Dev Pipeline Config](https://github.com/Aditikhare31/React-application/blob/main/Jenkins-config-dev.png)

Pipeline execution:

![Dev Console Output](https://github.com/Aditikhare31/React-application/blob/main/Jenkins-console-output-dev.png)

---

# Step 8: Docker Images

Images are pushed to Docker Hub repositories.

### Dev Image

![Docker Dev](https://github.com/Aditikhare31/React-application/blob/main/Dockerhub-dev-repo.png)

### Production Image

![Docker Prod](https://github.com/Aditikhare31/React-application/blob/main/Dockerhub-prod-repo.png)

---

# Step 9: Access the Application

After successful deployment, the application can be accessed via the EC2 public IP.

![Deployed Application](https://github.com/Aditikhare31/React-application/blob/main/Deployed_site_page.png)

---

# 📊 Step 10: Monitoring Setup

Monitoring stack includes:

* **Node Exporter** → Collects server metrics
* **Prometheus** → Scrapes and stores metrics
* **Grafana** → Visualizes metrics with dashboards

![Monitoring dashboard](https://github.com/Aditikhare31/React-application/blob/main/Monitoring-dashboard.png)
![Alert setup](https://github.com/Aditikhare31/React-application/blob/main/Monitoring-setup.png)

Alerts are configured in Grafana to notify if the application or server goes down.


---
