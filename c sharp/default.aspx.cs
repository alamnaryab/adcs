using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace Task
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) {
                try
                {
                    MailMessage objeto_mail = new MailMessage();
                    SmtpClient client = new SmtpClient();
                    client.Port = 25;
                    client.Host = "smtp.ipage.com";
                    client.Timeout = 10000;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential("test@codingsips.com", "Alam1234");
                    objeto_mail.From = new MailAddress("test@codingsips.com");
                    objeto_mail.To.Add(new MailAddress(sendto.Text.ToString()));
                    objeto_mail.IsBodyHtml = true;
                    objeto_mail.Subject = "Questionnaire by "+name.Text.ToString();
                
                    string str = "<table style='width:100%;border:1px solid #999;box-shadow:2px 2px 5px #555555;' cellspacing='0' cellpadding='0'>";
                    str += "	<tr>";
                    str += "		<td style='background:#2323FF;padding:30px 20px;'>";
                    str += "			<h1 style='color:#FFF;'>Al Dhafra: Questionnaire</h1>";
                    str += "		</td>";
                    str += "	</tr>";
                    str += "	<tr>";
                    str += "		<td style='background:#FFF;padding:20px;'>";
                    str += "			<div style='padding:10px;'>";
                    str += "				<p style='padding:5px; margin:0px;'>";
                    str += "					ID :";
                    str += "					<strong>"+ id.Text.ToString() +"</strong>";
                    str += "				</p>";
                    str += "				<p style='padding:5px; margin:0px;'>";
                    str += "					Name :";
                    str += "					<strong>" + name.Text.ToString() + "</strong>";
                    str += "				</p>";
                    str += "				<p style='padding:5px; margin:0px;'>";
                    str += "					Contact :";
                    str += "					<strong>" + contact.Text.ToString() + "</strong>";
                    str += "				</p>";
                    str += "				<p style='padding:5px; margin:0px;'>";
                    str += "					Date Time :";
                    str += "					<strong>" + DateTime.Now.ToString("yyyy-MM-dd h:mm:ss tt") + "</strong>";
                    str += "				</p>";
                    str += "				<p style='padding:5px; margin:0px;'>";
                    str += "					IP :";
                    str += "					<strong>" + HttpContext.Current.Request.UserHostAddress + "</strong>";
                    str += "				</p>";
                    str += "			</div>";
                    str += "			<div style='background:#EEE;padding:10px;margin:1px 0px;'>";
                    str += "				<p style='font-weight:bold;'>Q-1 Which layers perform error detection and recovery functions?</p>";
                    str += "				<p>Answer: <span>"+ answer0.SelectedValue +"</span> </p>";
                    str += "			</div>";

                    str += "			<div style='background:#EEE;padding:10px;margin:1px 0px;'>";
                    str += "				<p style='font-weight:bold;'>Q-2 Which transmission media has the highest transmission speed in a network?</p>";
                    str += "				<p>Answer: <span>" + answer1.SelectedValue + "</span> </p>";
                    str += "			</div>";

                    str += "			<div style='background:#EEE;padding:10px;margin:1px 0px;'>";
                    str += "				<p style='font-weight:bold;'>Q-3 Questions on Transport Layer?</p>";
                    str += "				<p>Answer: <span>"+ answer2.SelectedValue +"</span> </p>";
                    str += "			</div>";

                    str += "			<div style='background:#EEE;padding:10px;margin:1px 0px;'>";
                    str += "				<p style='font-weight:bold;'>Q-4 what are valid ISO layers? (select any 2 options)</p>";
                    str += "				<p>Answers:<br> <ul>";
                    for (int i = 0; i < answer3.Items.Count; i++)
                    {
                        if (answer3.Items[i].Selected)
                        {
                            str += "<li>" + answer3.Items[i].Text + "</li>";
                        }
                    }
                    str += "                 </ul> </p>";
                    str += "			</div>";

                    str += "			<div style='background:#EEE;padding:10px;margin:1px 0px 20px 0px;'>";
                    str += "				<p style='font-weight:bold;'>Q-5 Which editors can you use? (select any 2 options)</p>";
                    str += "				<p>Answers:<br> <ul>";
                    for (int i = 0; i < answer4.Items.Count; i++)
                    {
                        if (answer4.Items[i].Selected)
                        {
                           str += "<li>" + answer4.Items[i].Text + "</li>";
                        }
                    }
                    str += "                 </ul> </p>";
                    str += "			</div>";
                

                    str += "		</td>";
                    str += "	</tr>";
                    str += "	<tr>";
                    str += "		<td style='background:#333;'>";
                    str += "			<h1 style='color:#FFF;font-size:13px;text-align:center; padding:20px;'>copyrights &copy; Al Dhafra</h1>";
                    str += "		</td>";
                    str += "	</tr>";
                    str += "</table>";
                    objeto_mail.Body = str;

                
                    client.Send(objeto_mail);
                    Label1.Text = "<div class='alert alert-success'>Email sent successfully</div>";
                }
                catch (Exception ex)
                {
                    Label1.Text = "<div class='alert alert-danger'>" + ex.Message.ToString()+"</div>";
                    // Handle exception here 

                }
            }
        }
    }
}