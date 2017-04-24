all: p1.jar

run-p1-dev: p1.jar
	hadoop jar p1.jar TwitterDataMinerP1 input.txt output

p1.jar: TwitterDataMinerP1.java
	hadoop com.sun.tools.javac.Main TwitterDataMinerP1.java
	jar cf p1.jar TwitterDataMinerP1*.class

clean:
	rm *.jar *.class
