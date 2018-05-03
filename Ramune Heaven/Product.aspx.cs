using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ramune_Heaven
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductID = Request.QueryString["ProductID"];
            string filename = ProductID + ".jpg";

            ProductImage.ImageUrl = "~/Images/ProductImage/" + filename;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Product.aspx");
            string productId = Request.QueryString["ProductID"];            
        }

    }
}