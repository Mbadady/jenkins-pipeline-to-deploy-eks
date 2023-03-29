# CICD-IAAC-kubernetes-project


# Project Instructions
## Everything needs to be deployed using Infrastructure as a code approach

1. Deploy a microservice based architecture on Elastic Kubernetes Service and create a clear Iaac deployment
1. Deploy a web app of your choosing with nginx/httpd frontend proxy and a database (mongo,postresgl etc) backend.
1. Provision the Socks Shop example microservice application https://github.com/microservices-demo/microservices-demo
1. Emphasize readability, maintainability and Devops methodologies.

# My solution summary
1. I built the environment needed for this project on Amazon Cloud using Terraform.

1. I created 3 nodes of t3.medium on EKS for the deployment to run smoothly

1. I used Jenkins as my CICD pipeline for this project.

1. I depoyed my portoflio app, sock-shock app with cart logging, and set up monitoring and alerting using prometheus and grafana with cloud watch as my logging tool.

1. I deployed my apps to the cluster provisoned using the Jenkins pipeline script.

## Below are url of the apps deployed
1. sockapp.mbadady.me
1. portfolio.mbadady.me
1. prometheus.mbadady.me
1. grafana.mbadady.me

