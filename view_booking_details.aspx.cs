using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class view_booking_details : System.Web.UI.Page
{
    Class1 c = new Class1();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Visible = false;
            Button1.Visible = false;
            TextBox1.Visible = false;
            Label2.Visible = false;
            Button2.Visible = false;
            TextBox2.Visible = false;
            qry = "select * from Booking_Table where Shop_Id=" + Session["shopid"] + " ";
            DataTable dt = new DataTable();
            dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();

        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "up")
        {
            Label1.Visible = true;
            Button1.Visible = true;
            TextBox1.Visible = true;

            Session["bid"] = e.Item.Cells[0].Text.ToString();
        }
        else
        {
            Label2.Visible = true;
            Button2.Visible = true;
            TextBox2.Visible = true;
            Session["bid"] = e.Item.Cells[0].Text.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label3.Visible = true;
        }

        else
        {
            qry = "update Booking_Table set Status='" + TextBox1.Text + "' where Booking_Id=" + Session["bid"] + "";
            c.nonret(qry);
            Label1.Visible = false;
            Button1.Visible = false;
            TextBox1.Visible = false;
            qry = "select * from Booking_Table where Shop_Id=" + Session["shopid"] + " ";
            DataTable dt = new DataTable();
            dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            Label4.Visible = true;
        }
        else
        {

            qry = "update Booking_Table set Date_of_Delivery='" + TextBox2.Text + "' where Booking_Id=" + Session["bid"] + "";
            c.nonret(qry);
            Label2.Visible = false;
            Button2.Visible = false;
            TextBox2.Visible = false;
            qry = "select * from Booking_Table where Shop_Id=" + Session["shopid"] + " ";
            DataTable dt = new DataTable();
            dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
    }
}