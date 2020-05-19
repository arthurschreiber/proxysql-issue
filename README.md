### Readme

Start services via `docker-compose`:

```sh
$ docker-compose up
```

Run reproduction script:

```sh
docker-compose run mysql mysql -hproxysql -P6033 -uro -pro -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OWN_GTID

docker-compose run mysql mysql -hproxysql -P6033 -uro -pro -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OWN_GTID

docker-compose run mysql mysql -hproxysql -P6033 -urw -prw -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OFF

docker-compose run mysql mysql -hproxysql -P6033 -urw -prw -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OWN_GTID

docker-compose run mysql mysql -hproxysql -P6033 -uro -pro -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OFF

docker-compose run mysql mysql -hproxysql -P6033 -uro -pro -e"SHOW SESSION VARIABLES LIKE 'session_track_gtids'"
# => session_track_gtids = OWN_GTID
```
