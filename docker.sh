count=`sudo docker ps -a | wc -l`
if [ $count -gt 1 ]
then
        sudo docker rm -f $(sudo docker ps -a -q)
fi
count1=`sudo docker images | wc -l`
if [ $count1 -gt 1 ]
then
        sudo docker rmi -f $(sudo docker images -q)
fi
