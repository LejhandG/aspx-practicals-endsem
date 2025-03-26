using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class DatabaseUsage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection s1 = new SqlConnection(@"Data Source=LAPTOP-LS1B1UB8\SQLEXPRESS;Initial Catalog=FinalRevision;Integrated Security=True"))
        {
            string query = "INSERT INTO [info] VALUES (@id, @name, @seatno)";

            using (SqlCommand sqlcmd = new SqlCommand(query, s1))
            {
                sqlcmd.Parameters.AddWithValue("@id", TextBox1.Text);
                sqlcmd.Parameters.AddWithValue("@name", TextBox2.Text);
                sqlcmd.Parameters.AddWithValue("@seatno", TextBox3.Text);

                s1.Open();
                sqlcmd.ExecuteNonQuery();
                s1.Close();
            }

        }
        Response.Redirect("DatabaseUsage.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        using (SqlConnection s1 = new SqlConnection(@"Data Source=LAPTOP-LS1B1UB8\SQLEXPRESS;Initial Catalog=FinalRevision;Integrated Security=True"))
        {
            string query = "UPDATE [info] SET name=@name, seatno=@seatno WHERE id=@id";

            using (SqlCommand sqlcmd = new SqlCommand(query, s1))
            {
                sqlcmd.Parameters.AddWithValue("@name", TextBox2.Text);
                sqlcmd.Parameters.AddWithValue("@seatno", TextBox3.Text);
                sqlcmd.Parameters.AddWithValue("@id", TextBox1.Text);

                s1.Open();
                sqlcmd.ExecuteNonQuery();
                s1.Close();
            }
        }
        Response.Redirect("DatabaseUsage.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        using (SqlConnection s1 = new SqlConnection(@"Data Source=LAPTOP-LS1B1UB8\SQLEXPRESS;Initial Catalog=FinalRevision;Integrated Security=True"))
        {
            string query = "DELETE FROM [info] WHERE id=@id";

            using (SqlCommand sqlcmd = new SqlCommand(query, s1))
            {
                sqlcmd.Parameters.AddWithValue("@id", TextBox1.Text);
                s1.Open();
                sqlcmd.ExecuteNonQuery();
                s1.Close();
            }
        }
        Response.Redirect("DatabaseUsage.aspx");
    }
}