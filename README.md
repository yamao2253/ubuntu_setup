# ubuntu_setup

## php.ini.custom
### Changed param from php.ini-production
* *error_log=/var/log/php.log
* *mbstring.language = Japanese
* *mbstring.internal_encoding = UTF-8
* *mbstring.http_input = auto
* *mbstring.detect_order = auto
* *expose_php = Off
* *date.timezone = Asia/Tokyo

$ sudo service httpd restart

## my.cnf.custom
### Changed param from /etc/mysql/my.cnf

* [mysqld] (Append)
- character_set_server=utf8
- default-storage-engine=InnoDB
- innodb_file_per_table

* [mysql]
- default-character-set=utf8

* [mysqldump]
- default-character-set=utf8
