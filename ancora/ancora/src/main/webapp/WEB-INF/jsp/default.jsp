<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Âncora Lanches</title>
<script >
window.onload = function(){
	document.getElementById("vendas").onclick = function() {abrirVendas();};
	document.getElementById("Estoque").onclick = function() {abrirEstoque();};
	}
	function abrirVendas() {
		window.open("/vendas");
	}
	function abrirEstoque(){
		window.open("/");
	}

</script>
<style>
body {
    background: url("../img/Ancora_Logo.png");
    background-repeat:no-repeat;
    background-attachment:fixed;
    background-size:cover;
}
ul.topnav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

</style>
</head>
<body>
<ul class="topnav">
  <li><a class="logo"> Âncora Lanches</a></li>
  
  <li><a class="active">Home</a></li>
  
  <li><a id="Estoque">Estoque</a></li>
  
  <li><a id="vendas">Vendas</a></li>
</ul>
</body>
</html>