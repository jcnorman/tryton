#! /bin/bash
docker.io ps | grep tryton-postgres
if [ $? -gt 0 ]; then 
  docker.io run --name tryton-postgres -d postgres 
fi
docker.io ps | grep tryton-sshd
if [ $? -gt 0 ]; then
  docker.io run --name tryton-sshd -d dhrp/sshd
fi
docker.io ps | grep tryton-dev
if [ $? -gt 0 ]; then
  docker.io run --name tryton-dev --link tryton-sshd:sshd --link tryton-postgres:postgres -d jcnorman/tryton
fi

docker.io run -i -t jcnorman/tryton /bin/bash
