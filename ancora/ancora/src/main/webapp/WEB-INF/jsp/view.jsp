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
</br>

<table>
  <tr>
    <th>ID</th>
    <td>${lists.id}</td>
  </tr>
  <tr>
      <th>Produto</th>
      <td>${lists.produto}</td>
    </tr>
    <tr>
        <th>Quantidade</th>
        <td>${lists.qtde}</td>
      </tr>
      <tr>
        <th>Lote</th>
        <td>${lists.lote}</td>
      </tr>
      <tr>
        <th>Validade</th>
        <td>${lists.vlde}</td>
      </tr>
  </table>
  <a href="/">Back</a>
</body>
</html>
