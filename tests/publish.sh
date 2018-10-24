VERSION="$1"

docker login -p $DOCKER_PASSWORD -u $DOCKER_USERNAME

# Normal image
docker tag hubroedu/meteor hubroedu/meteor:latest
docker tag hubroedu/meteor hubroedu/meteor:$VERSION

docker push hubroedu/meteor:latest
docker push hubroedu/meteor:$VERSION

# root image
docker tag hubroedu/meteor:root hubroedu/meteor:$VERSION-root

docker push hubroedu/meteor:root
docker push hubroedu/meteor:$VERSION-root
