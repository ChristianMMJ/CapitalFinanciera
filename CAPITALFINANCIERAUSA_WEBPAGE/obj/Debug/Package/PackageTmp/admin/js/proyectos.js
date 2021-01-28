var banderaValidate = false;

//Evento de clic del botón Nuevo
var imgbtnNuevo_Click = function () {
    Ext.util.Cookies.set('cookieEditarProyecto', 'Nuevo');
    window.parent.App.wEmergente.load('FormaProyecto.aspx');
    window.parent.App.wEmergente.setHeight(600);
    window.parent.App.wEmergente.setWidth(770);
    window.parent.App.wEmergente.center();
    window.parent.App.wEmergente.setTitle('Nuevo proyecto');
    window.parent.App.wEmergente.show();
};

//Evento de click del botón Editar
var imgbtnEditar_Click = function () {
    Ext.util.Cookies.set('cookieEditarProyecto', App.gpProyectos.getSelectionModel().getSelection()[0].get('ID'));
    window.parent.App.wEmergente.load('FormaProyecto.aspx');
    window.parent.App.wEmergente.setHeight(600);
    window.parent.App.wEmergente.setWidth(770);
    window.parent.App.wEmergente.center();
    window.parent.App.wEmergente.setTitle('Editar proyecto ' + Ext.util.Cookies.get('cookieEditarProyecto'));
    window.parent.App.wEmergente.show();
};

//Para el botón de eliminar, Eliminar un registro
var imgbtnBorrar_Click = function () {
    var identificador = App.gpProyectos.getSelectionModel().getSelection()[0].get('ID');
    var indice = App.gpProyectos.getStore().find('ID', identificador);
    var nombre = App.sProyectos.getAt(indice).get('Nombre');
    Ext.Msg.show({
        id: 'msgProyectoEliminar',
        title: 'Advertencia',
        msg: '¿Estás seguro de eliminar el proyecto: ' + nombre + '? ',
        buttons: Ext.MessageBox.YESNO,
        onEsc: Ext.emptyFn,
        closable: false,
        fn: function (btn) {
            if (btn === 'yes') {
                App.direct.EliminarProyecto(identificador);
                App.gpProyectos.getStore().reload();
            }
        },
        icon: Ext.MessageBox.WARNING
    });
};

//Hacer la busqueda de información
var txtBuscar_Change = function (textfield, newValue, oldValue, e) {
    App.sProyectos.clearFilter();
    App.sProyectos.filter([{ filterFn: function (item) {
        if (item.get('ID').toUpperCase().indexOf(newValue.toUpperCase()) > -1 || item.get('Nombre').toUpperCase().indexOf(newValue.toUpperCase()) > -1) { return true; }
        else { return false; }
    }
    }]);
};

//Cambio en los datos del tablero
var sProyectos_DataChanged = function () {
    if (App.sProyectos.getCount() > 1) {
        App.sbProyectos.setText(App.sProyectos.getCount() + ' ' + 'PROYECTOS');
    }
    else {
        App.sbProyectos.setText(App.sProyectos.getCount() + ' ' + 'PROYECTOS');
    }

    //Resize column Nombre when records are 11
    if (App.sProyectos.getCount() > 10) {
        App.gpProyectos.columns[2].setWidth(280);
    }
    else {
        App.gpProyectos.columns[2].setWidth(300);
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
var gpProyectos_ItemClick = function () {
    App.imgbtnEditar.setDisabled(false);
    App.imgbtnBorrar.setDisabled(false);
};

//************************ FormaProyectos ************************//

//Evento lanzado al cargar el store del proyecto
var sProyecto_Load = function () {
    App.direct.sProyecto_Load();
};

//Evento lanzado al agregar un registro al store
var sProyecto_Add = function (proyecto, registro) {
    App.txtfID.setDisabled(true);
    App.txtfID.setValue(registro[0].get('ID'));
    App.txtfNombre.setValue(registro[0].get('Nombre'));
    App.txtfNombre.focus();
    App.txtfDireccion.setValue(registro[0].get('Direccion'));
    App.nfMonto.setValue(registro[0].get('Monto'));
    App.cmbAvance.setValue(registro[0].get('Avances'));
    App.cmbEstatus.setValue(registro[0].get('Estatus'));
    App.txtaObservaciones.setValue(registro[0].get('Observaciones'));
    App.txtfUsuarioAlta.setValue(registro[0].get('UsuarioAlta'));
    App.dfFechaAlta.setValue(registro[0].get('FechaAlta'));
    App.txtfUsuarioModificacion.setValue(registro[0].get('UsuarioModificacion'));
    App.dfFechaModificacion.setValue(registro[0].get('FechaModificacion'));
};

//Despues de crear el Combobox de Estatus
var cmbEstatus_AfterRender = function (combobox, opciones) {
    if (Ext.util.Cookies.get('cookieEditarProyecto') === 'Nuevo') {
        App.cmbEstatus.select('ALTA');
    }
};

//Evento que ocurre al dar clic en imgbtnGuardar
var imgbtnGuardar_Click_Success = function () {
    window.parent.App.wEmergente.hide();
    window.parent.App.pCentro.getBody().App.sProyectos.reload();
};

//Evento lanzado al cargar el store de la sucursal
var sAdministracionEstatus_Load = function () {
    App.sAdministracionEstatus.add(
        { Renglon: 1, Estatus: 'COMPRA', Fotos: 1 },
        { Renglon: 2, Estatus: 'RESTAURACIÓN', Fotos: 1 },
        { Renglon: 3, Estatus: 'EN VENTA', Fotos: 1 },
        { Renglon: 4, Estatus: 'POOL FINALIZADO', Fotos: 1 }
    );
};

//Evento que se lanza al dar clic sobre algun comando de la columna Fotos
var ccFotos_Command = function (column, nombre, registro, renglon, opciones) {
    Ext.util.Cookies.set('cookieVerImagenProyecto', registro.data.Direccion);
    window.parent.App.wVerFoto.load('FormaVerImagenProyecto.aspx');
    window.parent.App.wVerFoto.setHeight(600);
    window.parent.App.wVerFoto.setWidth(900);
    window.parent.App.wVerFoto.center();
    window.parent.App.wVerFoto.setTitle('Visualizar Fotografía');
    window.parent.App.wVerFoto.show();
};

//Evento de la columna de acciones
var ccAcciones_Command = function (columna, comando, registro, fila, opciones) {
};

//Evento de clic del botón Nuevo
var imgbtnNuevoAvance_Click = function () {
    Ext.util.Cookies.set('cookieEditarImagenesAvancesProyectos', 'Nuevo');
    window.parent.App.wSubModulo.load('FormaImagenesProyecto.aspx');
    window.parent.App.wSubModulo.setHeight(570);
    window.parent.App.wSubModulo.setWidth(770);
    window.parent.App.wSubModulo.center();
    window.parent.App.wSubModulo.setTitle('Nueva imagen de avance proyecto');
    window.parent.App.wSubModulo.show();
};

//Evento de click del botón Editar
var imgbtnEditarAvance_Click = function () {
    Ext.util.Cookies.set('cookieEditarImagenesAvancesProyectos', App.gpAdministracionAvance.getSelectionModel().getSelection()[0].get('ID'));
    window.parent.App.wSubModulo.load('FormaImagenesProyecto.aspx');
    window.parent.App.wSubModulo.setHeight(570);
    window.parent.App.wSubModulo.setWidth(770);
    window.parent.App.wSubModulo.center();
    window.parent.App.wSubModulo.setTitle('Editar imagen de avance proyecto ' + Ext.util.Cookies.get('cookieEditarImagenesAvancesProyectos'));
    window.parent.App.wSubModulo.show();
};

//Para el botón de eliminar, Eliminar un registro
var imgbtnBorrarAvance_Click = function () {
    var identificador = App.gpAdministracionAvance.getSelectionModel().getSelection()[0].get('ID');
    var indice = App.gpAdministracionAvance.getStore().find('ID', identificador);
    var nombre = App.sImagenesAvancesProyectos.getAt(indice).get('Nombre');
    Ext.Msg.show({
        id: 'msgImagenesAvancesProyectosEliminar',
        title: 'Advertencia',
        msg: '¿Estás seguro de eliminar la imagen/fotografía: ' + nombre + '? ',
        buttons: Ext.MessageBox.YESNO,
        onEsc: Ext.emptyFn,
        closable: false,
        fn: function (btn) {
            if (btn === 'yes') {
                App.direct.EliminarImagenAvanceProyecto(identificador);
                App.gpAdministracionAvance.getStore().reload();
            }
        },
        icon: Ext.MessageBox.WARNING
    });
};

//Hacer la busqueda de información
var txtBuscarAvance_Change = function (textfield, newValue, oldValue, e) {

};

//Evento de clic del botón Multiples imagenes o fotos
var imgbtnMultiplesImagenesFotos_Click = function () {
    Ext.util.Cookies.set('cookieEditarImagenesAvancesProyectos', 'Nuevo');
    window.parent.App.wEmergente.load('FormaMultiImagenesProyecto.aspx');
    window.parent.App.wEmergente.setHeight(750);
    window.parent.App.wEmergente.setWidth(920);
    window.parent.App.wEmergente.center();
    window.parent.App.wEmergente.setTitle('Cargar multiples imagenes o fotos');
    window.parent.App.wEmergente.show();
};