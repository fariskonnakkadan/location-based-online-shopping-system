using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Item_Registration : System.Web.UI.Page
{
    Class1 c =new Class1();
    string s;
    public void grid()
    {
        s = "SELECT Item_Registration.Item_Id, Item_Registration.Item_Name, Category.Cat_name, Brand.Name FROM Item_Registration INNER JOIN Category ON Item_Registration.Category_Id = Category.Category_Id INNER JOIN Brand ON Item_Registration.Brand_Id = Brand.Brand_Id";
        DataTable dt = c.ret(s);
        DataGrid1.DataSource = dt;
        DataGrid1.DataBind();
        MultiView1.SetActiveView(View1);
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            s = "select Category_Id,Cat_name from Category";
            DataTable dt2 = c.ret(s);
            DropDownList2.DataSource = dt2;
            DropDownList2.DataTextField = "Cat_name";
            DropDownList2.DataValueField = "Category_Id";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("--Select--", "-1"));

           

            grid();
        }
            


           
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Button2.Text == "Update")
        {
            s = "update Item_Registration set Item_Name='" + TextBox3.Text + "',Category_Id=" + DropDownList3.SelectedValue + ",Brand_Id=" + DropDownList3.SelectedValue + " where  Item_Id=" + TextBox1.Text + "";
            c.nonret(s);
        }
        else
        {
            s = "insert into Item_Registration values(" + TextBox1.Text + ",'" + TextBox3.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')";
            c.nonret(s);
        }
        grid();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //FileUpload1.SaveAs(Server.MapPath("~//Photo//" + FileUpload1.FileName));
        //Session["pic_path"] = "~//Photo//" + FileUpload1.FileName;
        //Image1.ImageUrl = "~//Photo//" + FileUpload1.FileName;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = "select max(Item_Id) from Item_Registration";
        TextBox1.Text = c.maxid(s).ToString();
        
        TextBox3.Text = "";
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        MultiView1.SetActiveView(View2);
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            s = "SELECT Brand.Brand_Id, Brand.Name FROM Brand INNER JOIN Category ON Brand.Category_Id = Category.Category_Id where Category.Cat_name='" + e.Item.Cells[2].Text.ToString() + "'";
            DataTable dt3 = c.ret(s);
            DropDownList3.DataSource = dt3;
            DropDownList3.DataTextField = "Name";
            DropDownList3.DataValueField = "Brand_Id";
            DropDownList3.DataBind();
            //DropDownList3.Items.Insert(0, new ListItem("--Select--", "-1"));

            TextBox1.Text = e.Item.Cells[0].Text.ToString();
            TextBox3.Text = e.Item.Cells[1].Text.ToString();
            DropDownList2.SelectedItem.Text = e.Item.Cells[2].Text.ToString();

            DropDownList3.SelectedItem.Text = e.Item.Cells[3].Text.ToString();
            Button2.Text = "Update";
            MultiView1.SetActiveView(View2);
        }
        else
        {
            s = "delete from Item_Registration where Item_Id=" + e.Item.Cells[0].Text.ToString() + "";
            c.nonret(s);
            grid();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        s = "select Brand_Id, Name from Brand where Category_Id="+DropDownList2.Text+"";
        DataTable dt3 = c.ret(s);
        DropDownList3.DataSource = dt3;
        DropDownList3.DataTextField = "Name";
        DropDownList3.DataValueField = "Brand_Id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("--Select--", "-1"));
    }
}