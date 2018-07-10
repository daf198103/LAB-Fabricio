window.onload = function(){
	document.getElementById("Estoque").onclick = function() {abrirEstoque();};
	document.getElementById("Index").onclick = function() {abrirIndex();};
}
function abrirEstoque(){
	window.open("Estoque.jsp");
}
function abrirIndex() {
	window.open("Index.jsp");
}
