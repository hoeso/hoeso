use mysql;

# /////////////// Tabelle 'user' //////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','aide', password('prmft'));

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','ass21','aide','Y','Y','Y','Y','Y');

FLUSH PRIVILEGES;
