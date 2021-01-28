<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormaInversion.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.FormaInversion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../css/login2.css" />
    <link rel="stylesheet" href="../css/customControls2.css" />
    <script type='text/javascript' src="js/inversiones.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmInversion" runat="server" HideInDesign="true"/>

        <ext:Store
            ID="sInversion"
            runat="server">
            <Model>
                <ext:Model
                    ID="mInversion"
                    runat="server"
                    IDProperty="ID">
                    <Fields>
                        <ext:ModelField Name="ID" Type="String" />
                        <ext:ModelField Name="Usuario" Type="String" />
                        <ext:ModelField Name="Proyecto" Type="String" />
                        <ext:ModelField Name="Fecha" Type="Date" />
                        <ext:ModelField Name="Monto" Type="Float" />
                        <ext:ModelField Name="Porcentaje" Type="Float" />
                        <ext:ModelField Name="Tipo" Type="String" />
                        <ext:ModelField Name="Estatus" Type="String" />
                        <ext:ModelField Name="UsuarioAlta" Type="String" />
                        <ext:ModelField Name="FechaAlta" Type="Date" />
                        <ext:ModelField Name="UsuarioModificacion" Type="String" />
                        <ext:ModelField Name="FechaModificacion" Type="Date" />
                        <ext:ModelField Name="RUsuario" Type="Object" />
                        <ext:ModelField Name="RProyecto" Type="Object" />
                    </Fields>
                </ext:Model>
            </Model>
            <Listeners>
                <Load Fn="sInversion_Load" />
                <Add Fn="sInversion_Add" />
            </Listeners>
        </ext:Store>

        <ext:FormPanel 
            ID="fpInversion"
            runat="server"
            AutoScroll="true"
            BodyPadding="10"
            ButtonAlign="Right"
            Cls="xFormPanelCaja"
            DefaultButton="imgbtnGuardar"
            Height="438"
            MonitorResize="true"
            Width="780">
            <Items>
                <ext:FieldSet
                    ID="fsDatosGenerales"
                    runat="server"
                    Title="Datos Generales">
                    <Items>
                        <ext:Container
                            ID="cInversion"
                            runat="server"
                            AnchorHorizontal="100%"
                            Layout="HBoxLayout">
                            <Items>
                                <ext:TextField
                                    ID="txtfID"
                                    runat="server"
                                    Width="360"
                                    Margins="5 3 5 0"
                                    FieldLabel="Número Inversion"
                                    LabelWidth="160"
                                    Disabled="true">
                                </ext:TextField>
                            </Items>
                        </ext:Container>
                        <ext:Container
                            ID="cUsuario"
                            runat="server"
                            AnchorHorizontal="100%"
                            Layout="HBoxLayout">                                       
                            <Items>
                                <ext:ComboBox
                                    ID="cmbUsuario" 
                                    runat="server"
                                    AutoFocus="true"
                                    FieldLabel="Inversionista"
                                    LabelWidth="160"
                                    Width="360"
                                    Margins="5 3 5 0"
                                    Disabled="false"
                                    ValueField="ID"
                                    DisplayField="ID"
                                    QueryMode="Local"
                                    TypeAhead="true"
                                    MatchFieldWidth="false"
                                    AllowBlank="false"
                                    PageSize="10"
                                    ValueNotFoundText="Elemento no encontrado"
                                    ForceSelection="true">
                                    <Store>
                                        <ext:Store
                                            ID="sUsuarios"
                                            runat="server">
                                            <Model>
                                                <ext:Model
                                                    ID="mUsuarios"
                                                    runat="server"
                                                    IDProperty="ID">
                                                    <Fields>
                                                        <ext:ModelField Name="ID" Type="String" />
                                                        <ext:ModelField Name="Nombre" Type="String" />
                                                        <ext:ModelField Name="APaterno" Type="String" />
                                                        <ext:ModelField Name="AMaterno" Type="String" />
                                                        <ext:ModelField Name="NombreCompleto" Type="String">
                                                            <Convert Fn="NombreCompleto_Convert" />
                                                        </ext:ModelField>
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
                                        </ext:Store>
                                    </Store>
                                    <ListConfig ID="lcUsuarios" runat="server" Width="330">
                                        <ItemTpl ID="itUsuarios" runat="server">
                                            <Html>
                                                <div class="search-item">
							                        <h3>{ID}</h3>
                                                    <span>{NombreCompleto}</span>
						                        </div>
                                            </Html>
                                        </ItemTpl>
                                    </ListConfig>
                                    <Listeners>
                                        <Select Fn="cmbUsuario_Select" />
                                        <Change Fn="cmbUsuario_Change" />
                                    </Listeners>
                                </ext:ComboBox>
                                <ext:TextField
                                    ID="txtfNombreUsuario" 
                                    runat="server" 
                                    Width="340" 
                                    Margins="5 3 5 0"
                                    Disabled="true">
                                </ext:TextField>
                            </Items>
                        </ext:Container>
                        <ext:Container
                            ID="cProyecto"
                            runat="server"
                            AnchorHorizontal="100%"
                            Layout="HBoxLayout">                                       
                            <Items>
                                <ext:ComboBox
                                    ID="cmbProyecto" 
                                    runat="server"
                                    FieldLabel="Proyecto"
                                    LabelWidth="160"
                                    Width="360"
                                    Margins="5 3 5 0"
                                    Disabled="false"
                                    ValueField="ID"
                                    DisplayField="ID"
                                    QueryMode="Local"
                                    TypeAhead="true"
                                    MatchFieldWidth="false"
                                    AllowBlank="false"
                                    PageSize="10"
                                    ValueNotFoundText="Elemento no encontrado"
                                    ForceSelection="true">
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
                                                    </Fields>
                                                </ext:Model>
                                            </Model>
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
                                    Width="340" 
                                    Margins="5 3 5 0"
                                    Disabled="true">
                                </ext:TextField>
                            </Items>
                        </ext:Container>
                        <ext:Container 
                            ID="cFechaMonto" 
                            runat="server"
                            AnchorHorizontal="100%"
                            Layout="HBoxLayout">
                            <Items>
                                <ext:DateField 
                                    ID="dfFecha" 
                                    runat="server"
                                    FieldLabel="Fecha"
                                    LabelWidth="160"
                                    Width="360"
                                    AllowBlank="false"
                                    Margins="5 3 5 0">
                                    <PickerOptions
                                        Cls="my-date-picker"
                                        ID="poFecha"
                                        runat="server">
                                    </PickerOptions>
                                </ext:DateField>
                                <ext:NumberField
                                    ID="nfValorInversion" 
                                    runat="server" 
                                    Width="340"
                                    LabelWidth="110"
                                    Margins="5 3 5 0"
                                    FieldLabel="Valor inversión"
                                    AllowDecimals="true"
                                    AllowExponential="false"
                                    DecimalPrecision="2"
                                    DecimalSeparator="."
                                    MaxLength="9"
                                    EnforceMaxLength="true"
                                    MaxValue="2000000"
                                    MinValue="1000"
                                    Step="1"
                                    AllowBlank="false">
                                </ext:NumberField>
                            </Items>
                        </ext:Container>
                        <ext:Container 
                            ID="cPorcentaje" 
                            runat="server"
                            AnchorHorizontal="100%"
                            Layout="HBoxLayout">
                            <Items>
                                <ext:NumberField
                                    ID="nfPorcentaje" 
                                    runat="server" 
                                    Width="360"
                                    LabelWidth="160"
                                    Margins="5 3 5 0"
                                    FieldLabel="Porcentaje utilidad"
                                    AllowDecimals="true"
                                    AllowExponential="false"
                                    DecimalPrecision="2"
                                    DecimalSeparator="."
                                    MaxLength="9"
                                    EnforceMaxLength="true"
                                    MaxValue="100"
                                    MinValue="0"
                                    Step="0.1"
                                    AllowBlank="false">
                                </ext:NumberField>
                            </Items>
                        </ext:Container>
                        <ext:Container 
                            ID="cTipoInversion" 
                            runat="server"
                            AnchorHorizontal="100%"
                            Layout="HBoxLayout">
                            <Items>
                                <ext:ComboBox
                                    ID="cmbTipoInversion" 
                                    runat="server"
                                    FieldLabel="Tipo inversión"
                                    Width="360" 
                                    Margins="5 3 5 0"
                                    Editable="false"
                                    AllowBlank="false"
                                    LabelWidth="160">
                                    <Items>
                                        <ext:ListItem Index="0" Text="A" Value="A" />
                                        <ext:ListItem Index="1" Text="B" Value="B" />
                                    </Items>
                                </ext:ComboBox>
                                <ext:ComboBox
                                    ID="cmbEstatus"
                                    runat="server"
                                    AllowBlank="false"
                                    Editable="false"
                                    LabelWidth="110"
                                    Width="340"
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
                                <ext:Parameter Name="LabelWidth" Value="150" Mode="Raw" />
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
                                <ext:Parameter Name="LabelWidth" Value="150" Mode="Raw" />
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
            <Listeners>
                <ValidityChange Handler="this.dockedItems.get(0).setStatus({
                                                text : valid ? 'La información esta completa/correcta' : 'Existe información incompleta/incorrecta', 
                                                iconCls: valid ? 'icon-accept' : 'icon-exclamation'
                                            });
                                            #{imgbtnGuardar}.setDisabled(!valid);" />
            </Listeners>
            <BottomBar>
                <ext:StatusBar ID="sbInversion" runat="server" Cls="x-colorToolbar" Text="Sin validar información" />
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
                            <EventMask ShowMask="true" Msg="Registrando información..." MinDelay="1000" />
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
    </form>
</body>
</html>
