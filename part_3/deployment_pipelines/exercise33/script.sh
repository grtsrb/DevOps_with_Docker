#!/bin/sh

github_repo=$1
dockerhub_repo=$2

git clone  http://github.com/$github_repo

repo_folder=$(ls -d */ | head -n 1)
repo_folder=${repo_folder%/} 

cd $repo_folder

docker build . -t $dockerhub_repo

docker push $dockerhub_repo

cd ..
rm -rf $repo_folder
