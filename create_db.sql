WbVarDef -variable=pswd -contentFile=/pswd

CREATE DATABASE tiffchoumakeup;
GRANT ALL PRIVILEGES ON tiffchoumakeup.* TO root@localhost
IDENTIFIED BY $[pswd];
FLUSH PRIVILEGES;
EXIT
