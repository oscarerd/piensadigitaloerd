var operacionessMatematicas= {
  num1: 0,
  num2: 0,

  actualizar: function(num)
  {
    this.num1 = num;
    document.getElementById("num1").value = this.num1;
    this.num2 = parseInt(document.getElementById("num2").value);

    var resultado = sumar1 + sumar2;
    return
  },
  sumar: function()
  {
    var sumar1 = 0;
    var sumar2 = 0;
    sumar1 = parseInt(document.getElementById("sumar1").value);
    sumar2 = parseInt(document.getElementById("sumar2").value);

    var resultado = sumar1 + sumar2;
    return

  },
}
