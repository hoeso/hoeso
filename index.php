<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>HFS-1</title>
<script language=javascript type='text/javascript'>
  if( top.location != self.location )
  {
    top.location = self.location
  }
</script>
<!--link rel="stylesheet" href="./erica.css" media="screen" title="erica Stylesheet" /-->
</head>
<?php
if( 0 )
{   
  // fuer eine Inbetriebnahme bzw. Erstinstallation:
  // ist php ueberhaupt in Betrieb?
  $_E['wZu']="inBetriebnehmend";
  include("forkZu.inc");
  ?>
  <h4>Der PHP-Interpreter scheint nicht aufgerufen zu werden?</h4>
  <ol>
    <li>Ist das Paket <em>libapache2-mod-php5</em> installiert?
    <li>Ist PHP im mods-enabled/php5.conf freigegeben?
  </ol>
  <?php
}
$_E['bodyClass'] = "main";
$_E['bodyId'] = "main";
?>
<body class="<?php
echo $_E['bodyClass'];
?>" id="<?php
echo $_E['bodyId'];
?>">
<?php
if( isset($_REQUEST["navi"]) )
{
  switch( $_REQUEST["navi"] )
  {
    case 'Verknuepfen':
      $_REQUEST['mn'] = "pe_pe";
      $_REQUEST["a"] = "KursTrainer";
      $_A['css'] = "./erica.css";
      $_REQUEST["re"] = "2";
      $_REQUEST["re1"] = "Kursart";
      $_REQUEST["re2"] = "Trainer";
      $_REQUEST["i"] = "1";
    break;
  }
}
else
{
  $_REQUEST['mn'] = "check-DB";
}
$_E['container']=0; // <div>-Zaehler
include("mn.php"); 
?>
</body>
</html>
