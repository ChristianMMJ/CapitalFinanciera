var banderaValidate = false;

//Evento de clic del botón Nuevo
var imgbtnNuevo_Click = function () {
    Ext.util.Cookies.set('cookieEditarInversion', 'Nuevo');
    window.parent.App.wEmergente.load('FormaInversion.aspx');
    window.parent.App.wEmergente.setHeight(488);
    window.parent.App.wEmergente.setWidth(800);
    window.parent.App.wEmergente.center();
    window.parent.App.wEmergente.setTitle('Nueva inversion');
    window.parent.App.wEmergente.show();
};

//Evento de click del botón Editar
var imgbtnEditar_Click = function () {
    Ext.util.Cookies.set('cookieEditarInversion', App.gpInversiones.getSelectionModel().getSelection()[0].get('ID'));
    window.parent.App.wEmergente.load('FormaInversion.aspx');
    window.parent.App.wEmergente.setHeight(488);
    window.parent.App.wEmergente.setWidth(800);
    window.parent.App.wEmergente.center();
    window.parent.App.wEmergente.setTitle('Editar inversion ' + Ext.util.Cookies.get('cookieEditarInversion'));
    window.parent.App.wEmergente.show();
};

//Para el botón de eliminar, Eliminar un registro
var imgbtnBorrar_Click = function () {
    var identificador = App.gpInversiones.getSelectionModel().getSelection()[0].get('ID');
    var indice = App.gpInversiones.getStore().find('ID', identificador);
    var nombreusuario = App.sInversiones.getAt(indice).get('Usuario');
    var nombreproyecto = App.sInversiones.getAt(indice).get('Proyecto');
    Ext.Msg.show({
        id: 'msgInversionEliminar',
        title: 'Advertencia',
        msg: '¿Estás seguro de eliminar la inversion de : ' + nombreusuario + ' en el proyecto: ' + nombreproyecto + '? ',
        buttons: Ext.MessageBox.YESNO,
        onEsc: Ext.emptyFn,
        closable: false,
        fn: function (btn) {
            if (btn === 'yes') {
                App.direct.EliminarInversion(identificador);
                App.gpInversiones.getStore().reload();
            }
        },
        icon: Ext.MessageBox.WARNING
    });
};
//Hacer la busqueda de información
var txtBuscar_Change = function (textfield, newValue, oldValue, e) {
    App.sInversiones.clearFilter();
    App.sInversiones.filter([{ filterFn: function (item) {
        if (item.get('ID').toUpperCase().indexOf(newValue.toUpperCase()) > -1 || item.get('Usuario').toUpperCase().indexOf(newValue.toUpperCase()) > -1 || item.get('Proyecto').toUpperCase().indexOf(newValue.toUpperCase()) > -1) { return true; }
        else { return false; }
    }
    }]);
};

//Cambio en los datos del tablero
var sInversiones_DataChanged = function () {
    if (App.sInversiones.getCount() > 1) {
        App.sbInversiones.setText(App.sInversiones.getCount() + ' ' + 'INVERSIONES');
    }
    else {
        App.sbInversiones.setText(App.sInversiones.getCount() + ' ' + 'INVERSION');
    }

    //Resize column Nombre when records are 11
    if (App.sInversiones.getCount() > 10) {
        App.gpInversiones.columns[2].setWidth(280);
    }
    else {
        App.gpInversiones.columns[2].setWidth(300);
    }
};

//Dar formato de moneda a los campos monetarios
var ncMonetario_Renderer = function (valor) {
    var F = Ext.util.Format;
    F.thousandSeparator = ',';
    F.decimalSeparator = '.';
    return F.number(valor, "$000,000,000.00");
};

//Acciones al hacer clic en un registro
var gpInversiones_ItemClick = function () {
    App.imgbtnEditar.setDisabled(false);
    App.imgbtnBorrar.setDisabled(false);
};

//************************ FormaProyectos ************************//

//Evento lanzado al cargar el store de la sucursal
var sInversion_Load = function () {
    App.direct.sInversion_Load();
};

//Evento lanzado al agregar un registro al store
var sInversion_Add = function (inversion, registro) {
    App.txtfID.setDisabled(true);
    App.txtfID.setValue(registro[0].get('ID'));
    App.cmbUsuario.setValue(registro[0].get('Usuario'));
    App.cmbUsuario.focus();
    App.cmbProyecto.setValue(registro[0].get('Proyecto'));
    App.dfFecha.setValue(registro[0].get('Fecha'));
    App.nfValorInversion.setValue(registro[0].get('Monto'));
    App.nfPorcentaje.setValue(registro[0].get('Porcentaje'));
    App.cmbTipoInversion.setValue(registro[0].get('Tipo'));
    App.cmbEstatus.setValue(registro[0].get('Estatus'));
    App.txtfUsuarioAlta.setValue(registro[0].get('UsuarioAlta'));
    App.dfFechaAlta.setValue(registro[0].get('FechaAlta'));
    App.txtfUsuarioModificacion.setValue(registro[0].get('UsuarioModificacion'));
    App.dfFechaModificacion.setValue(registro[0].get('FechaModificacion'));
};

//Despues de crear el Combobox de Estatus
var cmbEstatus_AfterRender = function (combobox, opciones) {
    if (Ext.util.Cookies.get('cookieEditarInversion') === 'Nuevo') {
        App.cmbEstatus.select('ALTA');
    }
};

//Evento que ocurre al dar clic en imgbtnGuardar
var imgbtnGuardar_Click_Success = function () {
    window.parent.App.wEmergente.hide();
    window.parent.App.pCentro.getBody().App.sInversiones.reload();
};

//Concatenar la columna de Nombre Completo
var NombreCompleto_Convert = function (value, record) {
    return record.get('Nombre') + ' ' + record.get('APaterno') + ' ' + record.get('AMaterno');
};

//Evento que se lanza al cambiar un valor en ComboBox de Usuario
var cmbUsuario_Change = function (combobox, valorNuevo, valorAnterior) {
    registro = combobox.getStore().findRecord('ID', valorNuevo)

    if (valorNuevo == null) {
        App.txtfNombreUsuario.setValue('');
        return
    }
    else if (registro != null) {
        App.txtfNombreUsuario.setValue(registro.get('Nombre') + ' ' + registro.get('APaterno') + ' ' + registro.get('AMaterno'));
    }
};

//Evento que se lanza al seleccionar un elemento del ComboBox de Usuario
var cmbUsuario_Select = function (combobox, registro) {
    App.txtfNombreUsuario.setValue(registro[0].data.Nombre + ' ' + registro[0].data.APaterno + ' ' + registro[0].data.AMaterno);
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

//Evento que se lanza al seleccionar un elemento del ComboBox de Proyecto
var cmbProyecto_Select = function (combobox, registro) {
    App.txtfNombreProyecto.setValue(registro[0].data.Nombre);
};