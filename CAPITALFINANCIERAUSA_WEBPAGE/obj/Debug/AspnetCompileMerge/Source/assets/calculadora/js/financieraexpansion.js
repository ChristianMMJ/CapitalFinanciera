$('#testimoniosCarousel').carousel({
    interval: 20000 //changes the speed
})

$('#principalCarousel').carousel({
    interval: 60000 //changes the speed
})

//Inicializar el slider del monto para prestamista
$("#monto").slider({
    tooltip: 'always',
    ticks_labels: ['<span id="etiqueta1">$5,000 USD</span>', '<span id="etiqueta2">$50,000 USD</span>', '<span id="etiqueta3">$90,000 USD</span>']
});

//Crear evento del sliderbar para el monto
$("#monto").on("change", function (slideEvt) {
    var calibrar = slideEvt.value.newValue % 5000;
    $("#monto").slider('setValue', slideEvt.value.newValue - calibrar, false, false);

    //Obtener el valor del prestamo y el tiempo
    var prestamo = slideEvt.value.newValue - calibrar;
    var tiempo = $("#tiempo").slider('getValue');

    //Calcular los intereses y asignar el total
    var interes = calcularInteres(prestamo, tiempo);
    var total = prestamo + interes;

    //Asignar los valores calculados a los contenedores
    $("#sPrestamo").text(formato_numero(prestamo, 0, '.', ','));
    $("#calculadora_monto").val(prestamo);
    $("#sInteres").text(formato_numero(interes, 0, '.', ','));
    $("#sTotal").text(formato_numero(total, 0, '.', ','));
});

//Inicializar slider de tiempo
$("#tiempo").slider({});

//Crear evento del sliderbar para e tiempo
$("#tiempo").on("change", function (slideEvt) {
    //Obtener el valor del prestamo y el tiempo
    var prestamo = $("#monto").slider('getValue');
    var tiempo = slideEvt.value.newValue;

    //Calcular los intereses y asignar el total
    var interes = calcularInteres(prestamo, tiempo);
    var total = prestamo + interes;

    //Asignar los valores calculados a los contenedores
    $("#sTiempo").text(tiempo);
    $("#sPrestamo").text(formato_numero(prestamo, 0, '.', ','));
    $("#sInteres").text(formato_numero(interes, 0, '.', ','));
    $("#sTotal").text(formato_numero(total, 0, '.', ','));
});

//Función que hace el calculo de los intereses
function calcularInteres(monto, tiempo) {
    //Declarar variables a utilizar
    var interes = 0;
    var porcentaje = 0;
    var prestamo = monto;

    //Asignar el valor del porcentaje de interes de acuerdo al monto
    if (monto >= 5000 && monto <= 9999) {
        porcentaje = 0.20;
    }
    else if (monto >= 10000 && monto <= 24999) {
        porcentaje = 0.25;
    }
    else if (monto >= 25000 && monto <= 49999) {
        porcentaje = 0.27;
    }
    else if (monto >= 50000 && monto <= 90001) {
        porcentaje = 0.30;
    
    }
    else {
        porcentaje = 0.30;
    }

    //Hacer el calculo del interes
    var interes_calculo = 0;
    for (i = 1; i <= 1; i++) {
        interes_calculo = prestamo * porcentaje;
        prestamo = prestamo + interes_calculo;
        interes = interes + interes_calculo;
    }

    return interes;
}

//Función que da formato a las cantidades
function formato_numero(numero, decimales, separador_decimal, separador_miles) { // v2007-08-06
    numero = parseFloat(numero);
    if (isNaN(numero)) {
        return "";
    }

    if (decimales !== undefined) {
        // Redondeamos
        numero = numero.toFixed(decimales);
    }

    // Convertimos el punto en separador_decimal
    numero = numero.toString().replace(".", separador_decimal !== undefined ? separador_decimal : ",");

    if (separador_miles) {
        // Añadimos los separadores de miles
        var miles = new RegExp("(-?[0-9]+)([0-9]{3})");
        while (miles.test(numero)) {
            numero = numero.replace(miles, "$1" + separador_miles + "$2");
        }
    }

    return '$' + numero;
}

//Asignar valor de menos para la calucladora en monto
function CalculadoraMenosMonto() {
    var calibrar = $("#monto").slider('getValue') % 500;
    $("#monto").slider('setValue', $("#monto").slider('getValue') - calibrar, false, false);

    var prestamo = $("#monto").slider('getValue');
    $("#monto").slider('setValue', prestamo - 500, false, true);
}

//Asignar valor de mas para la calucladora en monto
function CalculadoraMasMonto() {
    var calibrar = $("#monto").slider('getValue') % 500;
    $("#monto").slider('setValue', $("#monto").slider('getValue') - calibrar, false, false);

    var prestamo = $("#monto").slider('getValue');
    $("#monto").slider('setValue', prestamo + 500, false, true);
}

//Asignar valor de menos para la calucladora en tiempo
function CalculadoraMenosTiempo() {
    var tiempo = $("#tiempo").slider('getValue');
    $("#tiempo").slider('setValue', tiempo - 1, false, true);
}

//Asignar valor de mas para la calucladora en tiempo
function CalculadoraMasTiempo() {
    var tiempo = $("#tiempo").slider('getValue');
    $("#tiempo").slider('setValue', tiempo + 1, false, true);
}

//Evento de cambio para el Input Number
function CalcuadoraMonto() {
    var x = document.getElementById("calculadora_monto").value;
    var prestamo = parseInt(x);

    if (prestamo < 1000 || prestamo > 50000) {
        alert('El monto no es permitido');
    }
    else {

        var tiempo = $("#tiempo").slider('getValue');

        //Asignar en el sliderbar
        $("#monto").slider('setValue', prestamo, false, false);

        //Calcular los intereses y asignar el total
        var interes = calcularInteres(prestamo, tiempo);
        var total = prestamo + interes;

        //Asignar los valores calculados a los contenedores
        $("#sTiempo").text(tiempo);
        $("#sPrestamo").text(formato_numero(prestamo, 0, '.', ','));
        $("#sInteres").text(formato_numero(interes, 0, '.', ','));
        $("#sTotal").text(formato_numero(total, 0, '.', ','));
    }
}