FROM openjdk:27-ea-jdk-slim
RUN mkdir /mydata
ADD target/myproj-1.0-SNAPSHOT.jar /mydata/myproj-1.0-SNAPSHOT.jar
CMD java -cp /mydata/myproj-1.0-SNAPSHOT.jar com.raman.App
