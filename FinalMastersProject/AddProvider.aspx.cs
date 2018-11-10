using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;
using System.IO;

namespace FinalMastersProject
{
    public partial class AddProvider : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            string addressQuery = "Insert into [dbo].[ProviderAddress] ([address1],[address2],[town],[county],[country],[postcode]) Values (@address1,@address2,@town,@county,@country,@postcode)";

            SqlCommand insertAddressCommand = new SqlCommand(addressQuery, conn);
            insertAddressCommand.Parameters.AddWithValue("@address1", tbAddress1.Text);
            insertAddressCommand.Parameters.AddWithValue("@address2", tbAddress2.Text);
            insertAddressCommand.Parameters.AddWithValue("@town", tbTown.Text);
            insertAddressCommand.Parameters.AddWithValue("@county", tbCounty.Text);
            insertAddressCommand.Parameters.AddWithValue("@country", tbCountry.Text);
            insertAddressCommand.Parameters.AddWithValue("@postcode", tbPostcode.Text);
            insertAddressCommand.ExecuteNonQuery();

            string filename = Path.GetFileName(fuProviderImage.PostedFile.FileName);
            fuProviderImage.SaveAs(Server.MapPath("~/Image/PreschoolImages/") + filename);
            string imageQuery = "Insert into [dbo].[ProviderImages] ([imagePath]) Values (@path)";

            SqlCommand insertImageCommand = new SqlCommand(imageQuery, conn);
            insertImageCommand.Parameters.AddWithValue("@path", "Image/PreschoolImages/" + filename);
            insertImageCommand.ExecuteNonQuery();

            string providerQuery = "Insert into [dbo].[Provider] ([name],[providerTypeId],[description],[providerAddressId],[priceByDay],[providerImageId]) Values (@name,@type,@description,(SELECT TOP 1 ID FROM [dbo].[ProviderAddress] WHERE postcode = @postcode),@price,(SELECT TOP 1 ID FROM [dbo].[ProviderImages] WHERE imagePath = @path))";

            SqlCommand insertProviderCommand = new SqlCommand(providerQuery, conn);
            insertProviderCommand.Parameters.AddWithValue("@name", tbName.Text);
            insertProviderCommand.Parameters.AddWithValue("@type", ddlType.Text);
            insertProviderCommand.Parameters.AddWithValue("@description", tbDescription.Text);
            insertProviderCommand.Parameters.AddWithValue("@postcode", tbPostcode.Text);
            insertProviderCommand.Parameters.AddWithValue("@price", tbPrice.Text);
            insertProviderCommand.Parameters.AddWithValue("@path", "Image/PreschoolImages/" + filename);
            insertProviderCommand.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Providers.aspx");
        }
    }
}