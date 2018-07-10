<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vendas</title> 
<style>
body {
    background: url("../img/Ancora_Logo.png");
    background-repeat: no-repeat;
    background-attachment: fixed;
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

ul.topnav li a.logo{color:white};

ul.topnav li a:hover:not(.active) {background-color: #111;}

ul.topnav li a.active {background-color: #4CAF50;}

ul.topnav li.right {float: right;}

@media screen and (max-width: 600px){
    ul.topnav li.right, 
    ul.topnav li {float: none;}
}

p{
	color:#ffdb00;
}
h1{
	color:#ffdb00;
}
div{
	
	color:#ffdb00;
}
</style>
<script>
window.onload = function(){
	document.getElementById("Estoque").onclick = function() {abrirVendas();};
	document.getElementById("Index").onclick = function() {abrirEstoque();};
	}
	function abrirVendas() {
		window.open("/");
	}
	function abrirEstoque(){
		window.open("/login");
	}
</script>

</head>
<body>
<ul class="topnav">
  <li><a class="logo"> Âncora Lanches</a></li>
  <li><a id="Index" class="active">Home</a></li>
  <li><a id="Estoque">Estoque</a></li>
</ul>
</br>
<h1>LANCHES</h1>
<div class="grid-container" > 	
	<label>X-EGG Bacon</label>
  <div><hl><img src="http://images.media-allrecipes.com/userphotos/960x960/3757723.jpg"  height="300" width="300"></hl></div>
  <input type="button" name="mais" id="mais" value="+" />
  <input type="button" name="menos" id="menos" value="-" />  
    </br>
    </br>
    ITEM<input type="text" name="format" value="0" id="format" size="2" /> x 13,50
    <br/>
    <br/>
    Total: <input type="text" name="total" id="total" value="" />
</div>

</body>
</html>