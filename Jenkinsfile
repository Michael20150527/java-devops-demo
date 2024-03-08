pipeline {
    agent any
    environment {
        hello = "123456"
        world = "456789"
    }
    stages {
        stage('环境检查') {
            steps {
                sh 'printenv'
                echo "正在检查基本信息"
                sh 'pwd && ls -alh'
                sh 'java -version'
                sh 'git --version'
                sh 'docker version'
                sh "echo $hello"
                sh 'echo ${world}'
//                 sh "ssh --help"
            }
        }

        stage('编译') {
            agent {
                docker { image 'maven:3-alpine' }
            }
            steps {
                echo "编译..."
                sh 'pwd && ls -alh'
                sh 'mvn -v'
                sh 'mvn clean package -s "/var/jenkins_home/appconfig/maven/settings.xml"  -Dmaven.test.skip=true '
            }
        }

        stage('测试') {
            steps {
                echo "测试..."
            }
        }

        stage('生成镜像') {
            steps {
                echo "打包..."
                //检查Jenkins的docker命令是否能运行
                sh 'docker version'
                sh 'pwd && ls -alh'
            }
        }

        stage('部署') {
            steps {
                echo "部署..."
            }
        }
    }
}
