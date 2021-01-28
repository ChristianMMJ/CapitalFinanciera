<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.Proyectos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../css/login2.css" />
    <link rel="Stylesheet" href="../css/customControls2.css" />
    <script type="text/javascript" src="../js/libs/jquery-2.0.3.min.js"></script>
    <script type='text/javascript' src="js/menu-usuario.js"></script>
    <script type='text/javascript' src="js/proyectos.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmProyectos" runat="server" HideInDesign="true" />

        <ext:GridPanel
            ID="gpProyectos"
            runat="server"
            Height="420"
            Width="1000"
            Title="PROYECTOS"
            EnableColumnHide="false"
            EnableColumnMove="false"
            StyleSpec="margin:0 auto; margin-top: 20px;"  
            Header="true"
            TitleAlign="Left">
            <TopBar>
                <ext:Toolbar ID="tbProyectos" runat="server">
                    <Items>
                        <ext:ImageButton
                            ID="imgbtnNuevo"
                            runat="server"
                            ImageUrl="assets/img/controles/new.png"
                            DisabledImageUrl=""
                            OverImageUrl=""
                            PressedImageUrl=""
                            ToolTip="Nuevo proyecto"
                            Height="50"
                            Width="50">
                            <Listeners>
                                <Click Fn="imgbtnNuevo_Click" />
                            </Listeners>
                        </ext:ImageButton>
                        <ext:ImageButton
                            ID="imgbtnEditar"
                            runat="server"
                            ImageUrl="assets/img/controles/edit.png"
                            DisabledImageUrl=""
                            OverImageUrl=""
                            PressedImageUrl=""
                            ToolTip="Editar proyecto"
                            Height="50"
                            Width="50"
                            Disabled="true">
                            <Listeners>
                                <Click Fn="imgbtnEditar_Click" />
                            </Listeners>
                        </ext:ImageButton>
                        <ext:ImageButton
                            ID="imgbtnBorrar"
                            runat="server"
                            ImageUrl="assets/img/controles/delete.png"
                            DisabledImageUrl=""
                            OverImageUrl=""
                            PressedImageUrl=""
                            ToolTip="Borrar proyecto"
                            Height="50"
                            Width="50"
                            Disabled="true">
                            <Listeners>
                                <Click Fn="imgbtnBorrar_Click" />
                            </Listeners>
                        </ext:ImageButton>
                        <ext:ToolbarSpacer ID="tbsProyecto" runat="server" Width="540">
                        </ext:ToolbarSpacer>
                        <ext:ImageButton
                            ID="imgbtnActualizar"
                            runat="server"
                            ImageUrl="assets/img/controles/update.png"
                            DisabledImageUrl=""
                            OverImageUrl=""
                            PressedImageUrl=""
                            ToolTip="Actualizar proyectos"
                            Height="50"
                            Width="50">
                            <Listeners>
                                <Click Handler="#{sProyectos}.reload(); App.imgbtnEditar.setDisabled(true); App.imgbtnBorrar.setDisabled(true);" />
                            </Listeners>
                        </ext:ImageButton>
                        <ext:TextField 
                            ID="txtBuscar"
                            runat="server"
                            AutoFocus="true"
                            EmptyText="Buscar"
                            Width="200">
                            <Listeners>
                                <Change Fn="txtBuscar_Change" />
                            </Listeners>
                            <RightButtons>
                                <ext:ImageButton
                                    ID="imgbtnActualizarProyectos"
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
                    ID="sProyectos"
                    runat="server"
                    OnReadData="OnReadData_sProyectos">
                    <Model>
                        <ext:Model
                            ID="mProyectos"
                            runat="server"
                            Name="Proyectos"
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
                    <Sorters>
                        <ext:DataSorter Property="ID" Direction="ASC" />
                    </Sorters>
                    <Listeners>
                        <DataChanged Fn="sProyectos_DataChanged" />
                    </Listeners>
                </ext:Store>
            </Store>
            <ColumnModel>
                <Columns>
                    <ext:Column 
                        ID="cID"
                        runat="server"
                        Text="ID"
                        Align="Left"
                        Width="100"
                        DataIndex="ID" />
                    <ext:Column
                        ID="cNombre"
                        runat="server"
                        Text="NOMBRE"
                        Align="Left"
                        Width="200"
                        DataIndex="Nombre" />
                    <ext:Column
                        ID="cDireccion"
                        runat="server"
                        Text="DIRECCIÓN"
                        Align="Left"
                        Width="250"
                        DataIndex="Direccion" />
                    <ext:NumberColumn
                        ID="ncMonto"
                        runat="server"
                        Text="MONTO"
                        Align="Center"
                        Width="130"
                        DataIndex="Monto">
                        <Renderer Fn="ncMonetario_Renderer" />
                    </ext:NumberColumn>
                    <ext:Column
                        ID="cAvances"
                        runat="server"
                        Text="AVANCES"
                        Align="Left"
                        Width="150"
                        DataIndex="Avances" />
                    <ext:Column
                        ID="cEstatus"
                        runat="server"
                        Text="ESTATUS"
                        Align="Left"
                        Width="120"
                        DataIndex="Estatus" />
                </Columns>
            </ColumnModel>
            <Listeners>
                <ItemClick Fn="gpProyectos_ItemClick" />
            </Listeners>
            <SelectionModel>
                <ext:RowSelectionModel
                    ID="rsmProyectos"
                    runat="server">
                </ext:RowSelectionModel>
            </SelectionModel>
            <FooterBar>
                <ext:StatusBar
                    ID="sbProyectos"
                    runat="server"
                    Text=""
                    StatusAlign="Left">
                </ext:StatusBar>
            </FooterBar>
        </ext:GridPanel>

    </form>
</body>
</html>
