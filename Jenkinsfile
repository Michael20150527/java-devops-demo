pipeline {
    agent any
    environment {
        CC = 'clang'
    }
    stages {
        stage('环境检查') {
            steps {
                sh 'printenv'
                echo "正在检查基本信息"
                sh 'pwd && ls -alh'
                sh 'java -version'
                sh 'git --version'
//                 sh 'docker version'
//                 sh 'mvn -v'
            }
        }

        stage('编译') {
            steps {
                echo "编译..."
            }
        }

        stage('测试') {
            steps {
                echo "测试..."
            }
        }

        stage('打包') {
            steps {
                echo "打包..."
            }
        }

        stage('部署') {
            steps {
                echo "部署..."
            }
        }
    }
}
