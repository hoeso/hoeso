use mysql;

# /////////////// Tabelle 'user' //////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','imzad', password('prmft'));
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','sahara', password(''));

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','sahara','imzad','Y','Y','Y','Y','Y');
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','sahara','sahara','Y','N','N','N','Y');

FLUSH PRIVILEGES;
