window.onload= new function() {
	

}
var conten=document.getElementById('contenido');


function asignarbotones(){
    var botonHome = document.getElementById('inicio');
    var botonNewProducto = document.getElementById('nuevo'); 
    //var botonP1 = document.getElementById('gestionar');
    var btnEmpleado = document.getElementById('empleado');
	/*var botonP2=document.getElementById('gestionar');
	var botonP3=document.getElementById('cambios');*/

    botonHome.onclick = funcionHome;
    botonNewProducto.onclick = funcionNewProducto;
    btnEmpleado.onclick = funcionEmpleado;
    /*botonP2.onclick=funcionbtn2;
    botonP3.onclick=funcionbtn3;
    botonP4.onclick=funcionbtn4;*/

}

function funcionHome(){
	var ajaxxm= new XMLHttpRequest();
	ajaxxm.onreadystatechange= function(){
		if(this.status == 200 && this.readyState== 4){
			conten.innerHTML= this.responseText;

		}
	}
	ajaxxm.open('GET','Index_Full.aspx',true);
    ajaxxm.send();
 
	
}
function funcionEmpleado() {
    var ajaxxm = new XMLHttpRequest();
    ajaxxm.onreadystatechange = function () {
        if (this.status == 200 && this.readyState == 4) {
            conten.innerHTML = this.responseText;

        }
    }
    ajaxxm.open('GET', 'paginas/Empleado/Empleado-Index.aspx', true);
    ajaxxm.send();
}
function funcionNewProducto() {
    var ajaxxm = new XMLHttpRequest();
    ajaxxm.onreadystatechange = function () {
        if (this.status == 200 && this.readyState == 4) {
            conten.innerHTML = this.responseText;

        }
    }
    ajaxxm.open('GET', 'paginas/Producto/form-producto.aspx', true);
    ajaxxm.send();

}
//function funcionbtn1(){
//	var ajaxxm= new XMLHttpRequest();
//	ajaxxm.onreadystatechange= function(){
//		if(this.status == 200 && this.readyState== 4){
//			conten.innerHTML= this.responseText;

//		}
//	}
//	ajaxxm.open('GET','paginas/gestionar.html',true);
//	ajaxxm.send();
	
//}



