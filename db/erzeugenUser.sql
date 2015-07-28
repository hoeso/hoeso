use mysql;

# /////////////// Tabelle 'user' //////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','zettl', password('straum'));
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','kn', password(''));

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','kn','zettl','Y','Y','Y','Y','Y');
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','kn','kn','Y','N','N','N','Y');

FLUSH PRIVILEGES;
