docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs docker rm

docker images maven-as-* | grep "days ago" | awk '{print $3}' | xargs docker rmi -f
