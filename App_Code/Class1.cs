using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\inetpub\wwwroot\L-BOSS123\App_Data\mpoly.mdf;Integrated Security=True;User Instance=True");
	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void nonret(string s)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = s;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public DataTable ret(string s)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = s;
        SqlDataAdapter sa = new SqlDataAdapter();
        sa.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sa.Fill(dt);
        return dt;
    }

    public int maxid(string s)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = s;
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
        return id;
    }
}