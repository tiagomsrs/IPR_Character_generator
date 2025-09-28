# In order to build the application run ./script_build_random_generator.sh

# If you want to run inside docker run below:
clear && docker build -f docker/Dockerfile -t ipr-dev-ut-docker . && docker run -it --rm ipr-dev-ut-docker

# remove all unused images (careful: removes images not referenced by any container)
docker image prune -a -f

# remove unused build cache
docker builder prune -f