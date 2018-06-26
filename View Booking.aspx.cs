using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class View_Booking : System.Web.UI.Page
{
    Class1 c = new Class1();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            qry = "select Shop_Id from Retail_Registration";
            DataTable dt = new DataTable();
            dt = c.ret(qry);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Shop_Id";
            DropDownList1.DataValueField = "Shop_Id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select", "-1"));

            qry = "select * from Booking_Table";
            dt = new DataTable();
            dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        qry = "select * from Booking_Table where Shop_Id="+DropDownList1.SelectedItem.Text+"";
       DataTable  dt = new DataTable();
        dt = c.ret(qry);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
    }
}