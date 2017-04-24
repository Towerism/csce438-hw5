all: p1.jar p2.jar

run-p1: p1.jar
	hadoop jar $< TwitterDataMinerP1 input.txt output

run-p2: p2.jar
	hadoop jar $< TwitterDataMinerP2 input.txt output

p1.jar: TwitterDataMinerP1.java
	hadoop com.sun.tools.javac.Main $<
	jar cf $@ TwitterDataMinerP1*.class

p2.jar: TwitterDataMinerP2.java
	hadoop com.sun.tools.javac.Main $<
	jar cf $@ TwitterDataMinerP2*.class


clean:
	rm *.jar *.class
