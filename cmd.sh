docker run -it --rm --name my-maven-project -v "$PWD":/usr/src/app  -v "$HOME"/.m2:/root/.m2 -w /usr/src/app maven:3.2-jdk-8 mvn clean install


docker run -it --rm -v "$HOME"/.m2:/root/.m2 -v "$PWD":/usr/src/app maven:3.2-jdk-8 mvn clean install package -T 1C -o -Dmaven.test.skip=true