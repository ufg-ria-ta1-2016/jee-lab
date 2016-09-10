<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Menor/Maior</title>
	<link href="bootstrap-darkly.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
<form class="form-horizontal">
	<fieldset>
		<!-- Form Name -->
		<legend>Menor / Maior</legend>
		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Idade</label>
			<div class="col-md-6">
				<input name="idade" type="text" placeholder="Coloque aqui a idade" class="form-control input-md">
				<span class="help-block">Idade do individuo</span>
			</div>
		</div>
		<!-- Button -->
		<div class="form-group">
			<label class="col-md-4 control-label"></label>
			<div class="col-md-4">
				<button class="btn btn-primary">Calcular</button>
			</div>
		</div>

	</fieldset>
</form>
<%
	//Scriptlet.
	String idadeStr = request.getParameter("idade");
//Se idadeStr for nula retorna "0" sen�o retorna a idade convertida.
	int idade = idadeStr == null ? 0 : Integer.parseInt(idadeStr);
	if (idade == 0) {
%><div class="alert alert-danger" role="alert">Informe a idade.</div><%
} else if (idade >= 18) {
%><div class="alert alert-success" role="alert"><%=idade%> e de uma pessoa MAIOR de idade.</div><%
} else {
%><div class="alert alert-success" role="alert"><%=idade%> e de uma pessoa MENOR de idade.</div><%
	}
%>
	</div>
</body>
</html>
