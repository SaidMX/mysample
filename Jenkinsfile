node {
    stage('MakeDir'){
       echo 'Checking if directory exist'
       if (fileExists ('C:\\JenkinsTemp\\HelloWorld')){
           echo 'deleting directory'
           bat label: '', script: 'rd /s /q C:\\JenkinsTemp\\HelloWorld'
       }
       echo 'creating directory'
       bat label: '', script: 'MKDIR "C:\\JenkinsTemp\\HelloWorld"'
   }
   dir('C:\\JenkinsTemp\\HelloWorld') {
    // some block
   }
   stage('git'){
       git branch: 'master', url: 'https://github.com/SaidMX/mysample.git'
   }
   stage('Build') {
       echo 'compiling the program'
       bat label: '', script: '"g++.exe" "HelloWorld.c" -o "C:\\JenkinsTemp\\HelloWorld\\HelloWorld"'
   }
   stage('Run') {
       echo 'executing the program'
       bat label: '', script: '"C:\\JenkinsTemp\\HelloWorld\\HelloWorld"'
   }
}