update mysql.user set plugin='' where user='root';
FLUSH PRIVILEGES;
CREATE DATABASE sarscov2t;
