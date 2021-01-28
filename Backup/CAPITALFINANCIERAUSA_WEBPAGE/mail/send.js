function submitForm() {
    document.getElementById("mybtn").disabled = true;
    document.getElementById("status").innerHTML = 'Procesando...';

    var n = document.getElementById("n").value;
    var e = document.getElementById("e").value;
    var m = document.getElementById("m").value;
    var t = document.getElementById("t").value;
    var a = document.getElementById("a").value;

    var ajax = new XMLHttpRequest();

    ajax.open("GET", "mail/mail.aspx?n=" + n + "&e=" + e + "&m=" + m + "&t=" + t + "&a=" + a, false);

    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            if (ajax.responseText.includes("success")) {
                document.getElementById("mailrequest").innerHTML = 'Gracias ' + n + ', tu mensaje ha sido enviado.';
                document.getElementById("mailrequest").style.display = "block";
            } else {
                document.getElementById("status").innerHTML = ajax.responseText;
                document.getElementById("mybtn").disabled = false;
            }
        }
    }

    ajax.send();
}