#!/usr/bin/env groovy

pipeline {
    agent any     
    
    environment {
        REPOSITORY="https://github.com/KeithTt/microservice.git"
        MODULE="user-edge-service"
    }

    stages {

        stage('获取代码') {
            steps {
                echo "start fetch code from git:${REPOSITORY}"
                deleteDir()
                git "$REPOSITORY"
                SCRIPT_PATH="/root/scripts"
            }
        }

        stage('代码静态检查') {
            steps {
                echo "start code check"
            }
        }

        stage('编译+单元测试') {
            steps {
                echo "start compile"
                sh "mvn -U -pl $MODULE -am clean package"
            }
        }

        stage('构建上传镜像') {
            steps {
                echo "start build image"
                sh "${SCRIPT_PATH}/build_image.sh $MODULE"
            }
        }

        stage('发布到K8S') {
            steps {
                echo "start deploy"
                sh "${SCRIPT_PATH}/deploy.sh user-service-deployment $MODULE"
            }
        }
    }
}