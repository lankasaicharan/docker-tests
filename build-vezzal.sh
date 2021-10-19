docker pull vezzal/vezzal:testing
docker run -id --name update-vezzal vezzal/vezzal:testing bash | exit
docker cp -a $GITHUB_WORKSPACE/test1.txt update-vezzal:/vezzal
docker commit update-vezzal vezzal/vezzal:testing
docker stop update-vezzal
docker push vezzal/vezzal:testing
