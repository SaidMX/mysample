node {
   stage('git'){
       sh label: '', script: 'git clone git@github.com:SaidMX/mysample.git'
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