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
   stage('CreateFile'){

       writeFile file: "C:\\JenkinsTemp\\HelloWorld\\HelloWorld.c", text: '''#include<stdio.h>

       /*
       This code will be executed through a Jenkins pipeline
       */
        
       int main(){
           printf("Hello World =D\\n");
           
           return 0;
       }'''
   }
   stage('Build') {
       echo 'compiling the program'
       bat label: '', script: '"C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\g++.exe" "C:\\JenkinsTemp\\HelloWorld\\HelloWorld.c" -o "C:\\JenkinsTemp\\HelloWorld\\HelloWorld"'
   }
   stage('Run') {
       echo 'executing the program'
       bat label: '', script: '"C:\\JenkinsTemp\\HelloWorld\\HelloWorld"'
   }
}