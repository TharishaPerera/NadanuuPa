using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for Email.xaml
    /// </summary>
    public partial class Email : Window
    {

        public Email()
        {
            InitializeComponent();
        }

        private void btn_cancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                this.DragMove();
            }
            catch (System.InvalidOperationException)
            {
               
            }
        }

        NetworkCredential login;
        SmtpClient client;
        MailMessage msg;

        private void btn_send_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                DateTime datetime = DateTime.Now;
                string sid = SendEmailDetails.sid;
                string month = SendEmailDetails.month;
                string year = SendEmailDetails.year;
                string amount = SendEmailDetails.amount;

                string message = $"Student ID: {sid}______Payed For: {month} {year}______Amount: {amount}______Date: {datetime}";


                if (!Regex.IsMatch(txt_recipient.Text, @"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"))
                {
                    MessageBox.Show("Please enter valid recipient email address.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else if (!Regex.IsMatch(txt_sender.Text, @"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"))
                {
                    MessageBox.Show("Please enter valid sender email address.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else if (String.IsNullOrEmpty(txt_Passwd.Password))
                {
                    MessageBox.Show("Please enter sender email address password.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else
                {

                    login = new NetworkCredential(txt_sender.Text, txt_Passwd.Password);
                    client = new SmtpClient("smtp.gmail.com");
                    client.Port = 587;
                    client.EnableSsl = true;
                    client.Credentials = login;
                    msg = new MailMessage { From = new MailAddress(txt_sender.Text, "Naadanu Paa Dance Academy", Encoding.UTF8) };
                    msg.To.Add(new MailAddress(txt_recipient.Text));
                    msg.Subject = "Fees Invoice - Naadanu Paa";
                    msg.Body = message;
                    msg.BodyEncoding = Encoding.UTF8;
                    msg.IsBodyHtml = true;
                    msg.Priority = MailPriority.Normal;
                    msg.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
                    client.SendCompleted += new SendCompletedEventHandler(SendCompletedCallBack);
                    string userstate = "Sending...";
                    client.SendAsync(msg, userstate);

                    clearValues();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private static void SendCompletedCallBack(object sender, System.ComponentModel.AsyncCompletedEventArgs e)
        {
            if (e.Cancelled)
            {
                MessageBox.Show(string.Format("{0} Send Canceled", e.UserState), "Message", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            if (e.Error != null)
            {
                MessageBox.Show(string.Format("{0} {1}", e.UserState, e.Error), "Message", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Invoice is sent successfully", "Message", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        public void clearValues()
        {
            txt_recipient.Text = null;
            txt_sender.Text = null;
            txt_Passwd.Password = null;
        }
    }
}
