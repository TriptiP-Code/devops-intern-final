# DevOps Final Project
Name:  Tripti Pandey  
Date:  November 2025  
Project Title: DevOps Internship Final Project  
Description:
This project demonstrates end-to-end DevOps skills, including version control (Git/GitHub), Linux scripting, Docker containerization, CI/CD automation using GitHub Actions, service orchestration with Nomad, and monitoring setup with Grafana Loki.

##  Repository Structure
devops-intern-final/
├── README.md
├── hello.py
├── Dockerfile
├── scripts/
│ └── sysinfo.sh
├── .github/
│ └── workflows/
│ └── ci.yml
├── nomad/
│ └── hello.nomad
└── monitoring/
└── loki_setup.txt

 1.Git & GitHub Setup
A new public repository  `devops-intern-final` was created with: `README.md` containing project details `hello.py` that prints “Hello, DevOps!”
Run command:
python hello.py
 <img width="724" height="397" alt="image" src="https://github.com/user-attachments/assets/f89a0e41-54d5-44c3-8f11-5f00c6f48d0c" />


2.Linux & Scripting Basics
File: scripts/sysinfo.sh
This script prints:
Current user (whoami)
Current date (date)
Disk usage (df -h)

To make executable & run:
bash
Copy code
Executable : chmod +x scripts/sysinfo.sh
Run : ./sysinfo.sh
<img width="1063" height="474" alt="image" src="https://github.com/user-attachments/assets/da17cace-4b57-498f-b235-8130cf06010f" />


3. Docker Containerization
File: Dockerfile
The container runs hello.py automatically on startup.
Build & Run:
docker build -t devops-hello .
 <img width="940" height="572" alt="image" src="https://github.com/user-attachments/assets/35627bdc-e27c-4429-82d7-cb18d2607532" />

 <img width="940" height="519" alt="image" src="https://github.com/user-attachments/assets/ed2a66e9-d041-47d3-b865-8b2c5d53dc47" />

docker run --rm devops-hello 
<img width="940" height="108" alt="image" src="https://github.com/user-attachments/assets/1015ef15-2703-4fe7-88b5-4c79ee28496c" />

 
4. CI/CD with GitHub Actions
File: .github/workflows/ci.yml
This workflow automatically runs python hello.py on every push.
<img width="940" height="496" alt="image" src="https://github.com/user-attachments/assets/a126f7ea-ae3e-4284-b87d-d53164a19f92" />

 

6. Job Deployment with Nomad
File: nomad/hello.nomad
Nomad job file runs the Docker container as a service with minimal resources.

Run Command:
nomad job run nomad/hello.nomad

6. Monitoring with Grafana Loki
File: monitoring/loki_setup.txt
Contains Loki setup instructions .


docker run -d --name=loki -p 3100:3100 grafana/loki:latest
 <img width="940" height="460" alt="image" src="https://github.com/user-attachments/assets/a4795abd-1cd3-4d85-b266-421175c959b9" />

curl http://localhost:3100/metrics
 <img width="940" height="516" alt="image" src="https://github.com/user-attachments/assets/d6d59ef6-2a6f-48b1-ac93-e95b625479b8" />


Author: Tripti Pandey
Internship: DevOps Engineering Project
Date: 11th November 2025
