docker build -t hubroedu/meteor ./image
docker build -t hubroedu/meteor:root ./root-image

semantic-release --debug
