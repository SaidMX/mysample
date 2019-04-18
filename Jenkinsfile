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
       git credentialsId: 'c7f47ff2-4f5c-4996-a7bc-72fe60c2e293', url: 'git@github.com:SaidMX/mysample.git'
   }
   stage('Build') {
       echo 'compiling the program'
       bat label: '', script: '"./g++.exe" "./HelloWorld.c" -o "./HelloWorld"'
   }
   stage('Run') {
       echo 'executing the program'
       bat label: '', script: '"./HelloWorld"'
   }
}