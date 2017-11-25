window.onload= new function() {
	
	asignarbotones();

}
var conten=document.getElementById('contenido');


function asignarbotones(){
	var botonHome=document.getElementById('nuevo');
	var botonP1=document.getElementById('gestionar');
	/*var botonP2=document.getElementById('gestionar');
	var botonP3=document.getElementById('cambios');*/

	botonHome.onclick=funcionHome;
	botonP1.onclick=funcionbtn1;
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
	ajaxxm.open('GET','paginas/modal.html',true);
	ajaxxm.send();
	
}
function funcionbtn1(){
	var ajaxxm= new XMLHttpRequest();
	ajaxxm.onreadystatechange= function(){
		if(this.status == 200 && this.readyState== 4){
			conten.innerHTML= this.responseText;

		}
	}
	ajaxxm.open('GET','paginas/gestionar.html',true);
	ajaxxm.send();
	
}



