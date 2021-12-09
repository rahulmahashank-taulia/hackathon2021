# hackathon2021
hackthon2021 - Smart DEV Onboarding

## Purpose:
The main intention behind this project is to reduce the onboarding time for developer’s sandbox setup by automating the setup process. Current(manual) process takes a couple of days to get the setup up and running. Sometimes due to misconfiguration we run into errors and that takes an additional day to fix. 

## Prerequisite:
Developers need to have an access to 
1. GitHub
2. Jfrog Artifactory
3. Access to execute the commands from terminal
#### One has to install the below things. Since, it requires a machine restart. 
1. zsh + oh my zsh - tampers with bash config; requires bash restart
2. xcode - brew requires xcode; xcode requires system restart
3. sdkman - tampers with bash config; requires bash restart 

## Capabilities/Features
The script can install the list of packages you have provided. By default it installs the below softwares
1. git
2. mysql@5.6
3. Java 8/11
4. redis
5. activemq
6. cassandra
