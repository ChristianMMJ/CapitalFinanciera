using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CAPITALFINANCIERAUSA_WEBPAGE
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strHost = Request.ServerVariables["HTTP_HOST"];
            string strUrl = Request.ServerVariables["URL"];
            string strLink = strHost + strUrl;

            /*if (strLink == "capitalfinancierausa.com/contacto" || strLink == "localhost/CAPITALFINANCIERAUSA_WEBPAGE/contacto.aspx" || strLink == "www.osef.com.mx/contacto.aspx")
                dHeader.Style.Add("display", "none");

            if (strLink == "capitalfinancierausa.com/index.aspx" || strLink == "localhost/CAPITALFINANCIERAUSA_WEBPAGE/index.aspx" || strLink == "www.osef.com.mx/index.aspx")
                liFinance_Navigation_Index.Attributes["class"] = "current-page-item";
            else
                liFinance_Navigation_Index.Attributes["class"] = "";*/
        }
    }
}