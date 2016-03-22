Starting on tag 1.1, you'll need a different container running MySQL
```
$ docker run --name mysql-dev -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.5
```

Then, start the container from the directory where your rails code is:
```
$ docker run -tiP --name rails-dev -v `pwd`:/app boris/rails-development:1.0 /bin/bash
```

After that, use the environment as usual.
