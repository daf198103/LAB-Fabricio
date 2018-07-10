function logar(){
	var usuario = document.getElementById("login").value
	var senha = document.getElementById("senha").value
	
	if(usuario == "" || senha == ""){
		alert("Usuário ou senha não pode ser em branco")
	}else if(usuario == "david" && senha == "123"){
		 window.open("Index.html")
	}else{
		alert("usuário ou senha incorretos")
	}
}



