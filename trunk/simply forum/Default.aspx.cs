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
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string strError="";
            if (title.Text == "")
            {
                strError += "<p style='color:red;'>Для добавления темы введите её заголовок</p>";
            }
            if (author.Text == "")
            {
                strError += "<p style='color:red;'>Для добавления темы введите имя автора</p>";
            }

            //TOPICS objTopic;
            if (strError.Length == 0)
            {
                TOPICS newTopic = new TOPICS();
                small_forumEntities1 smlfrm = new small_forumEntities1();
                
                newTopic.AUTHOR = author.Text;
                newTopic.NAME = title.Text;
                newTopic.DATE_CREATE = DateTime.Today;
                smlfrm.AddToTOPICS(newTopic);
                
                smlfrm.SaveChanges();

                GridView1.DataBind();
                //GridView1.DataSource = smlfrm.TOPICS.Where(t => t.AUTHOR=="");
               
            }
            else
            {
                errorlabel.Text = strError;
            }
        }

   
    }
}
