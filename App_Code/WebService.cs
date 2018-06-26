using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Device.Location;
using System.IO;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    Class1 c = new Class1();
    string qry;
    string q = "";
    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    public string user_reg(string name, string house_no, string address, string telephone, string mobile, string email, string pincode, string district, string password)
    {
        try
        {
            qry = "select max(User_Id) from User_Registration";
            int uid = c.maxid(qry);

            qry = "insert into User_Registration values(" + uid + ",'" + name + "','" + house_no + "','" + address + "'," + telephone + "," + mobile + ",'" + email + "'," + pincode + ",'" + district + "')";
            c.nonret(qry);

            qry = "insert into Login values('" + email + "','" + password + "','user')";
            c.nonret(qry);

            return "ok";
        }
        catch
        {
            return "na";
        }
    }

    [WebMethod]
    public string login(string uname, string pwd)
    {
        string q = ""; ;
        qry = "select * from Login where Username='" + uname + "' and Password='" + pwd + "' and Type='user'";
        DataTable dt = c.ret(qry);

        if (dt.Rows.Count > 0)
        {
            qry = "select User_Id from User_Registration where Email='" + uname + "'";
            dt = c.ret(qry);
            q =q+ dt.Rows[0][0].ToString();
        }
        return q;
        
    }
    [WebMethod]
    public string sel_category()
    {
        
        qry = "select Cat_name from Category";
        DataTable dt = c.ret(qry);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            q = q + dt.Rows[i][0].ToString() + "#";
        }
        return q;

    }
    [WebMethod]
    public string sel_brand(string cat_name)
    {
        qry = "SELECT Brand.Name FROM Brand INNER JOIN Category ON Brand.Category_Id = Category.Category_Id where  Category.Cat_name='" + cat_name + "'";
        DataTable dt = c.ret(qry);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            q = q + dt.Rows[i][0].ToString() + "#";
        }
        return q;
       
    }
    [WebMethod]
    public string sel_item(string cat_name, string brand)
    {
        qry = "SELECT Item_Registration.Item_Name FROM Brand INNER JOIN Item_Registration ON Brand.Brand_Id = Item_Registration.Brand_Id INNER JOIN Category ON Item_Registration.Category_Id = Category.Category_Id where  Category.Cat_name='" + cat_name + "' and  Brand.Name='" + brand + "'";
        DataTable dt = c.ret(qry);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            q = q + dt.Rows[i][0].ToString() + "#";
        }
        return q;
    }
    //[WebMethod]
    //public string sel_product(string cat_name, string brand, string item, string latitude, string longitude)
    //{
    //    double la = Convert.ToDouble(latitude);
    //    double lo = Convert.ToDouble(longitude);
    //    GeoCoordinate a1 = new GeoCoordinate(la,lo);
    //    string qry = "SELECT        product_reg.Product_Id, product_reg.Product_Name, product_reg.Price,Retail_stock_manage.Quantity, Retail_Registration.Latitude, Retail_Registration.Longitude,Retail_stock_manage.Shop_Id, product_reg.Image FROM Brand INNER JOIN product_reg ON Brand.Brand_Id = product_reg.Brand_id INNER JOIN Category ON product_reg.Cat_id = Category.Category_Id INNER JOIN Item_Registration ON product_reg.Item_id = Item_Registration.Item_Id INNER JOIN Retail_stock_manage ON product_reg.Product_Id = Retail_stock_manage.Product_Id INNER JOIN Retail_Registration ON Retail_stock_manage.Shop_Id = Retail_Registration.Shop_Id where Brand.Name='" + brand + "' and  Category.Cat_name='" + cat_name + "' and  Item_Registration.Item_Name='" + item + "' and Retail_stock_manage.Quantity>0";
    //    DataTable dt = c.ret(qry);
    //    string r = "na";
    //    if (dt.Rows.Count > 0)
    //    {
    //        r = "";
    //        foreach (DataRow dr in dt.Rows)
    //        {
    //            double la1 = Convert.ToDouble(dr[4].ToString());
    //            double lo1 = Convert.ToDouble(dr[5].ToString());
    //            GeoCoordinate a2 = new GeoCoordinate(la1, lo1);
    //            double di = a1.GetDistanceTo(a2);
    //            if (di < 1000000)
    //            {
    //                r = r + dr[0].ToString() + "#" + dr[1].ToString() + "#" + dr[2].ToString() + "#" + dr[3].ToString() + "#" + dr[6].ToString() + "@";
    //            //pid,name,price,qntyty,shopid
    //            }
    //        }
        
    //    }
    //    return r;
    //}
    [WebMethod]
    public string selimg(string pid)
    {
        string qry = "select Image from product_reg where Product_Id="+pid+"";
        DataTable dt = c.ret(qry);
        try
        {
            byte[] im = File.ReadAllBytes(dt.Rows[0][0].ToString());
            string r = Convert.ToBase64String(im);
            return r;
        
        }
        catch
        {
            return "no";
        }
    }
    [WebMethod]
    public string sel_product(string cat_name, string brand, string item, string latitude, string longitude)
    {
        double la = Convert.ToDouble(latitude);
        double lo = Convert.ToDouble(longitude);
        GeoCoordinate a1 = new GeoCoordinate(la, lo);
        string qry = "SELECT product_reg.Product_Id, product_reg.Product_Name, product_reg.Price,product_reg.Quantity, Retail_Registration.Latitude, Retail_Registration.Longitude,product_reg.Shop_Id, product_reg.Image,Retail_Registration.Shop_Name FROM Brand INNER JOIN product_reg ON Brand.Brand_Id = product_reg.Brand_id INNER JOIN Category ON product_reg.Cat_id = Category.Category_Id INNER JOIN Item_Registration ON product_reg.Item_id = Item_Registration.Item_Id  INNER JOIN Retail_Registration ON product_reg.Shop_Id = Retail_Registration.Shop_Id where Brand.Name='" + brand + "' and  Category.Cat_name='" + cat_name + "' and  Item_Registration.Item_Name='" + item + "' and product_reg.Quantity>0";
        DataTable dt = c.ret(qry);
        string r = "na";
        if (dt.Rows.Count > 0)
        {
            r = "";
            foreach (DataRow dr in dt.Rows)
            {
                double la1 = Convert.ToDouble(dr[4].ToString());
                double lo1 = Convert.ToDouble(dr[5].ToString());
                GeoCoordinate a2 = new GeoCoordinate(la1, lo1);
                double di = a1.GetDistanceTo(a2);
                if (di < 10000000000000)
                {
                    r = r + dr[0].ToString() + "#" + dr[1].ToString() + "#" + dr[2].ToString() + "#" + dr[3].ToString() + "#" + dr[6].ToString() + "#" + dr[8].ToString() + "@";
                    //pid,name,price,qntyty,shopid,shop_name
                }
            }

        }
        return r;
    }
    [WebMethod]
    public string booking_ins(string user_id, string product_id, string count, string place_delivery, string date,string shop_id,string act_no,string amnt,string sec_no)
    {
        try
        {
            qry = "select Price from product_reg where Product_Id=" + product_id + "";
            DataTable dt = c.ret(qry);
            float price = Convert.ToSingle(dt.Rows[0][0].ToString())*int.Parse(count);
            qry = "select Amount from Bank where Account_no='" + act_no + "' and Secret_key='" + sec_no + "'";
            dt = c.ret(qry);
            float u_amt = Convert.ToSingle(dt.Rows[0][0].ToString());
            if (u_amt < price)
            {
                return "Insufficient Balance";
            }
            else
            {
                qry = "SELECT Bank.Amount,Bank.Account_no,Bank.Secret_key FROM Bank INNER JOIN Retail_Registration ON Bank.Account_no = Retail_Registration.Account_no AND Bank.Secret_key = Retail_Registration.sec_no where Retail_Registration.Shop_Id=" + shop_id + "";
                DataTable dt1 = c.ret(qry);
                string act=dt1.Rows[0][1].ToString();
                string secu_no=dt1.Rows[0][2].ToString();
                float shp_amt = Convert.ToSingle(dt1.Rows[0][0].ToString());
                float ins_amt_shp = shp_amt +price;
                float del_amt_usr = u_amt - price;

                qry = "update Bank set Amount=" + ins_amt_shp + " where Account_no='" + act + "' and Secret_key='" + secu_no + "'";
                c.nonret(qry);

                qry="update Bank set Amount="+del_amt_usr+" where Account_no='" + act_no + "' and Secret_key='" +sec_no + "'";
                c.nonret(qry);
                qry = "select max(Booking_Id) from Booking_Table";
                int bkid = c.maxid(qry);


                qry = "insert into Booking_Table(Booking_Id, User_Id, Item_Id, Item_Count, Price, Place_of_Delivery, Date, Status)values(" + bkid + "," + user_id + "," + product_id + "," + count + "," + price + ",'" + place_delivery + "','" + date + "','booked')";
                c.nonret(qry);
                return "ok";
            }
        }
        catch
        {
            return "na";
        }
    }

    [WebMethod]
    public string user_view_recent_booking(string user_id)
    {
        qry = "SELECT product_reg.Product_Name, Booking_Table.Price, Booking_Table.Date, Booking_Table.Item_Count FROM Booking_Table INNER JOIN product_reg ON Booking_Table.Item_Id = product_reg.Product_Id ORDER BY Booking_Table.Date";
        DataTable dt = c.ret(qry);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            q = q + "#" + dt.Rows[i][0].ToString() + "#" + dt.Rows[i][1].ToString() + "#" + dt.Rows[i][2].ToString() + "#" + dt.Rows[i][3].ToString() + "@";

        }
        return q;


    }
    [WebMethod]
    public string location(string shopid)
    {
        qry = "select Latitude,Longitude Retail_Registration where Shope_Id=" + shopid;
        DataTable dt = c.ret(qry);
        try
        {
            return dt.Rows[0][0].ToString() + "#" + dt.Rows[0][1].ToString();
        }
        catch
        {
            return "na";
        }
    }








    
}
