### Readme

Start services via `docker-compose`:

```sh
$ docker-compose up
```

Run reproduction script:

```sh
docker-compose run mysql mysql -hproxysql -P6033 -uroot -proot -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OFF
```
