CREATE USER
IF NOT EXISTS 'aula'@'%' IDENTIFIED BY 'aulavagrant';
GRANT ALL PRIVILEGES ON *.* TO 'aula'@'%' IDENTIFIED BY 'aulavagrant';