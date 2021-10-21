echo "clonning git code"
git clone https://github.com/mkyong/maven-examples.git

echo "going to project"
cd maven-examples/maven-unit-test 

echo "compile"
mvn compile

echo "test"
mvn -Dtest=$INTEG_TEST_GROUP test

echo "package"
mvn package

echo "install"
mvn install

echo "copying the file to volume dir"
cp -r /maven-examples/maven-unit-test/target /reports/$REPORTDIR 
