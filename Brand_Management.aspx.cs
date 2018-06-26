using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Brand_Management : System.Web.UI.Page
{
    Class1 c = new Class1();
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            s = "select Category_Id,Cat_name from Category";
            DataTable dt= c.ret(s);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Cat_name";
            DropDownList1.DataValueField = "Category_Id";
            DropDownList1.DataBind();

            DropDownList1.Items.Insert(0, new ListItem("--Select--", "-1"));

            s = "SELECT Category.Cat_name, Brand.Brand_Id, Brand.Name, Brand.Description FROM Brand INNER JOIN Category ON Brand.Category_Id = Category.Category_Id";
            dt=c.ret(s);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();



            s = "select max(Brand_Id) from Brand";
            TextBox1.Text = c.maxid(s).ToString();



            MultiView1.SetActiveView(View1);
        }
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        s = "select max(Brand_Id) from Brand";
        TextBox1.Text = c.maxid(s).ToString();
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.SelectedIndex = -1;
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Visible = true;
        }

        else
        {

            if (Button1.Text == "UPDATE")
            {
                s = "update Brand set Description='" + TextBox3.Text + "',Name='" + TextBox2.Text + "' where Brand_Id=" + TextBox1.Text + "";
                c.nonret(s);
            }
            else
            {
                s = "insert into Brand values(" + TextBox1.Text + ",'" + TextBox3.Text + "','" + TextBox2.Text + "'," + DropDownList1.SelectedItem.Value + ")";
                c.nonret(s);
            }

            s = "SELECT Category.Cat_name, Brand.Brand_Id, Brand.Name , Brand.Description FROM Brand INNER JOIN Category ON Brand.Category_Id = Category.Category_Id";
            DataTable dt = c.ret(s);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            DropDownList1.SelectedIndex = 0;
            MultiView1.SetActiveView(View1);


        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            s = "delete from Brand where Brand_Id=" + e.Item.Cells[1].Text + "";
            c.nonret(s);
            s = "SELECT Category.Cat_name, Brand.Brand_Id, Brand.Name , Brand.Description FROM Brand INNER JOIN Category ON Brand.Category_Id = Category.Category_Id";
            DataTable dt = c.ret(s);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            DropDownList1.SelectedIndex = 0;
            MultiView1.SetActiveView(View1);


           
        }

        if (e.CommandName == "Edit")
        {
            string s = e.Item.Cells[0].Text;
            DropDownList1.SelectedItem.Text = s;
            TextBox1.Text = e.Item.Cells[1].Text.ToString();
            TextBox2.Text = e.Item.Cells[2].Text.ToString();
            TextBox3.Text = e.Item.Cells[3].Text.ToString();
            Button1.Text = ("UPDATE");


            MultiView1.SetActiveView(View2);
        }
    }
}