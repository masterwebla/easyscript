<?php 
	require("conexion.php");

	$sql_divisas = "SELECT * FROM divisas";
	$divisas = $conn->query($sql_divisas);

	$sql_divisas2 = "SELECT * FROM divisas";
	$divisas2 = $conn->query($sql_divisas2);

	$sql_divisas3 = "SELECT * FROM divisas";
	$divisas3 = $conn->query($sql_divisas3);

	$sql_codigos = "SELECT * FROM codigos";
	$codigos = $conn->query($sql_codigos);

	$sql_codigos2 = "SELECT * FROM codigos";
	$codigos2 = $conn->query($sql_codigos2);

	$sql_codigos3 = "SELECT * FROM codigos";
	$codigos3 = $conn->query($sql_codigos3);

?>

<!DOCTYPE html>
<html>
<head>
	<title>Calculadora Easy Script</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h1>Calculadora</h1>
	  <div>
	  	<input type="number" id="salario" placeholder="salario">
	  	<input type="number" id="dias" placeholder="días" onkeyup="calcularValordia()">
		<input type="text" id="valordia">
	  </div>
	  <table class="table">
	  	<thead>
	  		<tr>
	  			<th>Divisas</th>
	  			<th>Transacciones</th>
	  			<th>Cantidad transacciones</th>
	  			<th>Segundos Ahorrados</th>
	  			<th>Minutos Ahorrados</th>
	  			<th>Horas ahorradas</th>
	  			<th>Días del mes</th>
	  			<th>Días del año</th>
	  			<th>Total ahorro</th>
	  		</tr>
	  	</thead>
	  	<tbody>
	  		<tr>
	  			<td>
	  				<select id="divisas1" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($divisas as $divisa){ ?>
							<option value="<?php echo $divisa['valor']; ?>"><?php echo $divisa['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<select id="transaccion1" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($codigos as $codigo){ ?>
							<option value="<?php echo $codigo['segundos_ahorrados']; ?>"><?php echo $codigo['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<input type="number" id="cantidad1" class="form-control" onkeyup="calcular('1')">
	  			</td>
	  			<td>
	  				<span id="segs_ahorrados1"></span>
	  			</td>
	  			<td>
	  				<span id="mins_ahorrados1"></span>
	  			</td>
	  			<td>
	  				<span id="hors_ahorradas1"></span>
	  			</td>
	  			<td>
	  				<span id="dias_ahorrados1"></span>
	  			</td>
	  			<td>
	  				<span id="dias_anio1"></span>
	  			</td>
	  			<td>
	  				<span id="totalahorro_dia1"></span>
	  			</td>
	  		</tr>
	  		<tr>
	  			<td>
	  				<select id="divisas2" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($divisas2 as $divisa2){ ?>
							<option value="<?php echo $divisa2['valor']; ?>"><?php echo $divisa2['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<select id="transaccion2" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($codigos2 as $codigo2){ ?>
							<option value="<?php echo $codigo2['segundos_ahorrados']; ?>"><?php echo $codigo2['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<input type="number" id="cantidad2" class="form-control" onkeyup="calcular('2')">
	  			</td>
	  			<td>
	  				<span id="segs_ahorrados2"></span>
	  			</td>
	  			<td>
	  				<span id="mins_ahorrados2"></span>
	  			</td>
	  			<td>
	  				<span id="hors_ahorradas2"></span>
	  			</td>
	  			<td>
	  				<span id="dias_ahorrados2"></span>
	  			</td>
	  			<td>
	  				<span id="dias_anio2"></span>
	  			</td>
	  			<td>
	  				<span id="totalahorro_dia2"></span>
	  			</td>
	  		</tr>
	  		<tr>
	  			<td>
	  				<select id="divisas3" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($divisas3 as $divisa3){ ?>
							<option value="<?php echo $divisa3['valor']; ?>"><?php echo $divisa3['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<select id="transaccion3" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($codigos3 as $codigo3){ ?>
							<option value="<?php echo $codigo3['segundos_ahorrados']; ?>"><?php echo $codigo3['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<input type="number" id="cantidad3" class="form-control" onkeyup="calcular('3')">
	  			</td>
	  			<td>
	  				<span id="segs_ahorrados3"></span>
	  			</td>
	  			<td>
	  				<span id="mins_ahorrados3"></span>
	  			</td>
	  			<td>
	  				<span id="hors_ahorradas3"></span>
	  			</td>
	  			<td>
	  				<span id="dias_ahorrados3"></span>
	  			</td>
	  			<td>
	  				<span id="dias_anio3"></span>
	  			</td>
	  			<td>
	  				<span id="totalahorro_dia3"></span>
	  			</td>
	  		</tr>
	  	</tbody>
	  </table>
	</div>
	<script>
		function calcularValordia(){
			var salario = parseInt($('#salario').val());
			var dias = parseInt($('#dias').val());
			var valorxdia = salario/dias;
			$('#valordia').val(valorxdia);
		}

		function calcular(fila){
			var segundos_codigo = parseInt($("#transaccion"+fila).val());
			var cantidad = parseInt($("#cantidad"+fila).val());
			var segundos_ahorrados = segundos_codigo * cantidad;
			$("#segs_ahorrados"+fila).html(segundos_ahorrados);
			var minutos_ahorrados = segundos_ahorrados / 60;
			minutos_ahorrados = Math.round(minutos_ahorrados);
			$("#mins_ahorrados"+fila).html(minutos_ahorrados);
			var horas_ahorradas = minutos_ahorrados / 60;
			horas_ahorradas = Math.round(horas_ahorradas);
			$("#hors_ahorradas"+fila).html(horas_ahorradas);
			var dias_ahorrados = horas_ahorradas / 8;
			$("#dias_ahorrados"+fila).html(dias_ahorrados);
			var dias_anio = dias_ahorrados * 12;
			$("#dias_anio"+fila).html(dias_anio);
			var valorxdia = $('#valordia').val();
			var totalahorro_dia = valorxdia * dias_anio;
			$("#totalahorro_dia"+fila).html(totalahorro_dia);
		}
	</script>
</body>
</html>