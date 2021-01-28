var loadFailed = function () {
    alert("Para poder visualizar este módulo es necesario abrirlo con el navegador de Internet Explorer, ¡ojo¡, no Internet Explorer Edge.");
};

var statusIconRenderer = function (value) {
    switch (value) {
        default:
            return value;
        case 'Pendiente':
            return '<img src="' + Ext.net.ResourceMgr.getIconUrl("Hourglass") + '" width=16 height=16>';
        case 'Enviando':
            return '<div src="x-loading-indicator" width=16 height=16>';
        case 'Error':
            return '<img src="' + Ext.net.ResourceMgr.getIconUrl("Decline") + '" width=16 height=16>';
        case 'Detenido':
        case 'Cancelada':
            return '<img src="' + Ext.net.ResourceMgr.getIconUrl("Decline") + '" width=16 height=16>';
        case 'Cargada':
            return '<img src="' + Ext.net.ResourceMgr.getIconUrl("Tick") + '" width=16 height=16>';
    }
};

var updateRecord = function (id, field, value) {
    var rec = App.UploadGrid.store.getById(id);

    rec.set(field, value);
    rec.commit();
};

var abortUpload = function (btn) {
    var selModel = btn.up('grid').getSelectionModel(),
                        records;

    if (!selModel.hasSelection()) {
        Ext.Msg.alert('Error', 'Por favor selecciona un archivo de carga para cancelar');
        return true;
    }

    records = selModel.getSelection();
    App.MultiUpload1.abortUpload(records[0].getId());
};

var removeUpload = function (btn) {
    var selModel = btn.up('grid').getSelectionModel(),
                        records;

    if (!selModel.hasSelection()) {
        Ext.Msg.alert('Error', 'Por favor selecciona un archivo de carga para eliminar');
        return true;
    }

    records = selModel.getSelection();
    App.MultiUpload1.removeUpload(records[0].getId());
};

var fileSelected = function (item, file) {
    //Example of cancelling a file to be selection
    if (file.name == 'image.jpg') {
        Ext.Msg.alert('Error', 'No se puede cargar un archivo con nombre "image.jpg"');
        return false;
    }

    this.up('grid').store.add({
        id: file.id,
        name: file.name,
        size: file.size,
        status: 'Pendiente',
        progress: 0
    });
};

var uploadError = function (item, file, errorCode, message) {
    updateRecord(file.id, 'progress', 0);
    updateRecord(file.id, 'status', 'Error');

    switch (errorCode) {
        case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:
            alert("Código de error: HTTP Error, Nombre del archivo: " + file.name + ", Mensaje: " + message);
            break;
        case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:
            alert("Código de error: Error al cargar, Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
            break;
        case SWFUpload.UPLOAD_ERROR.IO_ERROR:
            alert("Código de error: IO Error, Nombre del archivo: " + file.name + ", Mensaje: " + message);
            break;
        case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:
            alert("Código de error: Error de seguridad, Nombre del archivo: " + file.name + ", Mensaje: " + message);
            break;
        case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
            alert("Código de error: Se excedio el limite de carga, Nombre del archivo: " + file.name + ", File size: " + file.size + ", Mensaje: " + message);
            break;
        case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:
            alert("Código de error: Error de validación de archivo, Nombre del archivo: " + file.name + ", File size: " + file.size + ", Mensaje: " + message);
            break;
        case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
            updateRecord(file.id, 'status', 'Cancelado');
            break;
        case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
            updateRecord(file.id, 'status', 'Detenido');
            break;
        default:
            updateRecord(file.id, 'status', "Unhandled Error: " + errorCode);
            alert("Código de error: " + errorCode + ", Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
            break;
    }
};

var fileSelectionError = function (item, file, errorCode, message) {
    if (errorCode === SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED) {
        alert("Has tratado de mandar a la cola demasiados archivos.\n" + (message === 0 ? "Tienes un limite para realizar la carga." : "Debes seleccionar " + (message > 1 ? "más de " + message + " archivos." : "un archivo.")));
        return;
    }

    switch (errorCode) {
        case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
            alert("Código de error: Archivo demasiado grande, Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
            break;
        case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
            alert("Código de error: Archivo de cero byte, Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
            break;
        case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
            alert("Código de error: Tipo de archivo inválido, Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
            break;
        default:
            alert("Código de error: " + errorCode + ", Nombre del archivo: " + file.name + ", Tamaño del archivo: " + file.size + ", Mensaje: " + message);
            break;
    }
};

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