docker build -t tiktok_tuts .
docker run\
  -p 8006:80 -p 33060:3306\
  -v ${PWD}/app:/app\
  -v ${PWD}/mysql:/var/lib/mysql\
  tiktok_tuts