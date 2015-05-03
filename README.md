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
