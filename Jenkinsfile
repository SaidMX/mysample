node {
   stage('MakeDir'){
       echo 'Checking if directory exist'
       if (fileExists ('C:\\Tools\\JenkinsTemp\\HolaMundo')){
           echo 'deleting directory'
           bat label: '', script: 'rd /s /q C:\\Tools\\JenkinsTemp\\HolaMundo'
       }
       echo 'creating directory'
       bat label: '', script: 'MKDIR "C:\\Tools\\JenkinsTemp\\HolaMundo"'
   }
   stage('Build') {
       echo 'compiling the program'
       bat label: '', script: '"C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\g++.exe" "C:\\Users\\Admin\\Documents\\HolaMundo\\HelloWorld.c" -o "C:\\Tools\\JenkinsTemp\\HolaMundo\\HellowWorld"'
   }
   stage('Run') {
       echo 'executing the program'
       bat label: '', script: '"C:\\Tools\\JenkinsTemp\\HolaMundo\\HellowWorld"'
   }
}