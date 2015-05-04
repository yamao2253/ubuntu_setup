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

gcc
openssl-devel   → libssl-dev

gcc-c++         → build-essential
bzip2
libtool
zlib            → zlib1g
zlib-devel      → zlib1g-dev
httpd-devel     → apache2-dev
curl-devel      → libcurl4-openssl-dev
ncurses-devel   → libncurses5-dev
gdbm-devel      → libgdbm-dev
readline        → libreadline6
readline-devel  → libreadline6-dev
sqlite-devel    → libsqlite3-dev
libyaml-devel   → libyaml-dev
libffi-devel    → libffi-dev
bison


    $ mkdir myubuntu && cd myubuntu
    $ vagrant init ubuntu/trusty64
    $ vi Vagrantfile # IP編集
    $ vagrant up
    $ vagrant ssh
    $ sudo apt-get -y install git
    $ mkdir repos && cd repos
    $ git clone https://github.com/yamao2253/ubuntu_setup.git
    $ cd ubuntu_setup
    $ ./run.sh
    $ exec $SHELL -l

chsh -s /usr/bin/zsh vagrant

