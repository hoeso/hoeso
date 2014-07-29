use mysql;

# /////////////// Tabelle 'user' //////////////////////////////////
# ////////////////////////////////////////////////////////////////
<<<<<<< HEAD
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','imzad', password('prmft'));
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','sahara', password(''));

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','sahara','imzad','Y','Y','Y','Y','Y');
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','sahara','sahara','Y','N','N','N','Y');
=======
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','aide', password('prmft'));
INSERT IGNORE  INTO user (Host, User, Password) VALUES ('localhost','ass21', password(''));

# /////////////// Tabelle 'db' ////////////////////////////////////
# ////////////////////////////////////////////////////////////////
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Insert_Priv, Update_Priv, Delete_Priv, Lock_tables_priv) VALUES ('localhost','ass21','aide','Y','Y','Y','Y','Y');
INSERT IGNORE  INTO db (Host, Db, User, Select_Priv, Lock_tables_priv) VALUES ('localhost','ass21','ass21','Y','Y');
>>>>>>> 5d0b4875f810a08c89f752a922aca4a13cea6daa

FLUSH PRIVILEGES;
