all: p1.jar

p1.jar: TwitterDataMinerP1.java
	hadoop com.sun.tools.javac.Main TwitterDataMinerP1.java
	jar cf p1.jar TwitterDataMinerP1*.class

clean:
	rm *.jar *.class
