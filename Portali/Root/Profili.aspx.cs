using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Portali.Root
{
    public partial class Profili : System.Web.UI.Page
    {
        protected string querystring = WebConfigurationManager.ConnectionStrings["UniversityConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else if (Session["Roli"].ToString() == "PEDAGOG")
            {
                Response.Redirect("~/Pedagog/Shto_Njoftim.aspx");
            }
            else if (Session["Roli"].ToString() == "STUDENT")
            {
                Response.Redirect("~/Student/Njoftimet.aspx");
            }

            //Profil_Picture.ImageUrl = Session["Link_Imazh"].ToString();
            Profil_Picture.ImageUrl = Session["Link_Imazh"].ToString();
        }
        protected void Ndrysho(object sender, EventArgs e)
        {
            if (IsValid)
            {
                if (IsPostBack)
                {
                    string password = Password.Text;
                    using (SqlConnection connec = new SqlConnection(querystring))
                    {
                        string queryProcedure = "NderroPassword";
                        SqlCommand comman = new SqlCommand(queryProcedure, connec);
                        comman.CommandType = CommandType.StoredProcedure;
                        comman.Parameters.AddWithValue("@pUser", Session["UserID"].ToString());
                        comman.Parameters.AddWithValue("@pPassword", password);
                        comman.Parameters.Add("@responseMessage", SqlDbType.Char, 30);
                        comman.Parameters["@responseMessage"].Direction = ParameterDirection.Output;

                        try
                        {
                            connec.Open();
                            comman.ExecuteNonQuery();
                            string message = (string)comman.Parameters["@responseMessage"].Value;
                            if (message.Replace(" ", "") != "Success")
                            {
                                Response.Write("<script>alert('Ndodhi nje gabim!')</script>");
                                Response.Write("<script>alert('" + message + "')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('Passwordi u Nderrua me sukses')</script>");
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "')</script>");
                        }
                    }

                }
            }

        }

        /*
         * Funksion qe kthen nje string me shkronjen e pare kapitale

         */
        static string ShkonjaEPareMadhe(string s)
        {
            // Check for empty string.
            if (string.IsNullOrEmpty(s))
            {
                return string.Empty;
            }
            // Return char and concat substring.
            return char.ToUpper(s[0]) + s.Substring(1);
        }

    }
}