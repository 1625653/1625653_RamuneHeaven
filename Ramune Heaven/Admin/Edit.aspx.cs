using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ramune_Heaven.Admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ProductID"];
            string filename = productId + ".jpg";

            currentImage.ImageUrl = "~/Images/ProductImage/" + filename;

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            Literal1.Text = "Product have been updated";
        }
    }
}