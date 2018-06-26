using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Add_catogory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\inetpub\wwwroot\L-BOSS123\App_Data\mpoly.mdf;Integrated Security=True;User Instance=True");


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select max(Category_Id) from Category";
            con.Open();
            int id;
            try
            {
                id = Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1;
            }
            catch
            {
                id = 1;
            }
            finally
            {
                con.Close();
            }
            TextBox1.Text = id.ToString();


            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Category";
            SqlDataAdapter sa = new SqlDataAdapter();
            sa.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sa.Fill(dt);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();



            MultiView1.SetActiveView(View1);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select max(Category_Id) from Category";
        con.Open();
        int id;
        try
        {
            id = Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1;
        }
        catch
        {
            id = 1;
        }
        finally
        {
            con.Close();
        }
        TextBox1.Text = id.ToString();
        TextBox2.Text = "";
        TextBox3.Text = "";
        Button1.Text = "Submit";

        MultiView1.SetActiveView(View2);
    }
    Class1 db = new Class1();
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (Button1.Text == "UPDATE")
        {
            string s = "update category set Description='" + TextBox3.Text + "',Cat_name='" + TextBox2.Text + "' where Category_id=" + TextBox1.Text + "";
            db.nonret(s);
            string s1 = "select * from Category";
            DataTable dt = new DataTable();
            dt = db.ret(s1);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
        else
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Category values(" + TextBox1.Text + ",'" + TextBox3.Text + "','" + TextBox2.Text + "')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Category";
            SqlDataAdapter sa = new SqlDataAdapter();
            sa.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sa.Fill(dt);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
        MultiView1.SetActiveView(View1);
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    Class1 c = new Class1();
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            
            string s = "delete from Category where Category_Id=" + e.Item.Cells[0].Text + "";
            c.nonret(s);
            s = "SELECT * FROM Category";
            DataTable dt = c.ret(s);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
            
            MultiView1.SetActiveView(View1);



        }

        if (e.CommandName == "Edit")
        {
            string s = e.Item.Cells[0].Text;
            
            TextBox1.Text = e.Item.Cells[0].Text.ToString();
            TextBox2.Text = e.Item.Cells[1].Text.ToString();
            TextBox3.Text = e.Item.Cells[2].Text.ToString();
            Button1.Text = ("UPDATE");


            MultiView1.SetActiveView(View2);
        }

    }
}
