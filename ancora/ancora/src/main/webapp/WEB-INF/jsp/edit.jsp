<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
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
body {
    background-image: url("img/Ancora_Logo.png");
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
</style>
</head>
<body>
<ul class="topnav">
  <li><a class="logo"> Âncora Lanches</a></li>
  
  <li><a id="Index">Home</a></li>
  
  <li><a id="Vendas">Vendas</a></li>
</ul>
<hr/>
<form method="post" action="/save">
  <input type="hidden" name="id" value="${lists.id}"/><br/>
  Produto:<br>
  <input type="text" name="produto" value="${lists.produto}"/>
  <br>
  Quantidade:<br>
  <input type="text" name="quantidade" value="${lists.qtde}"/>
  <br>
  Lote:<br>
  <input type="text" name="lote" value="${lists.lote}"/>
  <br>
  Validade:<br>
  <input type="text" name="validade" value="${lists.vlde}">
  <br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
