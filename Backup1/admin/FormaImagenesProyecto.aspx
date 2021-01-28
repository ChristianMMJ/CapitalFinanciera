<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormaImagenesProyecto.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.FormaImagenesProyecto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/login2.css" />
    <link rel="stylesheet" href="css/customControls2.css" />
    <script type='text/javascript' src="js/imagenesproyectos.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmFormaImagenesProyecto" runat="server" HideInDesign="true"/>

        <ext:Store
            ID="sImagenAvanceProyecto"
            runat="server">
            <Model>
                <ext:Model ID="mImagenAvanceProyecto" runat="server" IDProperty="ID">
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
            <Listeners>
                <Load Fn="sImagenAvanceProyecto_Load" />
                <Add Fn="sImagenAvanceProyecto_Add" />
            </Listeners>
        </ext:Store>

        <ext:FormPanel
            ID="fpImagenAvanceProyecto"
            runat="server"
            BodyPadding="10"
            DefaultButton="imgbtnGuardar"
            ButtonAlign="Right"
            Width="750"
            Height="520">
            <Items>
                <ext:FieldSet
                    ID="fsDatosGenerales"
                    runat="server"
                    Title="Datos generales"
                    Padding="3">
                    <Items>
                        <ext:Container
                            ID="cID"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:TextField
                                    ID="txtfID"
                                    runat="server"
                                    FieldLabel="ID"
                                    LabelWidth="100"
                                    Disabled="true"
                                    AllowBlank="true"
                                    Margins="5 3 5 0"
                                    Width="350">
                                </ext:TextField>
                            </Items>
                        </ext:Container>
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
                                    Width="350"
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
                                        <Select Fn="cmbProyecto_Select" />
                                        <Change Fn="cmbProyecto_Change" />
                                    </Listeners>
                                </ext:ComboBox>
                                <ext:TextField
                                    ID="txtfNombreProyecto"
                                    runat="server"
                                    EmptyText=""
                                    Margins="5 3 5 0"
                                    Width="350"
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
                                    Width="350"
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
                                    Width="703"
                                    Margins="5 3 5 0">
                                    <Listeners>
                                        <Blur Handler="App.txtfNombre.setValue(App.txtfNombre.getValue().toUpperCase()); window.parent.App.wEmergente.getBody().App.gpAdministracionAvance.getStore().reload();" />
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
                                    Width="703"
                                    Margins="5 3 5 0">
                                </ext:TextArea>
                            </Items>
                        </ext:Container>
                    </Items>
                </ext:FieldSet>
                <ext:FieldSet
                    ID="fsImagen"
                    runat="server"
                    Title="Imagen o foto"
                    Padding="3">
                    <Items>
                        <ext:Container
                            ID="cImagenFto"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:FileUploadField 
                                    ID="fufImagenAvanceProyecto"
                                    runat="server"
                                    Icon="Attach"
                                    FieldLabel="Cargar imagen"
                                    LabelWidth="100"
                                    Width="703"
                                    Margins="5 3 5 0"
                                    AllowBlank="false"
                                    SubmitValue="true">
                                </ext:FileUploadField>
                            </Items>
                        </ext:Container>
                        <ext:Container
                            ID="cFoto"
                            runat="server"
                            Layout="HBoxLayout"
                            Margin="5">
                            <Items>
                                <ext:Button
                                    ID="btnVerFoto"
                                    runat="server"
                                    Text="Ver Imagen"
                                    Icon="ApplicationViewGallery"
                                    IconAlign="Left"
                                    Margins="5 3 5 105"
                                    Width="350"
                                    Height="30">
                                    <Listeners>
                                        <Click Fn="btnVerFoto_Click" />
                                    </Listeners>
                                </ext:Button>
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
                                            #{imgbtnGuardar}.setDisabled(!valid);" />
            </Listeners>
            <Buttons>
                <ext:ImageButton
                    ID="imgbtnGuardar" 
                    runat="server" 
                    ImageUrl="assets/img/controles/Guardar.png" 
                    DisabledImageUrl="assets/img/controles/GuardarDisabled.png"
                    OverImageUrl="assets/img/controles/GuardarOver.png" 
                    PressedImageUrl="assets/img/controles/GuardarPressed.png" 
                    ToolTip="Guardar" 
                    Height="50" 
                    Width="50"
                    Disabled="true">
                    <DirectEvents>
                        <Click OnEvent="imgbtnGuardar_Click">
                            <EventMask ShowMask="true" Msg="Registrando información..." />
                            <ExtraParams>
                                <ext:Parameter Name="registro" Value="Ext.encode(this.up('form').getForm().getValues(false, false, false, true))" Mode="Raw" />
                                <ext:Parameter Name="id" Value="Ext.encode(App.txtfID.getValue())" Mode="Raw" />
                                <ext:Parameter Name="proyecto" Value="Ext.encode(App.cmbProyecto.getValue())" Mode="Raw" />
                            </ExtraParams>
                        </Click>
                    </DirectEvents>
                </ext:ImageButton>
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
