<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Feinstaubsensor der TBS1 in Bochum</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-10">
            <h1>
                <span class="label label-primary">Feinstaubsensor der TBS1 in Bochum</span>
            </h1>
            <h2>
                <span class="label label-info">Live-Daten des Sensors</span>
            </h2>
        </div>
        <div class="col-xs-2">
	        <img class="img-responsive" src="./img/logo.png" alt="Logo" />
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
        <div class="col-xs-6">

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Standort</h3>
                </div>
                <div class="panel panel-body">
                    <address>
                        <strong>Geokoordinaten</strong><br />
                        Breite: 51.4810 <br />
                        L&auml;nge: 7.2249
                    </address>
                    <a href="http://bochum.maps.luftdaten.info/#13/51.4810/7.2248">openData Feinstaub Map</a> <br />
            <img style="width: 100%;" src="./img/standort_wabe_pfeil.png" alt="Standort des Sensors in der Wabe" />  <br /><br />
            <img style="width: 100%;" class="abbildung" src="./img/standort_punkt.png" alt="Standort des Sensors als Punkt" /> 
                </div>
            </div>

        </div>
        <div class="col-xs-6">

            <div class="panel panel-default">
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
</body>

</html>

