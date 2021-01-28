<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormaProyecto.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.FormaProyecto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../css/login2.css" />
    <link rel="stylesheet" href="../css/customControls2.css" />
    <script type='text/javascript' src="js/proyectos.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmFormaProyecto" runat="server" HideInDesign="true" />

        <ext:Store
            ID="sProyecto"
            runat="server">
            <Model>
                <ext:Model
                    ID="mProyecto"
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
                <Load Fn="sProyecto_Load" />
                <Add Fn="sProyecto_Add" />
            </Listeners>
        </ext:Store>

        <ext:Panel
            ID="pFormaProyecto" 
            runat="server" 
            Width="810"
            BodyStyle="background-color:transparent;">
            <Items>
                <ext:FormPanel 
                    ID="fpProyecto" 
                    runat="server" 
                    Height="550"
                    DefaultButton="imgbtnGuardar"
                    MonitorResize="true">
                    <Items>
                        <ext:TabPanel 
                            ID="tpProyecto"
                            runat="server" 
                            ActiveTabIndex="0" 
                            Width="760"
                            Plain="true"
                            AutoScroll="true"
                            Cls="custotabpanel xchris">
                            <Items>
                                <%--Terminado--%>
                                <ext:Panel 
                                    ID="pDatoGenerales" 
                                    runat="server" 
                                    Title="Datos Generales" 
                                    BodyPadding="10"
                                    MonitorResize="true">
                                    <Items>
                                        <ext:FieldSet
                                            ID="fsDatos"
                                            runat="server"
                                            Title="Datos">
                                            <Items>
                                                <ext:Container
                                                    ID="fcID" 
                                                    runat="server"
                                                    AnchorHorizontal="100%" 
                                                    Layout="ColumnLayout">
                                                    <Items>
                                                        <ext:TextField
                                                            ID="txtfID"
                                                            runat="server"
                                                            Width="250"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            AutoFocus="false"
                                                            FieldLabel="Proyecto"
                                                            Disabled="true"
                                                            MaxLength="8"
                                                            EnforceMaxLength="true">
                                                        </ext:TextField>
                                                    </Items>
                                                </ext:Container>
                                                <ext:Container
                                                    ID="fcNombre" 
                                                    runat="server" 
                                                    AnchorHorizontal="100%" 
                                                    Layout="ColumnLayout">
                                                    <Items>
                                                        <ext:TextField
                                                            ID="txtfNombre"
                                                            runat="server"
                                                            FieldLabel="Nombre"
                                                            Width="705"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            AllowBlank="false"
                                                            MaxLength="200"
                                                            EnforceMaxLength="true"
                                                            AutoFocus="true">
                                                            <Listeners>
                                                                <Blur Handler="App.txtfNombre.setValue(App.txtfNombre.getValue().toUpperCase());" />
                                                            </Listeners>
                                                        </ext:TextField>
                                                    </Items>
                                                </ext:Container>
                                                <ext:Container 
                                                    ID="fcDireccion" 
                                                    runat="server" 
                                                    AnchorHorizontal="100%" 
                                                    Layout="ColumnLayout">
                                                    <Items>
                                                        <ext:TextField
                                                            ID="txtfDireccion"
                                                            runat="server"
                                                            Width="705"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            AllowBlank="true"
                                                            FieldLabel="Dirección"
                                                            MaxLength="500"
                                                            EnforceMaxLength="true">
                                                            <Listeners>
                                                                <Blur Handler="App.txtfDireccion.setValue(App.txtfDireccion.getValue().toUpperCase());" />
                                                            </Listeners>
                                                        </ext:TextField>
                                                    </Items>
                                                </ext:Container>
                                                <ext:Container 
                                                    ID="fcMontoAvance" 
                                                    runat="server"
                                                    AnchorHorizontal="100%" 
                                                    Layout="ColumnLayout">
                                                    <Items>
                                                        <ext:NumberField
                                                            ID="nfMonto"
                                                            runat="server"
                                                            AllowBlank="false"
                                                            AllowDecimals="true"
                                                            Step="1"
                                                            EmptyText=""
                                                            MaxLength="7"
                                                            LabelWidth="100"
                                                            Width="350"
                                                            MinValue="0"
                                                            MaxValue="9999999"
                                                            FieldLabel="Monto"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 2px;">
                                                        </ext:NumberField>
                                                        <ext:ComboBox
                                                            ID="cmbAvance"
                                                            runat="server"
                                                            AllowBlank="false"
                                                            Editable="false"
                                                            FieldLabel="Avance"
                                                            LabelWidth="100"
                                                            Width="350"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 2px;">
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
                                                    ID="cEstatus"
                                                    runat="server"
                                                    AnchorHorizontal="100%"
                                                    Layout="ColumnLayout">
                                                    <Items>
                                                        <ext:ComboBox
                                                            ID="cmbEstatus"
                                                            runat="server"
                                                            AllowBlank="false"
                                                            Editable="false"
                                                            LabelWidth="100"
                                                            Width="350"
                                                            FieldLabel="Estatus"
                                                            StyleSpec="margin-top: 6px; margin-bottom: 6px;"
                                                            ValueField="ID"
                                                            DisplayField="Descripcion">
                                                            <Listeners>
                                                                <AfterRender Fn="cmbEstatus_AfterRender" />
                                                            </Listeners>
                                                            <Store>
                                                                <ext:Store ID="sEstatus" runat="server">
                                                                    <Model>
                                                                        <ext:Model ID="mEstatus" runat="server" IDProperty="ID">
                                                                            <Fields>
                                                                                <ext:ModelField Name="ID" Type="String" />
                                                                                <ext:ModelField Name="Descripcion" Type="String" />
                                                                            </Fields>
                                                                        </ext:Model>
                                                                    </Model>
                                                                </ext:Store>
                                                            </Store>
                                                            <Items>
                                                                <ext:ListItem Index="0" Text="ALTA" Value="ALTA" />
                                                                <ext:ListItem Index="1" Text="BLOQUEADO" Value="BLOQUEADO" />
                                                                <ext:ListItem Index="2" Text="BAJA" Value="BAJA" />
                                                            </Items>
                                                        </ext:ComboBox>
                                                    </Items>
                                                </ext:Container>
                                            </Items>
                                        </ext:FieldSet>
                                        <ext:FieldSet
                                            ID="fsObservaciones"
                                            runat="server"
                                            Title="Observaciones">
                                            <Items>
                                                <ext:TextArea
                                                    ID="txtaObservaciones"
                                                    runat="server"
                                                    AllowBlank="true"
                                                    Width="710">
                                                </ext:TextArea>
                                            </Items>
                                        </ext:FieldSet>
                                        <ext:FieldSet
                                            ID="fsControl"
                                            runat="server"
                                            Title="Control de Datos">
                                            <Items>
                                                <ext:Container
                                                    ID="cAlta"
                                                    runat="server"
                                                    Layout="ColumnLayout">
                                                    <Defaults>
                                                        <ext:Parameter Name="AllowBlank" Value="true" Mode="Raw" />
                                                        <ext:Parameter Name="Width" Value="350" Mode="Raw" />
                                                        <ext:Parameter Name="LabelWidth" Value="100" Mode="Raw" />
                                                        <ext:Parameter Name="EnforceMaxLength" Value="true" Mode="Raw" />
                                                    </Defaults>
                                                    <Items>
                                                        <ext:TextField
                                                            ID="txtfUsuarioAlta"
                                                            runat="server"
                                                            Editable="false"
                                                            MaxLength="50"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            Disabled="true"
                                                            FieldLabel="Usuario alta">
                                                        </ext:TextField>
                                                        <ext:DateField
                                                            ID="dfFechaAlta"
                                                            runat="server"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            FieldLabel="Fecha alta"
                                                            Disabled="true"
                                                            Vtype="daterange">
                                                        </ext:DateField>
                                                    </Items>
                                                </ext:Container>
                                                <ext:Container
                                                    ID="cModificacion"
                                                    runat="server"
                                                    Layout="ColumnLayout">
                                                    <Defaults>
                                                        <ext:Parameter Name="AllowBlank" Value="true" Mode="Raw" />
                                                        <ext:Parameter Name="Width" Value="350" Mode="Raw" />
                                                        <ext:Parameter Name="LabelWidth" Value="100" Mode="Raw" />
                                                        <ext:Parameter Name="EnforceMaxLength" Value="true" Mode="Raw" />
                                                    </Defaults>
                                                    <Items>
                                                        <ext:TextField
                                                            ID="txtfUsuarioModificacion"
                                                            runat="server"
                                                            Editable="false"
                                                            MaxLength="50"
                                                            FieldLabel="Usuario modificación"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            Disabled="true">
                                                        </ext:TextField>
                                                        <ext:DateField
                                                            ID="dfFechaModificacion"
                                                            runat="server"
                                                            StyleSpec="margin-right: 6px; margin-bottom: 6px;"
                                                            Disabled="true"
                                                            FieldLabel="Fecha modificación"
                                                            Vtype="daterange">
                                                        </ext:DateField>
                                                    </Items>
                                                </ext:Container>
                                            </Items>
                                        </ext:FieldSet>
                                    </Items>
                                </ext:Panel>
                                <%--Terminado--%>
                                <ext:Panel 
                                    ID="pImagenesAvanceProyecto" 
                                    runat="server" 
                                    Title="Imagenes Avance Proyecto" 
                                    BodyPadding="5" 
                                    HideMode="Display"
                                    AutoScroll="true">
                                    <Items>
                                        <ext:FieldSet
                                            ID="fsEstatus" 
                                            runat="server" 
                                            Height="400" 
                                            Title="Administración de la galería de avances del proyecto"
                                            DefaultAnchor="100%">
                                            <Items>
                                                <ext:GridPanel
                                                    ID="gpAdministracionAvance"
                                                    runat="server"
                                                    Width="720"
                                                    Height="360"
                                                    Title="GALERÍA DE AVANCES PROYECTO"
                                                    StyleSpec="margin:0 auto; margin-top: 20px;"
                                                    EnableColumnHide="false"
                                                    EnableColumnMove="false"
                                                    Header="true"
                                                    TitleAlign="Left">
                                                    <TopBar>
                                                        <ext:Toolbar ID="tbAdministracionAvance" runat="server">
                                                            <Items>
                                                                <ext:ImageButton
                                                                    ID="imgbtnNuevoAvance"
                                                                    runat="server"
                                                                    ImageUrl="assets/img/controles/new.png"
                                                                    DisabledImageUrl=""
                                                                    OverImageUrl=""
                                                                    PressedImageUrl=""
                                                                    ToolTip="Nueva imagen de avance"
                                                                    Height="50"
                                                                    Width="50">
                                                                    <Listeners>
                                                                        <Click Fn="imgbtnNuevoAvance_Click" />
                                                                    </Listeners>
                                                                </ext:ImageButton>
                                                                <ext:ImageButton
                                                                    ID="imgbtnEditarAvance"
                                                                    runat="server"
                                                                    ImageUrl="assets/img/controles/edit.png"
                                                                    DisabledImageUrl=""
                                                                    OverImageUrl=""
                                                                    PressedImageUrl=""
                                                                    ToolTip="Editar imagen de avance"
                                                                    Height="50"
                                                                    Width="50">
                                                                    <Listeners>
                                                                        <Click Fn="imgbtnEditarAvance_Click" />
                                                                    </Listeners>
                                                                </ext:ImageButton>
                                                                <ext:ImageButton
                                                                    ID="imgbtnBorrarAvance"
                                                                    runat="server"
                                                                    ImageUrl="assets/img/controles/delete.png"
                                                                    DisabledImageUrl=""
                                                                    OverImageUrl=""
                                                                    PressedImageUrl=""
                                                                    ToolTip="Borrar imagen de avance"
                                                                    Height="50"
                                                                    Width="50">
                                                                    <Listeners>
                                                                        <Click Fn="imgbtnBorrarAvance_Click" />
                                                                    </Listeners>
                                                                </ext:ImageButton>
                                                                <ext:ToolbarSpacer ID="tbsAdministracionAvance" runat="server" Width="190">
                                                                </ext:ToolbarSpacer>
                                                                <ext:ImageButton
                                                                    ID="imgbtnMultiplesImagenesFotos"
                                                                    runat="server"
                                                                    ImageUrl="assets/img/controles/GaleriaNormal.png"
                                                                    DisabledImageUrl=""
                                                                    OverImageUrl=""
                                                                    PressedImageUrl=""
                                                                    ToolTip="Agregar multiples fotos"
                                                                    Height="50"
                                                                    Width="50">
                                                                    <Listeners>
                                                                        <Click Fn="imgbtnMultiplesImagenesFotos_Click" />
                                                                    </Listeners>
                                                                </ext:ImageButton>
                                                                <ext:ImageButton
                                                                    ID="imgbtnActualizarAvance"
                                                                    runat="server"
                                                                    ImageUrl="assets/img/controles/update.png"
                                                                    DisabledImageUrl=""
                                                                    OverImageUrl=""
                                                                    PressedImageUrl=""
                                                                    ToolTip="Actualizar imagenes de avance"
                                                                    Height="50"
                                                                    Width="50">
                                                                    <Listeners>
                                                                        <Click Handler="#{sImagenesAvancesProyectos}.reload(); App.imgbtnEditarAvance.setDisabled(true); App.imgbtnBorrarAvance.setDisabled(true);" />
                                                                    </Listeners>
                                                                </ext:ImageButton>
                                                                <ext:TextField 
                                                                    ID="txtBuscarAvance"
                                                                    runat="server"
                                                                    AutoFocus="true"
                                                                    EmptyText="Buscar"
                                                                    Width="200">
                                                                    <Listeners>
                                                                        <Change Fn="txtBuscarAvance_Change" />
                                                                    </Listeners>
                                                                    <RightButtons>
                                                                        <ext:ImageButton
                                                                            ID="imgbtnActualizarProyectoAvance"
                                                                            runat="server"
                                                                            ImageUrl="assets/img/controles/search.png"
                                                                            OverImageUrl=""
                                                                            PressedImageUrl=""
                                                                            Height="22px"
                                                                            Width="22px">
                                                                        </ext:ImageButton>
                                                                    </RightButtons>
                                                                </ext:TextField>
                                                            </Items>
                                                        </ext:Toolbar>
                                                    </TopBar>
                                                    <Store>
                                                        <ext:Store
                                                            ID="sImagenesAvancesProyectos"
                                                            runat="server">
                                                            <Model>
                                                                <ext:Model 
                                                                    ID="mImagenesAvancesProyectos"
                                                                    runat="server" 
                                                                    IDProperty="ID">
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
                                                    </Store>
                                                    <ColumnModel 
                                                        ID="cmAdministracionAvance" 
                                                        runat="server">
                                                        <Columns>
                                                            <ext:Column
                                                                ID="cID" 
                                                                runat="server"
                                                                Text="ID"
                                                                Width="80"
                                                                DataIndex="ID"> 
                                                            </ext:Column>
                                                            <ext:Column
                                                                ID="cProyecto" 
                                                                runat="server"
                                                                Text="PROYECTO"
                                                                Width="150"
                                                                DataIndex="Proyecto"> 
                                                            </ext:Column>
                                                            <ext:Column
                                                                ID="cAvance" 
                                                                runat="server"
                                                                Text="AVANCE"
                                                                Width="150"
                                                                DataIndex="Avance"> 
                                                            </ext:Column>
                                                            <ext:Column
                                                                ID="cNombre" 
                                                                runat="server"
                                                                Text="NOMBRE"
                                                                Width="240"
                                                                DataIndex="Nombre"> 
                                                            </ext:Column>
                                                            <ext:CommandColumn
                                                                ID="ccFotos"
                                                                Text="FOTOS"
                                                                Align="Center"
                                                                runat="server"
                                                                Width="80">
                                                                <Commands>
                                                                    <ext:GridCommand
                                                                        Icon="FolderPicture"
                                                                        CommandName="cnVerFotos">
                                                                        <ToolTip Text="Ver Fotos" />
                                                                    </ext:GridCommand>
                                                                </Commands>
                                                                <Listeners>
                                                                    <Command Fn="ccFotos_Command" />
                                                                </Listeners>
                                                            </ext:CommandColumn>
                                                        </Columns>
                                                    </ColumnModel>
                                                    <SelectionModel>
                                                        <ext:RowSelectionModel
                                                            ID="rsmAdministracionAvance"
                                                            runat="server">
                                                        </ext:RowSelectionModel>
                                                    </SelectionModel>
                                                    <View>
                                                        <ext:GridView
                                                            ID="gvAdministracionAvance"
                                                            runat="server"
                                                            StripeRows="true">
                                                        </ext:GridView>
                                                    </View>
                                                </ext:GridPanel>
                                                <%--Fin Detalle--%>
                                            </Items>
                                        </ext:FieldSet>
                                    </Items>
                                </ext:Panel>
                            </Items>
                        </ext:TabPanel>
                    </Items>
                    <Listeners>
                        <ValidityChange Handler="this.dockedItems.get(0).setStatus({
                                                        text : valid ? 'La información esta completa/correcta' : 'Existe información incompleta/incorrecta', 
                                                        iconCls: valid ? 'icon-accept' : 'icon-exclamation'
                                                    });
                                                    #{imgbtnGuardar}.setDisabled(!valid);" />
                    </Listeners>
                    <BottomBar>
                        <ext:StatusBar ID="sbProyecto" runat="server" Cls="x-colorToolbar" Text="Sin validar información" />
                    </BottomBar>
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
                                <Click OnEvent="imgbtnGuardar_Click" Success="imgbtnGuardar_Click_Success">
                                    <EventMask ShowMask="true" Msg="Guardardo información..." MinDelay="1000" />
                                    <ExtraParams>
                                        <ext:Parameter Name="registro" Value="Ext.encode(this.up('form').getForm().getValues(false, false, false, true))" Mode="Raw" />
                                        <ext:Parameter Name="usuario" Value="Ext.encode(window.parent.App.sUsuario.getRecordsValues())" Mode="Raw" />
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
                                <Click Handler="window.parent.App.wEmergente.hide();" />
                            </Listeners>
                        </ext:ImageButton>
                    </Buttons>
                </ext:FormPanel>
            </Items>
        </ext:Panel>
    </form>
</body>
</html>
