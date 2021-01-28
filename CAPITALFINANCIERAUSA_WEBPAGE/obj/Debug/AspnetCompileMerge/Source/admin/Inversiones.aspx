<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inversiones.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.Inversiones" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../css/login2.css" />
    <link rel="Stylesheet" href="../css/customControls2.css" />
    <script type="text/javascript" src="../js/libs/jquery-2.0.3.min.js"></script>
    <script type='text/javascript' src="js/menu-usuario.js"></script>
    <script type='text/javascript' src="js/inversiones.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmInversiones" runat="server" HideInDesign="true" />

        <ext:GridPanel
            ID="gpInversiones"
            runat="server"
            Height="420"
            Width="1000"
            Title="INVERSIONES"
            EnableColumnHide="false"
            EnableColumnMove="false"
            StyleSpec="margin:0 auto; margin-top: 20px;"  
            Header="true"
            TitleAlign="Left">
            <TopBar>
                <ext:Toolbar ID="tbInversiones" runat="server">
                    <Items>
                        <ext:ImageButton
                            ID="imgbtnNuevo"
                            runat="server"
                            ImageUrl="assets/img/controles/new.png"
                            DisabledImageUrl=""
                            OverImageUrl=""
                            PressedImageUrl=""
                            ToolTip="Nueva inversion"
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
                            ToolTip="Editar inversion"
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
                            ToolTip="Borrar inversion"
                            Height="50"
                            Width="50"
                            Disabled="true">
                            <Listeners>
                                <Click Fn="imgbtnBorrar_Click" />
                            </Listeners>
                        </ext:ImageButton>
                        <ext:ToolbarSpacer ID="tbsInversion" runat="server" Width="540">
                        </ext:ToolbarSpacer>
                        <ext:ImageButton
                            ID="imgbtnActualizar"
                            runat="server"
                            ImageUrl="assets/img/controles/update.png"
                            DisabledImageUrl=""
                            OverImageUrl=""
                            PressedImageUrl=""
                            ToolTip="Actualizar inversiones"
                            Height="50"
                            Width="50">
                            <Listeners>
                                <Click Handler="#{sInversiones}.reload(); App.imgbtnEditar.setDisabled(true); App.imgbtnBorrar.setDisabled(true);" />
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
                                    ID="imgbtnBuscarInversiones"
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
                    ID="sInversiones"
                    runat="server"
                    OnReadData="OnReadData_sInversiones">
                    <Model>
                        <ext:Model
                            ID="mInversiones"
                            runat="server"
                            Name="Inversiones"
                            IDProperty="ID">
                            <Fields>
                                <ext:ModelField Name="ID" Type="String" />
                                <ext:ModelField Name="Usuario" Type="String" />
                                <ext:ModelField Name="Proyecto" Type="String" />
                                <ext:ModelField Name="Fecha" Type="Date" />
                                <ext:ModelField Name="Monto" Type="Float" />
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
                    <Sorters>
                        <ext:DataSorter Property="ID" Direction="ASC" />
                    </Sorters>
                    <Listeners>
                        <DataChanged Fn="sInversiones_DataChanged" />
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
                        ID="cUsuario"
                        runat="server"
                        Text="NOMBRE"
                        Align="Left"
                        Width="200"
                        DataIndex="Usuario" />
                    <ext:Column
                        ID="cProyecto"
                        runat="server"
                        Text="PROYECTO"
                        Align="Left"
                        Width="250"
                        DataIndex="Proyecto" />
                    <ext:DateColumn
                        ID="dcFecha"
                        runat="server"
                        Text="FECHA"
                        Align="Left"
                        Width="150"
                        DataIndex="Fecha"
                        Format="dd/MM/yyyy" />
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
                        ID="cEstatus"
                        runat="server"
                        Text="ESTATUS"
                        Align="Left"
                        Width="120"
                        DataIndex="Estatus" />
                </Columns>
            </ColumnModel>
            <Listeners>
                <ItemClick Fn="gpInversiones_ItemClick" />
            </Listeners>
            <SelectionModel>
                <ext:RowSelectionModel
                    ID="rsmInversiones"
                    runat="server">
                </ext:RowSelectionModel>
            </SelectionModel>
            <FooterBar>
                <ext:StatusBar
                    ID="sbInversiones"
                    runat="server"
                    Text=""
                    StatusAlign="Left">
                </ext:StatusBar>
            </FooterBar>
        </ext:GridPanel>

    </form>
</body>
</html>
