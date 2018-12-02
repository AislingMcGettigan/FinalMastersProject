using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data.SqlClient;

namespace FinalMastersProject
{
    public partial class Rating : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int rating = Convert.ToInt32(Request.Params["Rating"]);
            int beingRated = Convert.ToInt16(Request.Params["BeingRated"]);
            string id = User.Identity.GetUserId();


            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            SqlCommand delete = new SqlCommand("DELETE FROM Rating WHERE userfk = @UserFK AND providerfk = @beingRated", conn);

            conn.Open();

            delete.Parameters.AddWithValue("@UserFK", id);
            delete.Parameters.AddWithValue("@beingRated", beingRated);
            delete.ExecuteNonQuery();

            SqlCommand insertcmnd = new SqlCommand("INSERT INTO Rating(userfk, rating, providerfk, addedDate) VALUES (@UserFK, @rating, @providerFK, @AddedDate)", conn);

            insertcmnd.Parameters.AddWithValue("@UserFK", id);
            insertcmnd.Parameters.AddWithValue("@rating", rating);
            insertcmnd.Parameters.AddWithValue("@providerFK", beingRated);
            insertcmnd.Parameters.AddWithValue("@AddedDate", DateTime.Now);
            insertcmnd.ExecuteNonQuery();

            conn.Close();
        }
    }
}