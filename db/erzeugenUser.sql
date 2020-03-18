use mysql;

# /////////////// Tabelle 'user' //////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO user (Host, User) VALUES ('localhost','infar');
INSERT IGNORE  INTO user (Host, User) VALUES ('localhost','ruby');
UPDATE user SET authentication_string = PASSWORD('') WHERE 'infar'=user AND Host='localhost';
UPDATE user SET authentication_string = PASSWORD('wrzlprmft') WHERE 'ruby'=user AND Host='localhost';

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
# LOCK TABLES fuer mysqldump:
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','vpi','infar','Y','N','N','N','Y');
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','vpi','ruby','Y','Y','Y','Y','Y');

FLUSH PRIVILEGES;

