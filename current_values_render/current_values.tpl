<!DOCTYPE html>
<html lang="de">
  <head>
    <meta http-equiv="refresh" content="60" >
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feinstaubsensor der TBS1 in Bochum</title>
    <!-- jQuery -->
    <script src="./bootstrap/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <script src="./bootstrap/js/bootstrap.min.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-6">
          <h1>
            <span class="label label-primary">Feinstaubsensor der TBS1 in Bochum</span>
          </h1>
        </div>
        <div class="col-xs-6">
          <img style="margin-top: 20px; height: 50px;" class="pull-right" src="./img/logo.png" alt="Logo" />
        </div>
      </div>
      <ul class="nav nav-tabs">
        <li class="active">
          <a data-toggle="tab" href="#live">Live</a>
        </li>
        <li>
          <a data-toggle="tab" href="#archive">Archiv</a>
        </li>
      </ul>
      <div class="tab-content">
        <!-- begin of live data -->
        <div id="live" class="tab-pane fade in active">
          <div class="row">
            <div class="col-xs-12">
              <h2>
                <span class="label label-primary">Live-Daten des Sensors</span>
              </h2>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-6">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Feinstaub MP10</h3>
                </div>
                <div class="panel panel-body">
                  {p1} &micro;g/m&sup3;
                </div>
                (Maximal zulässiger Grenzwert im Jahresmittel: 40 &micro;g/m&sup3; )
                <!-- Grenzwerte gemäß http://www.umweltbundesamt.de/themen/luft/luftschadstoffe/feinstaub -->
              </div>
            </div>
            <div class="col-xs-6">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Feinstaub MP2.5</h3>
                </div>
                <div class="panel panel-body">
                  {p2} &micro;g/m&sup3;
                </div>
                (Maximal zulässiger Grenzwert im Jahresmittel: 25 &micro;g/m&sup3;)
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-6">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Temperatur</h3>
                </div>
                <div class="panel panel-body">
                  {temperature} &deg;C
                </div>
              </div>
            </div>
            <div class="col-xs-6">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Relative Luftfeuchtigkeit</h3>
                </div>
                <div class="panel panel-body">
                  {humidity} %
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Letzte Aktualisierung</h3>
                </div>
                <div class="panel panel-body">
                  {update}
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of live data -->
        <!-- begin of archive data --->
        <div id="archive" class="tab-pane fade">
          <div class="row">
            <div class="col-xs-12">
              <h2>
                <span class="label label-primary">Archiv-Daten und Diagramme</span>
              </h2>
            </div>
          </div>
          <!-- 4 diagrams -->
          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Gleitender 24h-Durchschnitt</h3>
                </div>
                <div class="panel panel-body">
                  <div class="row">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-1-floating.png" alt="Gleitender 24h-Durchschnitt des PM10-Wertes" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-25-floating.png" alt="Gleitender 24h-Durchschnitt des PM2.5-Wertes" /> 
                    </div>
                  </div>
                  <div class="row" style="margin-top: 10px;">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-1-floating.png" alt="Gleitender 24h-Durchschnitt der Temperatur" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-25-floating.png" alt="Gleitender 24h-Durchschnitt der relativen Luftfeuchtigkeit" /> 
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 4 diagrams -->
          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">&Uuml;ber einen Tag</h3>
                </div>
                <div class="panel panel-body">
                  <div class="row">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-1-day.png" alt="PM10-Wert &uuml;ber einen Tag" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-25-day.png" alt="PM2.5-Wert &uuml;ber einen Tag" /> 
                    </div>
                  </div>
                  <div class="row" style="margin-top: 10px;">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-1-day.png" alt="Temperatur &uuml;ber einen Tag" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-25-day.png" alt="Relative Luftfeuchtigkeit &uuml;ber einen Tag" /> 
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 4 diagrams -->
          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">&Uuml;ber eine Woche</h3>
                </div>
                <div class="panel panel-body">
                  <div class="row">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-1-week.png" alt="PM10-Wert &uuml;ber eine Woche" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-25-week.png" alt="PM2.5-Wert &uuml;ber eine Woche" /> 
                    </div>
                  </div>
                  <div class="row" style="margin-top: 10px;">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-1-week.png" alt="Temperatur &uuml;ber eine Woche" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-25-week.png" alt="Relative Luftfeuchtigkeit &uuml;ber eine Woche" /> 
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 4 diagrams -->
          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">&Uuml;ber einen Monat</h3>
                </div>
                <div class="panel panel-body">
                  <div class="row">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-1-month.png" alt="PM10-Wert &uuml;ber einen Monat" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-sds011-25-month.png" alt="PM2.5-Wert &uuml;ber einen Monat" /> 
                    </div>
                  </div>
                  <div class="row" style="margin-top: 10px;">
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-1-month.png" alt="Temperatur &uuml;ber einen Monat" />
                    </div>
                    <div class="col-xs-6">
                      <img style="width: 100%;" src="https://www.madavi.de/sensor/images/sensor-esp8266-3394227-dht-25-month.png" alt="Relative Luftfeuchtigkeit &uuml;ber einen Monat" /> 
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end of diagrams -->
          <div class="row">
            <div class="col-xs-12">
              <div class="panel panel-info">
                <div class="panel-heading">
                  <h3 class="panel-title">Archiv-Daten im CSV-Format</h3>
                </div>
                <div class="panel panel-body">
                  <a href="http://archive.luftdaten.info">archive.luftdaten.info</a> <br />
                  Feinstaub PM10 und PM2.5: /yyyy-mm-dd/yyyy-mm-dd_sds011_sensor_3659.csv <br />
                  Temperatur und Luftfeuchtigkeit: /yyyy-mm-dd/yyyy-mm-dd_dht22_sensor_3660.csv
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of archive data -->
        <!-- begin of standort -->
        <div class="row">
          <div class="col-xs-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">Standort</h3>
              </div>
              <div class="panel panel-body">
                <p>Der Feinstaubsensor befindet sich an der E-Bike-Garage der <a href="http://www.tbs1.de">Technischen Beruflichen Schule 1</a> an der Kreuzung Ostring/Moritz-Fiege-Stra&szlig;e in Bochum.</p>
                <address>
                  <strong>Geokoordinaten</strong><br />
                  Breite: 51.4810 <br />
                  L&auml;nge: 7.2249
                </address>
                <a href="http://bochum.maps.luftdaten.info/#13/51.4810/7.2248">openData Feinstaub Map</a> <br />
                <div class="row">
                  <div class="col-xs-6">
                    <img style="width: 100%;" src="./img/standort_wabe_pfeil.png" alt="Standort des Sensors in der Wabe" />
                  </div>
                  <div class="col-xs-6">
                    <img style="width: 100%;" class="abbildung" src="./img/standort_punkt.png" alt="Standort des Sensors als Punkt" /> 
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end of standort -->
      </div>
      <!-- end of tab content -->
    </div>
    <!-- end of container fluid -->
  </body>
</html>
