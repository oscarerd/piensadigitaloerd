function cambiarStyle1(){
  document.getElementById("idMensaje").style.fontSize = "45px";
}

function cambiarStyle2(){
  var arregloNumero = [5,2];
  resultado = arregloNumero[0] + arregloNumero[1];

  alert("Suma: " + resultado);
}

function sumarRestar(suma){
  var arregloNumero = [5,2];
  resultado = arregloNumero[0] + arregloNumero[1];

  alert("Suma: " + suma + ": Resultado: " + resultado);
  document.getElementById("idMensaje").style.fontSize = "45px";

}

function chocoloca(){
  var numero1 = 3;
  var numero2 = 4;

  var resultado = 5;
    resultado++;
    alert(resultado);
    resultado--;
  alert(resultado);
}

function suma(){
  var numero1 = 3;
  var numero2 = 4;

  var resultado = 5;
  resultado++;
  alert(resultado);
}

function resta(){
  var resultado = 5;
  resultado--;
  alert(resultado);
}

function c(){
  //var visible = true;
  //alert(!visible);  // Muestra "false" y no "true"

  var cantidad = 0;
  var resultado = !cantidad;  // resultado = true
   alert(resultado);
  cantidad = 2;
  resultado = !cantidad;  // resultado = false
   alert(resultado);
  var mensaje = "";
  resultado = !mensaje;  // resultado = true
  alert(resultado);
 }

 function operadorAND(){
   var valor1 = true;
   var valor2 = true;
   resultado = valor1 && valor2; // resultado = false
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
   valor1 = false;
   valor2 = true;
   resultado = valor1 && valor2; // resultado = true
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
   valor1 = false;
   valor2 = false;
   resultado = valor1 && valor2; // resultado = true
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
   valor1 = true;
   valor2 = false;
   resultado = valor1 && valor2; // resultado = true
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
 }

 function operadorOR(){
   var valor1 = true;
   var valor2 = true;
   resultado = valor1 || valor2; // resultado = false
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
   valor1 = false;
   valor2 = true;
   resultado = valor1 || valor2; // resultado = true
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
   valor1 = false;
   valor2 = false;
   resultado = valor1 || valor2; // resultado = true
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
   valor1 = true;
   valor2 = false;
   resultado = valor1 || valor2; // resultado = true
   alert("Si valor1: " + valor1 + " y valor2: " + valor2 + " entonces: " + resultado);
}

function operadoresMatematicos(suma1, suma2, resta, multiplicacion, division){
  var sumar = suma1 + suma2;
  var restar =sumar- resta;
  var multiplicar = sumar * multiplicacion;
  var dividir = sumar/division;
  var operacionModulo = sumar %division;
  alert("SUMA " + sumar + " Resta " + restar + " multiplicacion " + multiplicar + " dividir " + dividir + " muodulo " + operacionModulo);
}
