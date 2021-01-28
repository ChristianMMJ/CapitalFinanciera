function submitForm() {
    document.getElementById("mybtn").disabled = true;
    document.getElementById("status").innerHTML = 'Procesando...';

    var n = document.getElementById("n").value;//nombre
    var e = document.getElementById("e").value;//correo
    var m = document.getElementById("m").value;//mensaje
    var t = document.getElementById("t").value;//telefono
    var a = document.getElementById("a").value;//asunto

    var data = {
        strNombre: n,
        strCorreo: e,
        strAsunto: a,
        strTelefono: t,
        strMensaje: m
    };
    $.ajax({
        type: "POST",
        url: 'mail/mail.aspx/onEnviarCorreo',
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        data: JSON.stringify(data)
    }).done(function (data, x, jq) {
        console.log(data.d);
        if (data.d === '1') {
            document.getElementById("status").innerHTML = '';
            document.getElementById("mailrequest").innerHTML = 'Gracias ' + n + ', tu mensaje ha sido enviado.';
            document.getElementById("mailrequest").style.display = "block";
        } else {
            document.getElementById("status").innerHTML = 'Ha ocurrido un error, intente más tarde';
            document.getElementById("mybtn").disabled = false;
        }
    }).fail(function (x, y, z) {
        console.log(x, y, z);
    });

}
