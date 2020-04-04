<?php
require_once("Db.php");
require_once("KW.php");
class KWmodel extends KW
{
  static protected $db; // db->db : DB-Handle
  protected $tag;
  private   $go;   // fruehester Betreuungsbeginn
  private   $stop; // spaetestes Betreuungsende
  private   $filter;

  function __construct($strDate, $filter="")
  {
    if( isset($_REQUEST["d"]) )
    {
      $a_ = explode( "/", __file__ );
      $b_ = $a_[count($a_)-1];
    }
    $this->filter = $filter;
    $this->db = Db::getInstance();
    // Start-Quart am Morgen:
    $this->go = DB::gibFeld( "SELECT IF(4 < MIN(v.ID), MIN(v.ID)-4, 1) FROM VS v JOIN KlientVS cv ON (v.ID=cv.VSID) JOIN MAKlientVS mcv ON (cv.ID=mcv.KlientVSID)", 0 );
    $this->go = DB::gibFeld( "SELECT IF(4 < MIN(v.ID), MIN(v.ID)-4, 1) FROM VS v JOIN Termin te ON (v.ID=te.VSID)", 0 );
    // Ende-Quart am Abend:
    $this->stop = DB::gibFeld( "SELECT IF(v.ID + cv.Menge > 96, 96, v.ID + cv.Menge) FROM VS v JOIN KlientVS cv ON (v.ID=cv.VSID) JOIN MAKlientVS mcv ON (cv.ID=mcv.KlientVSID) ORDER BY v.ID DESC LIMIT 1", 0 );
    $this->stop = DB::gibFeld( "SELECT IF(v.ID + te.Dauer > 96, 96, v.ID + te.Dauer) FROM VS v JOIN Termin te ON (v.ID=te.VSID) ORDER BY v.ID DESC LIMIT 1", 0 );
    if( !$this->stop )
    {
      $this->go   = 31;
      $this->stop = 33;
    }
    parent::__construct($strDate);
    //var_dump($this->tag); echo "\n<br>";
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, "go: " . $this->go . " -- stop: " . $this->stop );
  }
  function __get($var)
  {
    switch($var)
    {
      case 'Datum':
        return parent::__get('Datum');
      case 'DatumEU':
        return parent::__get('DatumEU');
      case 'Go':
        return $this->go;
      case 'Jahr':
        return parent::__get('Jahr');
      case 'Kalenderwoche':
        return parent::__get('Kalenderwoche');
      case 'KWweiter':
        return parent::__get('KWweiter');
      case 'KWzurueck':
        return parent::__get('KWzurueck');
      case 'Stop':
        return $this->stop;
      case 'Montag':
        return parent::__get('Montag');
      case 'WochentagNumerisch':
        return parent::__get('WochentagNumerisch');
      default:
        throw new Exception("KWmodel hat keine Eigenschaft $var.", 1 );
      break;
    }
  }
  function gibTermine( &$a, &$dim, $what, $concat, $dayofweek, $row )
  {
    if( isset($_REQUEST["d"]) )
    {
      $a_ = explode( "/", __file__ );
      $b_ = $a_[count($a_)-1];
    }
    $a[0]=0;// hier Feld 0 rein = Dauer
    $a[1]=1;// hier Feld 1 rein = Initialen
    $a[2]=2;// hier Feld 2 rein = Name, Vorname
    $a[3]=3;// hier Feld 3 rein = Trainer.ID
    $a[4]=4;// hier Feld 4 rein = Termin.ID
    $a[5]=5;// hier Feld 5 rein = Ort.Kuerzel
    $a[6]=6;// hier Feld 6 rein = Ort.ID
    $dim=count($a);
    if( 1/*'ort' == $what*/ )
    {
      /*###*/
      //$sql = "SELECT te.Dauer, " . $concat . " AS sc, CONCAT(LEFT(tr.Name,1),LEFT(tr.Vorname,1)), tr.ID, te.ID, CONCAT(o.Kursort,'-',o.Ortschaft), o.ID FROM Termin te JOIN Trainer tr ON te.TrainerID=tr.ID JOIN Ort o ON te.OrtID=o.ID JOIN Jahr j ON (te. JahrID =j.ID) JOIN KW k ON (te. KWID =k.ID) JOIN Tag t ON (te. TagID =t.ID) JOIN VS v ON (te. VSID =v.ID) WHERE $this->Jahr=j.ID AND $this->Kalenderwoche=k.ID AND '$dayofweek'=t.SC AND $row=v.ID $this->filter ORDER BY sc";
      /*** 29.3.20: Nur noch Trainer-Initialen und Ort-Kuerzel ***/
      $sql = "SELECT te.Dauer, " . $concat . " AS sc, CONCAT(LEFT(tr.Vorname,1),LEFT(tr.Name,1)), tr.ID, te.ID, te.Kuerzel, o.ID FROM Termin te JOIN Trainer tr ON te.TrainerID=tr.ID JOIN Ort o ON te.OrtID=o.ID JOIN Jahr j ON (te. JahrID =j.ID) JOIN KW k ON (te. KWID =k.ID) JOIN Tag t ON (te. TagID =t.ID) JOIN VS v ON (te. VSID =v.ID) WHERE $this->Jahr=j.ID AND $this->Kalenderwoche=k.ID AND '$dayofweek'=t.SC AND $row=v.ID $this->filter ORDER BY sc";
    }
    else
    {
      $sql = "SELECT te.Dauer, CONCAT(LEFT(tr.Name,1),LEFT(tr.Vorname,1)), CONCAT(tr.Name,' ',tr.Vorname), tr.ID, te.ID, CONCAT(LEFT(tr.Name,1),LEFT(tr.Vorname,1)), o.ID FROM Termin te JOIN Trainer tr ON te.TrainerID=tr.ID JOIN Ort o ON te.OrtID=o.ID JOIN Jahr j ON (te. JahrID =j.ID) JOIN KW k ON (te. KWID =k.ID) JOIN Tag t ON (te. TagID =t.ID) JOIN VS v ON (te. VSID =v.ID) WHERE $this->Jahr=j.ID AND $this->Kalenderwoche=k.ID AND '$dayofweek'=t.SC AND $row=v.ID $this->filter ORDER BY sc";
      /*###*/
    }
    //echo $sql . "<br>";
    DB::gibFelderArray( $sql, $a );
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, $sql );
  }
  /***
   *** fMA : filter MA
   ***/
  function gibKlient( &$a, &$dim, $j, $kw, $t, $fMA = "" )
  {
    if( isset($_REQUEST["d"]) )
    {
      $a_ = explode( "/", __file__ );
      $b_ = $a_[count($a_)-1];
    }
    $a[0]=0;// hier Feld 0 rein = c.Name, c.Vorname
    $a[1]=1;// hier Feld 1 rein = c.ID
    $dim=count($a);
    $sql = "SELECT DISTINCT CONCAT(c.Name,',',c.Vorname) AS Klient, c.ID FROM MAKlientVS mcv JOIN KlientVS cv ON (mcv. KlientVSID =cv.ID) JOIN MAKlient mc ON (mcv. MAKlientID =mc.ID) JOIN MA m ON (mc.MAID=m.ID) JOIN Klient c ON (cv. KlientID =c.ID) JOIN Jahr j ON (cv. JahrID =j.ID) JOIN KW k ON (cv. KWID =k.ID) JOIN Tag t ON (cv. TagID =t.ID) JOIN VS v ON (cv. VSID =v.ID) WHERE $j=j.ID $fMA AND $kw=k.ID AND $t=t.ID $this->filter ORDER BY v.ID";
    DB::gibFelderArray( $sql, $a );
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, $sql );
  }
  function gibTerminMA( &$a, &$dim, $j, $kw, $t, $cID, $tagesZeit )
  {
    if( isset($_REQUEST["d"]) )
    {
      $a_ = explode( "/", __file__ );
      $b_ = $a_[count($a_)-1];
    }
    if( 'morgens' == $tagesZeit )
      $spot = "AND v.ID < 49";
    else if( 'mittags' == $tagesZeit )
      $spot = "AND v.ID > 48 AND v.ID < 61";
    else if( 'nachmittags' == $tagesZeit )
      $spot = "AND v.ID > 60 AND v.ID < 73";
    else if( 'abends' == $tagesZeit )
      $spot = "AND v.ID > 72 AND v.ID < 97";
    $a[0]=0;// hier Feld 0 rein = m.Name, m.Vorname
    $a[1]=1;// hier Feld 1 rein = v.Quart (Start)
    $a[2]=2;// hier Feld 2 rein = v.Menge (Ende)
    $a[3]=3;// hier Feld 3 rein = m.ID // pruefen, ob Schicht des anzumailenden MA
    $dim=count($a);
    $sql = "SELECT DISTINCT CONCAT(m.Name,',',m.Vorname), TIME_FORMAT(v.Quart,'%H:%i'), TIME_FORMAT(ADDTIME(v.Quart, TIME_FORMAT(SEC_TO_TIME(TIME_TO_SEC('00:15')*cv.Menge), '%H:%i')),'%H:%i'), m.ID FROM MAKlientVS mcv JOIN KlientVS cv ON (mcv. KlientVSID =cv.ID) JOIN MAKlient mc ON (mcv. MAKlientID =mc.ID) JOIN MA m ON (mc.MAID=m.ID) JOIN Klient c ON (cv. KlientID =c.ID) JOIN Jahr j ON (cv. JahrID =j.ID) JOIN KW k ON (cv. KWID =k.ID) JOIN Tag t ON (cv. TagID =t.ID) JOIN VS v ON (cv. VSID =v.ID) WHERE $j=j.ID AND $kw=k.ID AND $t=t.ID AND $cID=c.ID $spot ORDER BY v.ID";
    DB::gibFelderArray( $sql, $a );
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, $sql );
  }
  function gibKlients( &$a, &$dim )
  {
    if( isset($_REQUEST["d"]) )
    {
      $a_ = explode( "/", __file__ );
      $b_ = $a_[count($a_)-1];
    }
    $a[0]=0;// hier Feld 0 rein = c.ID
    $a[1]=1;// hier Feld 1 rein = c.Name, c.Vorname
    $dim=count($a);
    $sql = "SELECT DISTINCT c.ID, CONCAT (c.Name,' ',c.Vorname,', ',YEAR(NOW())-YEAR(c.geborenAm)) FROM MAKlientVS mcv JOIN MAKlient mc ON (mcv. MAKlientID=mc.ID) JOIN Klient c ON (mc.KlientID=c.ID) ORDER BY Name, Vorname";
    DB::gibFelderArray( $sql, $a );
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, $sql );
  }
  function gibMAs( &$a, &$dim )
  {
    if( isset($_REQUEST["d"]) )
    {
      $a_ = explode( "/", __file__ );
      $b_ = $a_[count($a_)-1];
    }
    $a[0]=0;// hier Feld 0 rein = m.ID
    $a[1]=1;// hier Feld 1 rein = m.Name, m.Vorname
    $dim=count($a);
    $sql = "SELECT DISTINCT m.ID, CONCAT (m.Name,' ',m.Vorname) FROM MAKlientVS mcv JOIN MAKlient mc ON (mcv. MAKlientID=mc.ID) JOIN MA m ON (mc.MAID=m.ID) ORDER BY Name, Vorname";
    DB::gibFelderArray( $sql, $a );
    if( isset($_REQUEST["d"]) )
      dEcho( $b_, $sql );
  }
  function gibKontingent( $maID, $datum )
  {
    $sql = "SELECT k. Wochenstunden FROM Kontingent k JOIN Zeitstempel z ON (z.ID=k. ZeitstempelID) WHERE z.Datum <= '" . $datum . "' AND $maID=k.MAID ORDER BY z.Datum DESC LIMIT 1";
    return DB::gibFeld( $sql, 0 );
  }
  function gibKontingentKW( $maID, $jahrID, $kwID )
  {
    $sql = "SELECT SUM(cv.Menge)/4 FROM KlientVS cv JOIN MAKlientVS mcv ON (cv.ID=mcv. KlientVSID) JOIN MAKlient mc ON (mcv. MAKlientID =mc.ID) WHERE $jahrID=cv. JahrID AND $kwID=cv. KWID AND $maID=mc.MAID";
    return DB::gibFeld( $sql, 0 );
  }
}
