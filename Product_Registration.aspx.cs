using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Product_Registration : System.Web.UI.Page
{
    Class1 c = new Class1();
    string s;
    string qry;
    DataTable dt = new DataTable();

    public void grid()
    {
        s = "SELECT product_reg.Product_Id, product_reg.Product_Name, Category.Cat_name, Brand.Name, Item_Registration.Item_Name, product_reg.Price, product_reg.Quantity FROM product_reg INNER JOIN Category ON product_reg.Cat_id = Category.Category_Id INNER JOIN Brand ON product_reg.Brand_id = Brand.Brand_Id INNER JOIN Item_Registration ON product_reg.Item_id = Item_Registration.Item_Id and product_reg.Shop_Id="+Session["shopid"]+"";
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
            DropDownList1.DataSource = dt2;
            DropDownList1.DataTextField = "Cat_name";
            DropDownList1.DataValueField = "Category_Id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select--", "-1"));



            grid();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        qry = "select max(Product_Id) from product_reg";
        TextBox1.Text = c.maxid(qry).ToString();

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        DropDownList3.SelectedIndex = -1;
        MultiView1.SetActiveView(View2);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~//Image//" + FileUpload1.FileName));
        Session["img"] = "~//Image//" + FileUpload1.FileName;
        Image1.ImageUrl = "~//Image//" + FileUpload1.FileName;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Label2.Visible = true;
        }

        if (DropDownList2.SelectedIndex == 0)
        {
            Label3.Visible = true;
        }
        if (DropDownList3.SelectedIndex == 0)
        {
            Label4.Visible = true;
        }
        else
        {

            if (Button3.Text == "Update")
            {
                //qry = "select Quantity from Product_management where Product_ID=" + TextBox1.Text + "";
                //DataTable dt = c.ret(qry);
                //float new_qunt = Convert.ToSingle(dt.Rows[0][0].ToString()) + Convert.ToSingle(TextBox4.Text);
                qry = "update product_reg set Product_Name='" + TextBox2.Text + "',Item_id=" + DropDownList3.SelectedValue + ",Brand_id=" + DropDownList2.SelectedValue + ",Cat_id=" + DropDownList3.SelectedValue + ",Price=" + TextBox3.Text + ",Quantity=" + TextBox4.Text + ",Image='" + Session["img"] + "' where Product_Id=" + TextBox1.Text + " and Shop_Id=" + Session["shopid"] + "";
                c.nonret(qry);
            }
            else
            {

                qry = "insert into product_reg values(" + TextBox1.Text + ",'" + TextBox2.Text + "'," + DropDownList3.SelectedItem.Value + "," + DropDownList2.SelectedItem.Value + "," + DropDownList1.SelectedItem.Value + "," + TextBox3.Text + "," + TextBox4.Text + ",'" + Session["img"] + "'," + Session["shopid"] + ")";
                c.nonret(qry);
            }
            grid();
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            s = "SELECT Brand.Brand_Id, Brand.Name FROM Brand INNER JOIN Category ON Brand.Category_Id = Category.Category_Id where Category.Cat_name='" + e.Item.Cells[4].Text.ToString() + "'";
            DataTable dt3 = c.ret(s);
            DropDownList2.DataSource = dt3;
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "Brand_Id";
            DropDownList2.DataBind();

            s = "SELECT Item_Registration.Item_Id, Item_Registration.Item_Name FROM Category INNER JOIN Item_Registration ON Category.Category_Id = Item_Registration.Category_Id INNER JOIN Brand ON Item_Registration.Brand_Id = Brand.Brand_Id where Brand.Name='" + e.Item.Cells[3].Text.ToString() + "' and  Category.Cat_name='" + e.Item.Cells[4].Text.ToString() + "'";
            dt3 = c.ret(s);
            DropDownList3.DataSource = dt3;
            DropDownList3.DataTextField = "Item_Name";
            DropDownList3.DataValueField = "Item_Id";
            DropDownList3.DataBind();

            qry = "select Image from product_reg where Product_Id=" + e.Item.Cells[0].Text.ToString() + "";
            DataTable dt = c.ret(qry);
            Session["Image"] = dt.Rows[0][0].ToString();
            Image1.ImageUrl = Session["Image"].ToString();

            TextBox1.Text = e.Item.Cells[0].Text.ToString();
            TextBox2.Text = e.Item.Cells[1].Text.ToString();
            DropDownList3.SelectedItem.Text = e.Item.Cells[2].Text.ToString();
            DropDownList2.SelectedItem.Text = e.Item.Cells[3].Text.ToString();
            DropDownList1.SelectedItem.Text = e.Item.Cells[4].Text.ToString();
            TextBox3.Text = e.Item.Cells[5].Text.ToString();
            TextBox4.Text = e.Item.Cells[6].Text.ToString();

            Button3.Text = "Update";

            MultiView1.SetActiveView(View2);

        }
        else
        {
            qry = "delete from product_reg where Product_Id=" + e.Item.Cells[0].Text.ToString() + " and Shop_Id=" + Session["shopid"] + "";
            c.nonret(qry);
            grid();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        s = "select Brand_Id, Name from Brand where Category_Id=" + DropDownList1.Text + "";
        DataTable dt3 = c.ret(s);
        DropDownList2.DataSource = dt3;
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "Brand_Id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("--Select--", "-1"));
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        s = "select Item_Id, Item_Name from Item_Registration where Category_Id=" + DropDownList1.Text + " and Brand_Id=" + DropDownList2.Text + "";
        DataTable dt3 = c.ret(s);
        DropDownList3.DataSource = dt3;
        DropDownList3.DataTextField = "Item_Name";
        DropDownList3.DataValueField = "Item_Id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("--Select--", "-1"));
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}