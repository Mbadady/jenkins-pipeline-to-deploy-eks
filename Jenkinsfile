#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_DEFAULT_REGION = "us-east-1"
    }
    stages {
        stage("Create Jenkins server") {
            steps {
                script {
                    dir('terraform-to-create-jenkins-server-new') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
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
                        sh "kubectl apply --validate=false -f ./helm-chart "
                        sh "kubectl apply --validate=false -f ./manifests-monitoring"
                        // sh "kubectl apply -f --namespace portfolio complete-demo.yaml"
                    }
                }
            }
        }
    }
}