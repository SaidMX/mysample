node {
    stage('git'){
       git branch: 'master', url: 'https://github.com/SaidMX/mysample.git'
    }
    stage('MakeDir'){
       echo 'Checking if directory exist'
       if (fileExists ('C:\\JenkinsTemp')){
           echo 'deleting directory'
           bat label: '', script: 'rd /s /q C:\\JenkinsTemp'
       }
       echo 'creating directory'
       bat label: '', script: 'MKDIR "C:\\JenkinsTemp"'
    }
    stage('Build') {
       echo 'compiling the program'
       bat label: '', script: '"C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\g++.exe" "HelloWorld.c" -o "C:\\JenkinsTemp\\HelloWorld"'
    }
    stage('Run') {
       echo 'executing the program'
       bat label: '', script: '"C:\\JenkinsTemp\\HelloWorld"'
    }
}