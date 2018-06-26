using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewRetail : System.Web.UI.Page
{
    string qry;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            qry = "select * from Retail_Registration where Status='pending'";
            DataTable dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "App")
        { 
            qry="update Retail_Registration set Status='appoved' where Shop_Id="+e.Item.Cells[0].Text.ToString()+"";
                c.nonret(qry);

            qry = "select * from Retail_Registration where Status='pending'";
        DataTable dt = c.ret(qry);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        }
    }
}