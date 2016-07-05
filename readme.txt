docker run -it --volumes-from=data --name mongo -p 27019:27019 jaymongo /run.sh mongod --port 27019 --dbpath /data



mongo --port 27019 admin --eval "db.createUser({user: 'admin', pwd: 'admin', roles:[{role:'root',db:'admin'}]});"
mongo --port 27019 rjy --eval "db.createUser({user: 'rjy', pwd: 'rjy', roles:[{role:'dbOwner',db:'rjy'}]});"
docker commit xxxx jaymongopwd

docker run -it --volumes-from=data --name mongo -p 27019:27019 jaymongopwd /run.sh mongod --port 27019 --dbpath /data --auth