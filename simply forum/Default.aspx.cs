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
                DateTime dt = new DateTime();
                small_forumEntitiesConnection smlfrm = new small_forumEntitiesConnection();
                //newTopic
                newTopic.AUTHOR = author.Text;
                newTopic.NAME = title.Text;
                newTopic.TOPIC_ID = 1;
                newTopic.DATE_CREATE = DateTime.Today;
                smlfrm.AddToTOPICS(newTopic);
                smlfrm.SaveChanges();

                
                //SqlDataSource1.Insert("insert into TOPICS (NAME, AUTHOR, DATE_CREATE) values (" + title.Text + ", " + author.Text + "," + DateTime.Now + ")");
               /* objTopic = TOPICS.CreateTOPICS(0);
                objTopic.AUTHOR = author.Text;
                objTopic.NAME = title.Text;
                objTopic.DATE_CREATE = DateTime.Now;
                */
                //objTopic.
            }
            else
            {
                errorlabel.Text = strError;
            }
        }
   
    }
}
