window.onload = function(){
document.getElementById("vendas").onclick = function() {abrirVendas();};
document.getElementById("Estoque").onclick = function() {abrirEstoque();};
}
function abrirVendas() {
	window.open("Vendas.jsp");
}
function abrirEstoque(){
	window.open("index.jsp");
}

