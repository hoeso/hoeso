<?php
include("automat.inc");

if( isset($_E['wZu']) && isset($automat[$_E['wZu']]) )
  foreach( $automat[$_E['wZu']] as $include )
  {
    logModul($include);
    include($include);
  }
else
  logModul('Automat unbekannt oder nicht benannt');
?>
</BODY>
</HTML>
