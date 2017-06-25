<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Luftsensordaten</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
</head>

<body>
<h1>
    <span class="label label-default">Luftsensordaten der TBS1</span>
</h1>

<div class="panel panel-success">
<div class="panel-heading">
    <h3 class="panel-title">Temperatur</h3>
</div>
<div class="panel panel-body">
{temperature} Grad Celsius
</div>
</div>

<div class="panel panel-info">
<div class="panel-heading">
    <h3 class="panel-title">Luftfeuchtigkeit</h3>
</div>
<div class="panel panel-body">
{humidity}
</div>
</div>

<div class="panel panel-warning">
<div class="panel-heading">
    <h3 class="panel-title">P1</h3>
</div>
<div class="panel panel-body">
{p1}
</div>
</div>

<div class="panel panel-warning">
<div class="panel-heading">
    <h3 class="panel-title">P2</h3>
</div>
<div class="panel panel-body">
{p2}
</div>
</div>

</body>

</html>
