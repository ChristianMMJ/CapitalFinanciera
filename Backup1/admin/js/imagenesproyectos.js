//Evento que se lanza al cambiar un valor en ComboBox de Proyecto
var cmbProyecto_Change = function (combobox, valorNuevo, valorAnterior) {
    registro = combobox.getStore().findRecord('ID', valorNuevo)

    if (valorNuevo == null) {
        App.txtfNombreProyecto.setValue('');
        return
    }
    else if (registro != null) {
        App.txtfNombreProyecto.setValue(registro.get('Nombre'));
    }
};

//Evento que se lanza al seleccionar un elemento del ComboBox de Proyecto
var cmbProyecto_Select = function (combobox, registro) {
    //App.txtfNombreCompleto.setValue(registro[0].data.Nombre + ' ' + registro[0].data.APaterno + ' ' + registro[0].data.AMaterno);
};

//Evento que ocurre al dar clic en imgbtnGuardar
var imgbtnGuardar_Click_Success = function () {
    window.parent.App.wSubModulo.hide();
    window.parent.App.wEmergente.getBody().App.gpAdministracionAvance.getStore().reload();
};

//Evento lanzado al cargar el store de ImagenAvanceProyecto
var sImagenAvanceProyecto_Load = function () {
    App.direct.sImagenAvanceProyecto_Load();
};

//Evento lanzado al agregar un registro al store de ImagenAvanceProyecto
var sImagenAvanceProyecto_Add = function (imagenavanceproyecto, registro) {
    App.txtfID.setDisabled(true);
    App.txtfID.setValue(registro[0].get('ID'));
    App.cmbProyecto.setValue(registro[0].get('Proyecto'));
    App.cmbAvance.setValue(registro[0].get('Avance'));
    App.cmbAvance.focus();
    App.txtfNombre.setValue(registro[0].get('Nombre'));
    App.txtaDescripcion.setValue(registro[0].get('Descripcion'));

    //Desactivar la validación de agregar una imagen al FileUpload
    App.fufImagenAvanceProyecto.allowBlank = true;
};

//Evento de clic del boton Ver Imagen o Foto
var btnVerFoto_Click = function () {
    Ext.util.Cookies.set('cookieVerImagenProyecto', App.sImagenAvanceProyecto.getAt(0).get('Direccion'));
    window.parent.App.wVerFoto.load('FormaVerImagenProyecto.aspx');
    window.parent.App.wVerFoto.setHeight(600);
    window.parent.App.wVerFoto.setWidth(900);
    window.parent.App.wVerFoto.center();
    window.parent.App.wVerFoto.setTitle('Visualizar Fotografía');
    window.parent.App.wVerFoto.show();
};

var uploadError = function (item, file, errorCode, message) {
    alert("Código de error: " + errorCode + ", Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
};

var fileSelectionError = function (item, file, errorCode, message) {
    alert("Código de error: " + errorCode + ", Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
};