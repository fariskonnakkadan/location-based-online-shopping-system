using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Class1 c = new Class1();
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            s = "select max(Shop_Id) from Retail_Registration";
            TextBox1.Text = c.maxid(s).ToString();
        }
       
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = "insert into Retail_Registration values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "',"+TextBox8.Text+","+TextBox9.Text+",'pending','"+TextBox11.Text+"','"+TextBox12.Text+"')";
        c.nonret(s);

        s = "insert into Login values('" + TextBox6.Text + "','" + TextBox10.Text + "','retail')";
        c.nonret(s);

        

        s = "select max(Shop_Id) from Retail_Registration";
        TextBox1.Text = c.maxid(s).ToString();

        Response.Write("<script>alert('Registered')</script>");

        TextBox10.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = " ";
        TextBox7.Text="";
        TextBox8.Text="";
        TextBox9.Text="";
      
       
    }
}