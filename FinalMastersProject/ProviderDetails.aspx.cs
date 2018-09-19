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

            Response.Redirect("ProviderDetails.aspx?ProviderId=" + Request.QueryString["ProviderId"]);
        }
    }
}




