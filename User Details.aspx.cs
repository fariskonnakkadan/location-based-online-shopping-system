using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User_Details : System.Web.UI.Page
{
    Class1 c = new Class1();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            qry = "select * from User_Registration";
            DataTable dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
}