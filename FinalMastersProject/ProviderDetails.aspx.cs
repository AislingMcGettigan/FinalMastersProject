using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;

namespace FinalMastersProject
{
    public partial class ProviderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated) jsRater.Visible = false;
        }

        protected void btnSubmitReviewDetails_Click(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            string addReview = "Insert into Review (providerId, userId, reviewTitle, reviewBody, addedDate) values(@providerId, @userid, @reviewTitle, @reviewBody, @addedDate)";
            SqlCommand sqlcmdComment = new SqlCommand(addReview, conn);
            sqlcmdComment.Parameters.AddWithValue("@providerId", Convert.ToInt16(Request.QueryString["ProviderId"]));
            sqlcmdComment.Parameters.AddWithValue("@userid", User.Identity.GetUserId());
            sqlcmdComment.Parameters.AddWithValue("@reviewTitle", TbReviewTitle.Text);
            sqlcmdComment.Parameters.AddWithValue("@reviewBody", TbReviewBody.Text);
            sqlcmdComment.Parameters.AddWithValue("@AddedDate", DateTime.Now);
            sqlcmdComment.ExecuteNonQuery();


            for (int ct = 0; ct < CBLExistingTags.Items.Count; ct++)
            {
                if (CBLExistingTags.Items[ct].Selected) Response.Write("-" + CBLExistingTags.Items[ct].Value);

                if (CBLExistingTags.Items[ct].Selected) ConnectTagAndProduct(Convert.ToInt16(CBLExistingTags.Items[ct].Value), Convert.ToInt16(Request.QueryString["ProductId"]), conn);
            }


            Response.Redirect("ProviderDetails.aspx?ProviderId=" + Request.QueryString["ProviderId"]);
        }

        protected void btnAddNewTags_Click(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            if (TbTags.Text == "") return;

            string[] newTags = TbTags.Text.Split(',');

            foreach (string Tag in newTags)
            {
                string addTagSql = "INSERT INTO Tag(tag) VALUES (@Tag)";
                SqlCommand sqlcmd = new SqlCommand(addTagSql, conn);
                sqlcmd.Parameters.AddWithValue("@Tag", Tag);
                sqlcmd.ExecuteNonQuery();
            }

            Response.Redirect("ProviderDetails.aspx?ProviderId=" + Request.QueryString["ProviderId"]);

        }


        protected int AddTagToDB(string Tag, SqlConnection conn)
        {
            string addTagSql = "INSERT INTO Tag(tag) VALUE (@Tag)";
            SqlCommand sqlcmd = new SqlCommand(addTagSql, conn);
            sqlcmd.Parameters.AddWithValue("@Tag", Tag);
            sqlcmd.ExecuteNonQuery();
            string lastTagAddedSql = "SELECT TOP 1 Id FROM Tag ORDER BY Id DESC";
            SqlCommand sqlcmd2 = new SqlCommand(lastTagAddedSql, conn);
            SqlDataReader sqlDr = sqlcmd.ExecuteReader();
            sqlDr.Read();
            int retVal = Convert.ToInt16(sqlDr["Id"]);
            sqlDr.Close();
            return retVal;

        }

        protected void ConnectTagAndProduct(int TagId, int ProviderId, SqlConnection conn)
        {
            string addTagAndProvider = "INSERT INTO TagJunction(tagId,providerId) VALUES (@TagId,@ProviderId)";
            SqlCommand sqlcmd = new SqlCommand(addTagAndProvider, conn);
            sqlcmd.Parameters.AddWithValue("@TagId", TagId);
            sqlcmd.Parameters.AddWithValue("@ProviderId", ProviderId);
            sqlcmd.ExecuteNonQuery();
        }

        protected int GetIdForTag(string Tag, SqlConnection conn)
        {
            int retVal = -1;
            string findTagSql = "SELECT Id FROM Tag WHERE tag=@Tag";
            SqlCommand sqlCmd = new SqlCommand(findTagSql, conn);
            sqlCmd.Parameters.AddWithValue("@Tag", Tag);
            SqlDataReader sqlDr = sqlCmd.ExecuteReader();
            if (sqlDr.HasRows)
            {
                sqlDr.Read();
                retVal = Convert.ToInt16(sqlDr["Id"]);
            }
            sqlDr.Close();
            return retVal;
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}