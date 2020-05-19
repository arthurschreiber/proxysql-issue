GRANT usage,replication client on *.* to monitor@'%' identified by 'monitor';
GRANT ALL PRIVILEGES on *.* to ro@'%' identified by 'ro';
GRANT ALL PRIVILEGES on *.* to rw@'%' identified by 'rw';
