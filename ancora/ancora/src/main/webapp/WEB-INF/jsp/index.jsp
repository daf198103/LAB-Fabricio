<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<script>
window.onload = function(){
	document.getElementById("vendas").onclick = function() {abrirVendas();};
	document.getElementById("Index").onclick = function() {abrirEstoque();};
	}
	function abrirVendas() {
		window.open("/vendas");
	}
	function abrirEstoque(){
		window.open("/");
	}
</script>
<head><title>Estoque</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
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
body {
    background: url("../img/Ancora_Logo.png");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:cover;
}

</style>
</head>
<body>
<ul class="topnav">
  <li><a class="logo"> Âncora Lanches</a></li>
  
  <li><a id="Index">Home</a></li>
  
  <li><a id="vendas">Vendas</a></li>
</ul>


<hr/>
<form method="post" action="/save">
<input type="hidden" name="id" value=""/>
  Produto:<br>
  <input type="text" name="produto"/>
  <br>
  Quantidade:<br>
  <input type="text" name="quantidade"/>
  <br>
  Lote:<br>
  <input type="text" name="lote"/>
  <br>
  Validade:<br>
  <input type="text" name="validade"/>
  <br><br>
  <input type="submit" value="CADASTRAR">
</form>
</br>
<table>
  <tr>
    <th>ID</th>
    <th>Produto</th>
    <th>Quantidade</th>
    <th>Lote</th>
    <th>Validade</th>
    <th>Action</th>
  </tr>
   <c:forEach var = "list" items = "${lists}">
  <tr>
    <td>${list.id}</td>
    <td>${list.produto}</td>
    <td>${list.qtde}</td>
    <td>${list.lote}</td>
    <td>${list.vlde}</td>
    <td>
        <a href="/view/${list.id}">View</a>
        <a href="/delete/${list.id}">Delete</a>
        <a href="/edit/${list.id}">Edit</a>
    </td>
  </tr>
  </c:forEach>
</table>

</body>
</html>