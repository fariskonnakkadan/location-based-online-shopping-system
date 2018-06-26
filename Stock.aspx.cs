using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Stock : System.Web.UI.Page
{
    string qry;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            qry = "select Shop_Name from Retail_Registration";
            DataTable dt = c.ret(qry);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Shop_Name";
            DropDownList1.DataValueField = "Shop_Name";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select", "-1"));


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Visible = true;
        }
        else
        {

            qry = "SELECT Category.Cat_name, Brand.Name, Item_Registration.Item_Name, product_reg.Product_Name, product_reg.Quantity FROM Retail_Registration INNER JOIN product_reg ON Retail_Registration.Shop_Id = product_reg.Shop_Id INNER JOIN Item_Registration ON product_reg.Item_id = Item_Registration.Item_Id INNER JOIN Category ON product_reg.Cat_id = Category.Category_Id INNER JOIN Brand ON product_reg.Brand_id = Brand.Brand_Id where Retail_Registration.Shop_Name='" + DropDownList1.Text + "'";
            DataTable dt = c.ret(qry);
            DataGrid1.DataSource = dt;
            DataGrid1.DataBind();
        }
        
    }
}