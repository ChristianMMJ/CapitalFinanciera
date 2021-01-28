<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormaMultiImagenesProyecto.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.FormaMultiImagenesProyecto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/login2.css" />
    <link rel="stylesheet" href="css/customControls2.css" />
    <script type='text/javascript' src="js/multiimagenesproyectos.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmFormaMultiImagenesProyecto" runat="server" HideInDesign="true"/>

        <ext:Store
            ID="sMultiImagenAvanceProyecto"
            runat="server">
            <Model>
                <ext:Model ID="mMultiImagenAvanceProyecto" runat="server" IDProperty="ID">
                    <Fields>
                        <ext:ModelField Name="ID" Type="Int" />
                        <ext:ModelField Name="Proyecto" Type="String" />
                        <ext:ModelField Name="Avance" Type="String" />
                        <ext:ModelField Name="Nombre" Type="String" />
                        <ext:ModelField Name="Descripcion" Type="String" />
                        <ext:ModelField Name="Direccion" Type="String" />
                    </Fields>
                </ext:Model>
            </Model>
        </ext:Store>

        <ext:FormPanel
            ID="fpMultiImagenAvanceProyecto"
            runat="server"
            BodyPadding="10"
            ButtonAlign="Right"
            Width="900"
            Height="700">
            <Items>
                <ext:FieldSet
                    ID="fsDatosGenerales"
                    runat="server"
                    Title="Datos generales"
                    Padding="3">
                    <Items>
                        <ext:Container
                            ID="cProyecto"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:ComboBox
                                    ID="cmbProyecto"
                                    runat="server"
                                    AllowBlank="false"
                                    Editable="false"
                                    FieldLabel="Proyecto"
                                    LabelWidth="100"
                                    Width="425"
                                    Margins="5 3 5 0"
                                    ValueField="ID"
                                    DisplayField="ID"
                                    QueryMode="Local"
                                    TypeAhead="true"
                                    MatchFieldWidth="false"
                                    PageSize="10"
                                    ValueNotFoundText="Ningun elemento"
                                    ForceSelection="true"
                                    Disabled="true">
                                    <Store>
                                        <ext:Store
                                            ID="sProyectos"
                                            runat="server">
                                            <Model>
                                                <ext:Model
                                                    ID="mProyectos"
                                                    runat="server"
                                                    IDProperty="ID">
                                                    <Fields>
                                                        <ext:ModelField Name="ID" Type="String" />
                                                        <ext:ModelField Name="Nombre" Type="String" />
                                                        <ext:ModelField Name="Direccion" Type="String" UseNull="true" />
                                                        <ext:ModelField Name="Monto" Type="Float" />
                                                        <ext:ModelField Name="Observaciones" Type="String" UseNull="true" />
                                                        <ext:ModelField Name="Avances" Type="String" />
                                                        <ext:ModelField Name="Estatus" Type="String" />
                                                        <ext:ModelField Name="UsuarioAlta" Type="String" />
                                                        <ext:ModelField Name="FechaAlta" Type="Date" />
                                                        <ext:ModelField Name="UsuarioModificacion" Type="String" />
                                                        <ext:ModelField Name="FechaModificacion" Type="Date" />
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
                                            <Listeners>
                                                <Load Handler="App.cmbProyecto.setValue(Ext.util.Cookies.get('cookieEditarProyecto'));" />
                                            </Listeners>
                                        </ext:Store>
                                    </Store>
                                    <ListConfig ID="lcProyectos" runat="server" Width="330">
                                        <ItemTpl ID="itProyectos" runat="server">
                                            <Html>
                                                <div class="search-item">
							                        <h3>{ID}</h3>
                                                    <span>{Nombre}</span>
						                        </div>
                                            </Html>
                                        </ItemTpl>
                                    </ListConfig>
                                    <Listeners>
                                        <Change Fn="cmbProyecto_Change" />
                                    </Listeners>
                                </ext:ComboBox>
                                <ext:TextField
                                    ID="txtfNombreProyecto"
                                    runat="server"
                                    EmptyText=""
                                    Margins="5 3 5 0"
                                    Width="425"
                                    Disabled="true">
                                </ext:TextField>
                            </Items>
                        </ext:Container>
                        <ext:Container
                            ID="cAvance"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:ComboBox
                                    ID="cmbAvance"
                                    runat="server"
                                    AllowBlank="false"
                                    Editable="false"
                                    FieldLabel="Avance"
                                    LabelWidth="100"
                                    Width="425"
                                    Margins="5 3 5 0"
                                    AutoFocus="true">
                                    <Items>
                                        <ext:ListItem Index="0" Text="" Value="COMPRA" />
                                        <ext:ListItem Index="1" Text="" Value="RESTAURACIÓN" />
                                        <ext:ListItem Index="2" Text="" Value="EN VENTA" />
                                        <ext:ListItem Index="3" Text="" Value="POOL FINALIZADO" />
                                    </Items>
                                </ext:ComboBox>
                            </Items>
                        </ext:Container>
                        <ext:Container
                            ID="cNombre"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:TextField
                                    ID="txtfNombre"
                                    runat="server"
                                    FieldLabel="Nombre"
                                    LabelWidth="100"
                                    MaxLength="100"
                                    EnforceMaxLength="true"
                                    AllowBlank="false"
                                    Width="850"
                                    Margins="5 3 5 0">
                                    <Listeners>
                                        <Blur Handler="App.txtfNombre.setValue(App.txtfNombre.getValue().toUpperCase());" />
                                    </Listeners>
                                </ext:TextField>
                            </Items>
                        </ext:Container>
                        <ext:Container
                            ID="cDescripcion"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:TextArea
                                    ID="txtaDescripcion"
                                    runat="server"
                                    FieldLabel="Descripción"
                                    LabelWidth="100"
                                    AllowBlank="false"
                                    Width="850"
                                    Margins="5 3 5 0">
                                    <Listeners>
                                        <Blur Handler="App.txtaDescripcion.setValue(App.txtaDescripcion.getValue().toUpperCase());" />
                                    </Listeners>
                                </ext:TextArea>
                            </Items>
                        </ext:Container>
                    </Items>
                </ext:FieldSet>
                <ext:FieldSet
                    ID="fsMultiImagen"
                    runat="server"
                    Title="Multiples Imagenes o fotos"
                    Padding="3">
                    <Items>
                        <ext:Container
                            ID="cImagenesFotos"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:GridPanel 
                                    ID="UploadGrid" 
                                    runat="server" 
                                    Width="860" 
                                    Height="300" 
                                    Frame="true">
                                    <Store>
                                        <ext:Store ID="Store1" runat="server">
                                            <Model>
                                                <ext:Model ID="Model1" runat="server" IDProperty="id">
                                                    <Fields>
                                                        <ext:ModelField Name="id" />
                                                        <ext:ModelField Name="name" />
                                                        <ext:ModelField Name="size" />
                                                        <ext:ModelField Name="status" />
                                                        <ext:ModelField Name="progress" />
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
                                        </ext:Store>
                                    </Store>
                                    <ColumnModel>
                                        <Columns>
                                            <ext:Column 
                                                ID="cNombreArchivo"
                                                runat="server"
                                                Text="Nombre del archivo"
                                                DataIndex="name"
                                                Width="300" />
                                            <ext:Column
                                                ID="cTamano"
                                                runat="server"
                                                Text="Tamaño"
                                                DataIndex="size"
                                                Width="150">
                                                <Renderer Format="FileSize" />
                                            </ext:Column>
                                            <ext:Column
                                                ID="cIconoEstatus"
                                                runat="server"
                                                Text="&nbsp;"
                                                DataIndex="status"
                                                Width="40">
                                                <Renderer Fn="statusIconRenderer" />
                                            </ext:Column>
                                            <ext:Column
                                                ID="cEstatus"
                                                runat="server"
                                                Text="Estatus"
                                                DataIndex="status"
                                                Width="100" />
                                            <ext:ProgressBarColumn
                                                ID="pbcProgreso"
                                                runat="server"
                                                Text="Progreso"
                                                DataIndex="progress"
                                                Width="250" />
                                        </Columns>
                                    </ColumnModel>
                                    <TopBar>
                                        <ext:Toolbar ID="Toolbar1" runat="server">
                                            <Items>
                                                <ext:MultiUpload 
                                                    ID="MultiUpload1" 
                                                    runat="server"
                                                    OnFileUpload="MultiUpload1_FileUpload"
                                                    FileDropAnywhere="true"
                                                    FileSizeLimit="15 MB"
                                                    FileTypes="*.png; *.jpg; *.jpeg"
                                                    FileTypesDescription="Archivos de imagen"
                                                    FileUploadLimit="100"
                                                    FileQueueLimit="0">
                                                    <Button>
                                                        <ext:Button ID="Button1" runat="server" Text="Cargar..." Height="35" Width="130" />
                                                    </Button>
                                                    <Listeners>
                                                        <SwfUploadLoadFailed Fn="loadFailed" />
                                                        <FileSelected Fn="fileSelected" />
                                                        <UploadStart Handler="updateRecord(file.id, 'status', 'Enviando');" />
                                                        <UploadProgress Handler="updateRecord(file.id, 'progress', bytesComplete / bytesTotal);" />
                                                        <UploadComplete Handler="updateRecord(file.id, 'progress', 1 );updateRecord(file.id, 'status', 'Cargada' );" />
                                                        <UploadAborted Handler="updateRecord(file.id, 'status', 'Cancelada');" />
                                                        <UploadRemoved Handler="var store = this.up('grid').store; store.remove(store.getById(file.id));" />
                                                        <UploadError Fn="uploadError" />
                                                        <FileSelectionError Fn="fileSelectionError" />
                                                    </Listeners>
                                                </ext:MultiUpload>
                                                <ext:ToolbarSeparator />
                                                <ext:Button
                                                    ID="btnIniciar" 
                                                    runat="server" 
                                                    Text="Iniciar carga"
                                                    Width="130"
                                                    Height="35"
                                                    Icon="Tick"
                                                    Cls="buttonCustom"
                                                    Handler="#{MultiUpload1}.startUpload();" />
                                                <ext:Button
                                                    ID="btnCancelar" 
                                                    runat="server" 
                                                    Text="Cancelar"
                                                    Width="130"
                                                    Height="35"
                                                    Icon="Decline" 
                                                    Handler="abortUpload" />
                                                <ext:Button
                                                    ID="btnCancelarTodo" 
                                                    runat="server" 
                                                    Text="Cancelar todo"
                                                    Width="130"
                                                    Height="35"
                                                    Icon="Decline" 
                                                    Handler="#{MultiUpload1}.abortAllUploads();" />
                                                <ext:Button
                                                    ID="btnBorrar" 
                                                    runat="server" 
                                                    Text="Borrar"
                                                    Width="130"
                                                    Height="35"
                                                    Icon="Delete" 
                                                    Handler="removeUpload" />
                                                <ext:Button
                                                    ID="btnBorrarTodo" 
                                                    runat="server" 
                                                    Text="Borrar todo"
                                                    Width="130"
                                                    Height="35"
                                                    Icon="Delete" 
                                                    Handler="#{MultiUpload1}.removeAllUploads();" />
                                            </Items>
                                        </ext:Toolbar>
                                    </TopBar>             
                                </ext:GridPanel>
                            </Items>
                        </ext:Container>
                    </Items>
                </ext:FieldSet>
            </Items>
            <Listeners>
                <ValidityChange Handler="this.dockedItems.get(0).setStatus({
                                                text : valid ? 'La información esta completa/correcta' : 'Existe información incompleta/incorrecta', 
                                                iconCls: valid ? 'icon-accept' : 'icon-exclamation'
                                            });
                                            #{btnIniciar}.setDisabled(!valid);" />
            </Listeners>
            <Buttons>
                <ext:ImageButton 
                    ID="imgbtnCancelar" 
                    runat="server" 
                    ImageUrl="assets/img/controles/Cancelar.png" 
                    DisabledImageUrl="assets/img/controles/CancelarDisabled.png"
                    OverImageUrl="assets/img/controles/CancelarOver.png" 
                    PressedImageUrl="assets/img/controles/CancelarPressed.png" 
                    ToolTip="Cancelar" 
                    Height="50" 
                    Width="50">
                    <Listeners>
                        <Click Handler="window.parent.App.wSubModulo.hide();" />
                    </Listeners>
                </ext:ImageButton>
            </Buttons>
            <BottomBar>
                <ext:StatusBar
                    ID="sbImagenAvanceProyecto" 
                    runat="server" 
                    Cls="x-colorToolbar"
                    Text="Sin validar información" />
            </BottomBar>
        </ext:FormPanel>

    </form>
</body>
</html>
