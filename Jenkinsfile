#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('terraform-to-deploy-eks') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name my-cluster"
                        sh "kubectl apply -f complete-demo.yaml"
                        sh "kubectl apply -f ./manifests-monitoring"
                        sh "kubectl apply -f ./portfolio"
                        // sh "kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.1/deploy/static/provider/do/deploy.yaml"
                        // sh "kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.7.1/cert-manager.yaml"
                        // sh "kubectl apply -f ./Nginx-ingress"
                        // sh "kubectl apply -f prod_issuer.yaml"
                        // sh "kubectl apply -f ingress-resource.yaml"
                        // sh "Kubectl delete -f complete-demo.yaml"
                        // sh "kubectl apply -f --namespace portfolio complete-demo.yaml"
                    }
                }
            }
        }
    }
}