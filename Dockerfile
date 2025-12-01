FROM wodby/openjdk:17-alpine

#Expose le port de l'application Spring Boot
EXPOSE 8089

#Ajoute le livrable Spring Boot Dans l'image
ADD http://192.168.50.4:8081/repository/maven-releases/tn/m104/rh/school/1.1.0/school-1.1.0.jar .

#Commande d'exécution de l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/school-1.1.0.jar"]