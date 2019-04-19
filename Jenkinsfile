node {
    stage('git'){
       git branch: 'master', url: 'https://github.com/SaidMX/mysample.git'
    }
    stage('Build') {
       echo 'compiling the program'
       bat label: '', script: '"C:\\Program Files (x86)\\Dev-Cpp\\MinGW64\\bin\\g++.exe" "HelloWorld.c" -o "Create Chocolatey package for C++ program\\HelloWorld\\tools\\HelloWorld"'
    }
    stage('Create Package'){
        bat label: '', script: '"Create Chocolatey package for C++ program\\HelloWorld\\" choco pack'
    }
}