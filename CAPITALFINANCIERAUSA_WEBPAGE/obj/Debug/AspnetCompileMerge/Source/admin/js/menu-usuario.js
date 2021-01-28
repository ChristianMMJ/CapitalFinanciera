var timer = 50;

//Funcion que realiza el fade in y el fade out
$(document).ready(function () {

    //Abrir tablero de Inversiones
    $("#inversiones").click(function (event) {
        $("#contenedor").fadeOut(timer, function () {
            parent.App.imgbtnRegresar.show();
            parent.App.pCentro.getLoader().load('Inversiones.aspx');
        });
    });

    $("#estatus").click(function (event) {
        $("#contenedor").fadeOut(timer, function () {
            parent.App.imgbtnRegresar.show();
            parent.App.pCentro.getLoader().load('Estatus.aspx');
        });
    });

    $("#usuarios").click(function (event) {
        $("#contenedor").fadeOut(timer, function () {
            parent.App.imgbtnRegresar.show();
            parent.App.pCentro.getLoader().load('Usuarios.aspx');
        });
    });

    $("#proyectos").click(function (event) {
        $("#contenedor").fadeOut(timer, function () {
            parent.App.imgbtnRegresar.show();
            parent.App.pCentro.getLoader().load('Proyectos.aspx');
        });
    });
});