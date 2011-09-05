using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace simply_forum
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.Count>0)
            {
            author.Text = Request.Form.GetValues("title").ToString();
            }
                //author.Text = Page.Request["title"];
            if (Page.Request["title"] != "")
            {
                author.Text = Page.Request["title"];
            }   
            else
            {
                title.Text = "123";
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            
        }

        protected void submit_Load(object sender, EventArgs e)
        {
            //Form.Load();
        }
    }
}
