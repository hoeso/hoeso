<?php
/************ ERICA MIT mn ***************************************************
 * 
 *****************************************************************************/
if( isset($_REQUEST["d"]) )
{
  $a_ = explode( "/", __file__ );
  $b_ = $a_[count($a_)-1];
}
if( isset($_E['entitaet']) )
  $zielTabelle = $_E['entitaet'];
if( isset($_E['Label']) )
  $strSubmitLabel = $_E['Label'];

if( isset($_E["pe"]) )
{
  $countRE = $_E["pe"];
  for( $i=1; $i <= $_E['pe'] and $i < 6; $i++ )
  {
    if( 1 == $i )
      $tableRE1 = $_E["pe$i"];
    else if( 2 == $i )
      $tableRE2 = $_E["pe$i"];
    else if( 3 == $i )
      $tableRE3 = $_E["pe$i"];
    else if( 4 == $i )
      $tableRE4 = $_E["pe$i"];
    else if( 5 == $i )
      $tableRE5 = $_E["pe$i"];
  }
}
if( isset($_E["1n"]) )
{
  $countEM = $_E["1n"];
  for( $i=1; $i <= $_E['1n'] and $i < 6; $i++ )
  {
    if( 1 == $i )
      $tableEM1 = $_E["1n$i"];
    else if( 2 == $i )
      $tableEM2 = $_E["1n$i"];
    else if( 3 == $i )
      $tableEM3 = $_E["1n$i"];
    else if( 4 == $i )
      $tableEM4 = $_E["1n$i"];
    else if( 5 == $i )
      $tableEM5 = $_E["1n$i"];
  }
}
if( isset($_E["nn"]) )
{
  $countMM = $_E["nn"];
  for( $i=1; $i <= $_E['nn'] and $i < 6; $i++ )
  {
    if( 1 == $i )
      $tableMM1 = $_E["nn$i"];
    else if( 2 == $i )
      $tableMM2 = $_E["nn$i"];
    else if( 3 == $i )
      $tableMM3 = $_E["nn$i"];
    else if( 4 == $i )
      $tableMM4 = $_E["nn$i"];
    else if( 5 == $i )
      $tableMM5 = $_E["nn$i"];
  }
}
if( isset($_E["sl"]) )
{
  $countSL = $_E["sl"];
  for( $i=1; $i <= $_E['sl'] and $i < 6; $i++ )
  {
    if( 1 == $i && isset($_E["sl$i"]) )
    {
      $tableSL1 = $_E["sl$i"];
      $SL1 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL1 .= $_E["stm$i-filter"];
      if( isset($_E["slct$i"]) )
        $SELECTSL1=$_E["slct$i"];
    }
    else if( 2 == $i && isset($_E["sl$i"]) )
    {
      $tableSL2 = $_E["sl$i"];
      $SL2 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL2 .= $_E["stm$i-filter"];
      if( isset($_E["slct$i"]) )
        $SELECTSL2=$_E["slct$i"];
    }
    else if( 3 == $i && isset($_E["sl$i"]) )
    {
      $tableSL3 = $_E["sl$i"];
      $SL3 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL3 .= $_E["stm$i-filter"];
      if( isset($_E["slct$i"]) )
        $SELECTSL3=$_E["slct$i"];
    }
    else if( 4 == $i && isset($_E["sl$i"]) )
    {
      $tableSL4 = $_E["sl$i"];
      $SL4 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL4 .= $_E["stm$i-filter"];
      if( isset($_E["slct$i"]) )
        $SELECTSL4=$_E["slct$i"];
    }
    else if( 5 == $i && isset($_E["sl$i"]) )
    {
      $tableSL5 = $_E["sl$i"];
      $SL5 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL5 .= $_E["stm$i-filter"];
      if( isset($_E["slct$i"]) )
        $SELECTSL5=$_E["slct$i"];
    }
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, "SL$i: " . $_E["stm$i"] );
  }
}
if( isset($_E["nsl"]) )
{
  $countMULTISL = $_E["nsl"];
  for( $i=1; $i <= $_E['nsl'] and $i < 6; $i++ )
  {
    if( 1 == $i && isset($_E["nsl$i"]) )
    {
      $tableSL1 = $_E["nsl$i"];
      $SL1 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL1 .= $_E["stm$i-filter"];
      if( isset($_E["nslct$i"]) )
        $SELECTSL1=$_E["nslct$i"];
    }
    else if( 2 == $i && isset($_E["nsl$i"]) )
    {
      $tableSL2 = $_E["nsl$i"];
      $SL2 = $_E["stm$i"];
      if( isset($_E["stm$i-filter"]) )
        $SL2 .= $_E["stm$i-filter"];
      if( isset($_E["nslct$i"]) )
        $SELECTSL2=$_E["nslct$i"];
    }
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, "SL$i: " . $_E["stm$i"] );
  }
}
if( isset($_E["klick1"]) )
  $goto = true;
if( isset($_E["AND"]) )
{
  $AND = $_E["AND"];
}
if( isset($_E["noDelete"]) )
  $fKeinDelete=true;
if( isset($_E["noUpdate"]) )
  $fKeinUpdate=true;
// planend
if( isset($_REQUEST["SELECTRE1"]) )
  $SELECTRE1=$_REQUEST["SELECTRE1"];
if( isset($_REQUEST["SELECTRE2"]) )
  $SELECTRE2=$_REQUEST["SELECTRE2"];
if( isset($_REQUEST["SELECTRE3"]) )
  $SELECTRE3=$_REQUEST["SELECTRE3"];
if( isset($_REQUEST["SELECTRE4"]) )
  $SELECTRE4=$_REQUEST["SELECTRE4"];
if( isset($_REQUEST["SELECTRE5"]) )
  $SELECTRE5=$_REQUEST["SELECTRE5"];
?>