#!/bin/sh
rm -fr nitter.conf
cp -v ./nitter.example.conf ./nitter.conf
dep_ck () {
    for Dep; do
      if ! command -v "$Dep" 1>/dev/null; then
        printf "%s not found, Please install it.\n" "$Dep" >&2
        printf "For Debian based ditor systemctl enable --now %s\n" "$Dep" >&2
        exit 2
      fi
    done
    unset Dep
}
ditor_ck() {
  source /etc/os-release
  if [ "${ID}" = "manjaro" ] ; then
    dep_ck "redis"
  elif [ "${ID}" = "ubuntu" ] ; then
    dep_ck "redis-server"
  fi 
}
ditor_ck
sudo docker build -t nitter-r00t:latest .
sudo docker run -v $(pwd)/nitter.conf:/src/nitter.conf -d --name nitter-r00t --network host nitter-r00t:latest
sudo docker start nitter-r00t
