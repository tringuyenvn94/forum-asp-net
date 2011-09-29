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
                //DateTime dt = new DateTime();

                //small_forumEntitiesConnection smlfrm = new small_forumEntitiesConnection();
                small_forumEntities1 smlfrm = new small_forumEntities1();
                //SqlDataSource1.
                //string Dt  
                //newTopic
                //title.Text = 
                
                newTopic.AUTHOR = author.Text;
                newTopic.NAME = title.Text;
                //newTopic.TOPIC_ID = 1;
                newTopic.DATE_CREATE = DateTime.Today;
                //smlfrm.Connection.Open();
                //smlfrm.Connection.BeginTransaction();
                smlfrm.AddToTOPICS(newTopic);
                //smlfrm.AddObject("TOPICS", newTopic);
                //smlfrm.AcceptAllChanges();
                
                smlfrm.SaveChanges();
                
                DataBind();
               //smlfrm.
                //smlfrm.AddToTOPICS(newTopic)
                //GridView1.SelectRow(1); 
                //GridView1.UpdateRow(smlfrm.SaveChanges(), false);
                //SqlDataSource1.
                //smlfrm.Connection.Close();
                //SqlDataSource1.Update();
                //smlfrm.Connection.
                //smlfrm.Connection.Close();
                
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

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            //GridView1.UpdateRow(e.Row.Cells.Count, false);
        }
   
    }
}
