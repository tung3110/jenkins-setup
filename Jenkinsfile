	pipeline {
		 agent any
		 environment { 
			  registry = "tungnh2022/jenkins-setup" 
			  registryCredential = 'dockerhub_id2' 
			  dockerImage = '' 
		 }
		 stages {
			 stage('Cloning Git') {
				 steps {
					 git branch: 'develop', url: 'https://github.com/tung3110/jenkins-setup.git'
				 }
			 }
			 stage('Building image') { 
			  steps { 
				  script { 
					  dockerImage = docker.build registry + ":latest" 
				  }
			  } 
			 }
			 stage('Deploy image') { 
				  steps { 
					  script { 
						  docker.withRegistry( '', registryCredential ) { 
							  dockerImage.push() 
						  }
					  } 
				  }
			 } 
			 
			 stage('Setting the variables values') {
				steps {
					 sh '''#!/bin/bash
							 bash apijenkins.sh
					 '''
				}
			 }
		 }
		 
	}