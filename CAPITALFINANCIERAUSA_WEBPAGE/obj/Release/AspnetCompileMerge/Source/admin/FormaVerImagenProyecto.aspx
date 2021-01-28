<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormaVerImagenProyecto.aspx.cs" Inherits="CAPITALFINANCIERAUSA_WEBPAGE.admin.FormaSubirImagenesProyecto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link rel="stylesheet" href="../css/login2.css" />
    <link rel="stylesheet" href="../css/customControls2.css" />--%>
    <script type='text/javascript' src="js/proyectos.js"></script>
    <script type='text/javascript'>
        var resize = function (image, factor) {
            if (!factor || !image.complete) {
                return;
            }

            var orgSize = image.getOriginalSize();

            factor = parseFloat(factor);
            image.setSize(parseInt(orgSize.width * factor), parseInt(orgSize.height * factor));
        };

        var newFactor = function (combo, dir) {
            var index = combo.store.indexOf(combo.valueModels[0]),
                count = combo.store.getCount();

            index += dir;

            if (index >= 0 && index < count) {
                combo.setValueAndFireSelect(combo.store.getAt(index).get(combo.valueField));
            }
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rmFormaVerImagenProyecto" runat="server" HideInDesign="true" />

        <ext:Viewport ID="Viewport1" runat="server" Layout="BorderLayout">
            <Items>
                <ext:Panel
                    ID="Panel1"
                    runat="server"
                    Border="false"
                    Region="North"
                    Height="40"
                    BodyPadding="10">
                    <Content>
                        <ext:Toolbar ID="Toolbar1" runat="server" Flat="true">
                            <Items>
                                <ext:Button ID="Button1" runat="server" Icon="MagifierZoomOut">
                                    <Listeners>
                                        <Click Handler="newFactor(#{SizesCombo}, -1);" />
                                    </Listeners>
                                </ext:Button>
                                <ext:ComboBox 
                                    ID="SizesCombo" 
                                    runat="server" 
                                    TriggerIcon="SimpleMagnify" 
                                    Editable="false">
                                    <Items>
                                        <ext:ListItem Text="1%" Value="0.01" />
                                        <ext:ListItem Text="5%" Value="0.05" />
                                        <ext:ListItem Text="10%" Value="0.1" />
                                        <ext:ListItem Text="12%" Value="0.12" />
                                        <ext:ListItem Text="16%" Value="0.16" />
                                        <ext:ListItem Text="25%" Value="0.25" />
                                        <ext:ListItem Text="33%" Value="0.33" />
                                        <ext:ListItem Text="50%" Value="0.5" />
                                        <ext:ListItem Text="66%" Value="0.66" />
                                        <ext:ListItem Text="100%" Value="1" />
                                        <ext:ListItem Text="200%" Value="2" />
                                        <ext:ListItem Text="300%" Value="3" />
                                        <ext:ListItem Text="400%" Value="4" />
                                        <ext:ListItem Text="500%" Value="5" />
                                        <ext:ListItem Text="600%" Value="6" />
                                        <ext:ListItem Text="700%" Value="7" />
                                        <ext:ListItem Text="800%" Value="8" />
                                        <ext:ListItem Text="1200%" Value="12" />
                                        <ext:ListItem Text="1600%" Value="16" />
                                        <ext:ListItem Text="2400%" Value="24" />
                                        <ext:ListItem Text="3200%" Value="32" />
                                    </Items>
                                    <SelectedItems>
                                        <ext:ListItem Value="1" />
                                    </SelectedItems>
                                    <Listeners>
                                        <Select Handler="resize(#{imgVerImagen}, records[0].get(this.valueField));" />
                                    </Listeners>
                                </ext:ComboBox>
                                <ext:Button ID="Button2" runat="server" Icon="MagnifierZoomIn">
                                    <Listeners>
                                        <Click Handler="newFactor(#{SizesCombo}, 1);" />
                                    </Listeners>
                                </ext:Button>
                            </Items>
                        </ext:Toolbar>
                    </Content>
                </ext:Panel>                
                <ext:Panel
                    ID="Panel2" 
                    runat="server" 
                    Border="false" 
                    AutoScroll="true" 
                    Region="Center" 
                    BodyPadding="10">
                    <Items>
                        <ext:Image 
                            ID="imgVerImagen" 
                            runat="server">
                            <ResizableConfig ID="ResizableConfig1" runat="server" PreserveRatio="true" HandlesSummary="s e se"/>
                            <Listeners>
                                <Complete Handler="newFactor(#{SizesCombo}, 0);" />
                            </Listeners>
                        </ext:Image> 
                    </Items>
                </ext:Panel>
            </Items>
        </ext:Viewport>
    </form>
</body>
</html>
