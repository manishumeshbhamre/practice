
docker images maven-as-* | grep "minutes ago" | awk '{print $3}' | xargs docker rmi -f
