using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Default3 : System.Web.UI.Page
{
    string qry;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        qry = "select * from Login where Username='" + TextBox2.Text + "' and Password='" + TextBox3.Text + "'";
        DataTable dt = c.ret(qry);

        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0][2].ToString() == "admin")
            {
                Response.Redirect("ad_home.aspx");
            }
            else
            {
                
                qry = "select Shop_Id,Status from Retail_Registration where Email='" + TextBox2.Text + "'";
                dt = c.ret(qry);
                if (dt.Rows[0][1].ToString() == "pending")
                {
                    Response.Write("<script>alert('You are not yet Approved')</script>");
                }
                else
                {
                    Session["shopid"] = dt.Rows[0][0].ToString();
                    Response.Redirect("retail_home.aspx");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Username Or Password Incorrect')</script>");
        }

    }
}