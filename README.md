# yamao2253/ubuntu_setup

## 内容
* Ubuntuのローカル開発環境構築スクリプト
* ドットインストールレッスンで使われていたもの (CentOS)をベースに作成した  
  ローカル開発環境の構築[MacOS X編] #05  
  https://github.com/dotinstallres/centos65.git
* run.shでansibleのインストールとapnsible-playbookの実行をする
* ansible-playbook(main.yml)では以下の内容を実行する
  - localtimeをAsia/Tokyoにする
  - apache2のインストール
  - ruby(rbenv)のインストール
  - Node.jsのインストール
* rbenvでインストールするバージョンは2.2.0
* rubyのrdocはインストールしない (CONFIGURE_OPTS="--disable-install-rdoc")
* Node.jsのコマンド名はnodeにする (update-alternativesを使って)

## セットアップ手順
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

## メモ
### php.ini.yamao2253
Changed parameters from php.ini-production

    error_log=/var/log/php.log
    mbstring.language = Japanese
    mbstring.internal_encoding = UTF-8
    mbstring.http_input = auto
    mbstring.detect_order = auto
    expose_php = Off
    date.timezone = Asia/Tokyo

$ sudo service httpd restart

### my.cnf.yamao2253
Changed/Appended parameters from /etc/mysql/my.cnf

    [mysqld] 
    character_set_server=utf8
    default-storage-engine=InnoDB
    innodb_file_per_table
    
    [mysql]
    default-character-set=utf8
    
    [mysqldump]
    default-character-set=utf8



chsh -s /usr/bin/zsh vagrant


## rbenv 2.0.0-p195/2.1. インストール
    $ find /usr -name libreadline.so
    $ CONFIGURE_OPTS=--with-readline-dir="/usr/lib/x86_64-linux-gnu/libreadline.so" rbenv install 2.0.0-p195

- [x] disable-install-rdoc
CONFIGURE_OPTS="--disable-install-rdoc --enable-shared" rbenv install 2.2.0
→ rdocで失敗している。rdocをディスエーブルするオプションつけたら、インストールできた
