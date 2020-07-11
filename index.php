<?php 
	require("conexion.php");

	$sql_divisas = "SELECT * FROM divisas";
	$divisas = $conn->query($sql_divisas);

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
	  <div style="padding: 20px">
	  	<form class="form-inline">
		  	<select id="divisas1" class="form-control">
				<option value="">Seleccionar Divisa</option>
			<?php foreach($divisas as $divisa){ ?>
				<option value="<?php echo $divisa['valor']; ?>"><?php echo $divisa['nombre']; ?></option>
			<?php } ?>
			</select>
		  	<input type="number" id="salario" placeholder="Salario" class="form-control">
		  	<input type="number" id="dias" placeholder="Nro días" class="form-control" onkeyup="calcularValordia()">
			<input type="hidden" id="valordia">
			<input type="hidden" id="contador" value="3">
		</form>
	  </div>
	  <table class="table table-striped" id="miTabla">
	  	<thead>
	  		<tr>
	  			<th>Transacciones</th>
	  			<th>Cantidad transacciones</th>
	  			<th>Segundos Ahorrados</th>
	  			<th>Minutos Ahorrados</th>
	  			<th>Horas ahorradas</th>
	  			<th>Días del mes</th>
	  			<th>Días del año</th>
	  		</tr>
	  	</thead>
	  	<tbody>
	  		<tr id="1">
	  			<td>
	  				<select id="transaccion" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($codigos as $codigo){ ?>
							<option value="<?php echo $codigo['segundos_ahorrados']; ?>"><?php echo $codigo['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<input type="number" id="cantidad" class="form-control" onkeyup="calcular(this)">
	  			</td>
	  			<td>
	  				<span id="segs_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="mins_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="hors_ahorradas"></span>
	  			</td>
	  			<td>
	  				<span id="dias_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="dias_anio"></span>
	  				<input type="hidden" id="totalahorro_dia" value="0">
	  			</td>
	  		</tr>
	  		<tr id="2">
	  			<td>
	  				<select id="transaccion" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($codigos2 as $codigo2){ ?>
							<option value="<?php echo $codigo2['segundos_ahorrados']; ?>"><?php echo $codigo2['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<input type="number" id="cantidad" class="form-control" onkeyup="calcular(this)">
	  			</td>
	  			<td>
	  				<span id="segs_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="mins_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="hors_ahorradas"></span>
	  			</td>
	  			<td>
	  				<span id="dias_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="dias_anio"></span>
	  				<input type="hidden" id="totalahorro_dia" value="0">
	  			</td>
	  		</tr>
	  		<tr id="3">
	  			<td>
	  				<select id="transaccion" class="form-control">
	  					<option value="">Seleccionar</option>
						<?php foreach($codigos3 as $codigo3){ ?>
							<option value="<?php echo $codigo3['segundos_ahorrados']; ?>"><?php echo $codigo3['nombre']; ?></option>
						<?php } ?>
		  			</select>
	  			</td>
	  			<td>
	  				<input type="number" id="cantidad" class="form-control" onkeyup="calcular(this)">
	  			</td>
	  			<td>
	  				<span id="segs_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="mins_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="hors_ahorradas"></span>
	  			</td>
	  			<td>
	  				<span id="dias_ahorrados"></span>
	  			</td>
	  			<td>
	  				<span id="dias_anio"></span>
	  				<input type="hidden" id="totalahorro_dia" value="0">
	  			</td>
	  		</tr>
	  	</tbody>
	  </table>
	  <div class="row">
	  	<div class="col-md-6 text-left">
	  		<button class="btn btn-success" onclick="agregarFila()">Agregar fila</button>
	  	</div>
	  	<div class="col-md-6 text-right">
	  		Salario ahorrado: <span id="totalahorro"></span>
	  	</div>
	  </div>
	</div>
	<script>
		function calcularValordia(){
			var salario = parseInt($('#salario').val());
			var dias = parseInt($('#dias').val());
			var valorxdia = salario/dias;
			$('#valordia').val(valorxdia);
		}

		function calcular(id){
			var celda = id.parentNode;
			var fila = celda.parentNode;
			fila = parseInt(fila.id);
			console.log(fila);
			var segundos_codigo = parseInt($("#"+fila+" #transaccion").val());
			console.log(segundos_codigo);
			var cantidad = parseInt($("#"+fila+" #cantidad").val());
			var segundos_ahorrados = segundos_codigo * cantidad;
			$("#"+fila+" #segs_ahorrados").html(segundos_ahorrados);
			var minutos_ahorrados = segundos_ahorrados / 60;
			minutos_ahorrados = Math.round(minutos_ahorrados);
			$("#"+fila+" #mins_ahorrados").html(minutos_ahorrados);
			var horas_ahorradas = minutos_ahorrados / 60;
			horas_ahorradas = Math.round(horas_ahorradas);
			$("#"+fila+" #hors_ahorradas").html(horas_ahorradas);
			var dias_ahorrados = horas_ahorradas / 8;
			$("#"+fila+" #dias_ahorrados").html(dias_ahorrados);
			var dias_anio = dias_ahorrados * 12;
			$("#"+fila+" #dias_anio").html(dias_anio);
			var valorxdia = $('#valordia').val();
			var totalahorro_dia = valorxdia * dias_anio;
			$("#"+fila+" #totalahorro_dia").val(totalahorro_dia);

			totalAhorro()
		}

		function totalAhorro(){
			/*
			var totalahorro_dia1 = parseFloat($("#totalahorro_dia1").val());
			var totalahorro_dia2 = parseFloat($("#totalahorro_dia2").val());
			var totalahorro_dia3 = parseFloat($("#totalahorro_dia3").val());
			var totalahorro = totalahorro_dia1 + totalahorro_dia2 + totalahorro_dia3;
			*/
			var contador = parseInt($("#contador").val());
			var i = 1; var totalahorro = 0;
			for(i=1;i<=contador;i++){
				totalahorro = totalahorro + parseFloat($("#"+i+" #totalahorro_dia").val());
			}

			$("#totalahorro").html(totalahorro);

		}

		function agregarFila(){
			var newid = parseInt($("#contador").val()) + 1;
			$("#contador").val(newid);
			$("#3").clone().attr('id',newid).appendTo("#miTabla > tbody:last");
			$("#"+newid+" #transaccion").val("");
			$("#"+newid+" #cantidad").val("");
			$("#"+newid+" #segs_ahorrados").html("");
			$("#"+newid+" #mins_ahorrados").html("");
			$("#"+newid+" #hors_ahorradas").html("");
			$("#"+newid+" #dias_ahorrados").html("");
			$("#"+newid+" #dias_anio").html("");
			$("#"+newid+" #totalahorro_dia").val(0);
		}
	</script>
</body>
</html>