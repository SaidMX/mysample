node {
   stage('git'){
       sh label: '', script: 'git pull'
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