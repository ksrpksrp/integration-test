language: generic

services:
  - docker

before_script:
  # Log in to Docker Hub
  - echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

script:
  # Build Docker image
  - docker build -t my-image .
  # Tag Docker image
  - docker tag my-image:latest $DOCKER_USERNAME/my-image:latest
  # Push Docker image to Docker Hub
  - docker push $DOCKER_USERNAME/my-image:latest
