use mysql;

# /////////////// Tabelle 'user' //////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','phyll', password('prmft'));
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','pv', password(''));

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','kn','aide','Y','Y','Y','Y','Y');
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','kn','phyll','Y','Y','Y','Y','Y');

FLUSH PRIVILEGES;
