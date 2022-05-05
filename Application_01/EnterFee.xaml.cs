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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel;
using System.Drawing;
using System.Runtime;
using System.Runtime.InteropServices;
using System.Net;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for EnterFee.xaml
    /// </summary>
    public partial class EnterFee : UserControl
    {
        public EnterFee()
        {
            InitializeComponent();
            Loaded += EnterFee_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void EnterFee_Loaded(object sender, RoutedEventArgs e)
        {
            dp_month.SelectedDateFormat = DatePickerFormat.Long;

            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();
            da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            EnterFees_DataGrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_sid.Text = null;
            txt_amount.Text = null;
            dp_month.SelectedDate = null;
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txt_sid.Text))
                {
                    txt_err.Text = "Student ID Cannot Be Empty.";
                    txt_sid.Focus();
                }
                else if (string.IsNullOrEmpty(dp_month.Text))
                {
                    txt_err.Text = "Month Cannot Be Empty.";
                    dp_month.Focus();
                }
                else if (string.IsNullOrEmpty(txt_amount.Text))
                {
                    txt_err.Text = "Amount Cannot Be Empty.";
                    txt_amount.Focus();
                }
                else if (txt_sid.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student ID Cannot Have Letters";
                    txt_sid.Focus();
                }
                else if (txt_amount.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Fee Amount Cannot Have Letters";
                    txt_amount.Focus();
                }
                else
                {
                    string year = dp_month.SelectedDate.Value.Year.ToString();
                    string monthNo = dp_month.SelectedDate.Value.Month.ToString();
                    string date = DateTime.Now.ToLongDateString();
                    string month = "";

                    double amount = Convert.ToDouble(txt_amount.Text);

                    if(monthNo == 1.ToString())
                    {
                        month = "January";
                    }
                    else if(monthNo == 2.ToString())
                    {
                        month = "February";
                    }
                    else if(monthNo == 3.ToString())
                    {
                        month = "March";
                    }
                    else if(monthNo == 4.ToString())
                    {
                        month = "April";
                    }
                    else if(monthNo == 5.ToString())
                    {
                        month = "May";
                    }
                    else if(monthNo == 6.ToString())
                    {
                        month = "June";
                    }
                    else if(monthNo == 7.ToString())
                    {
                        month = "July";
                    }
                    else if(monthNo == 8.ToString())
                    {
                        month = "August";
                    }
                    else if(monthNo == 9.ToString())
                    {
                        month = "September";
                    }
                    else if(monthNo == 10.ToString())
                    {
                        month = "October";
                    }
                    else if(monthNo == 11.ToString())
                    {
                        month = "November";
                    }
                    else if(monthNo == 12.ToString())
                    {
                        month = "December";
                    }

                    connection.Open();

                    command = new SqlCommand("insert into Fees values('"+txt_sid.Text+ "', '" + amount + "', '" + month+"', '"+year+"', '"+date+"') ", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("Data updated successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Data cannot be updated. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    setInvoiceData(month, year);

                    txt_sid.Text = null;
                    txt_amount.Text = null;
                    dp_month.SelectedDate = null;
                    txt_err.Text = null;
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Database error. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Occured. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                connection.Close();
            }
        }

        public bool CheckConnection()
        {
            WebClient client = new WebClient();
            try
            {
                using (client.OpenRead("http://www.google.com"))
                {
                }
                return true;
            }
            catch (WebException)
            {
                return false;
            }
        }

        private void btn_invoice_Click(object sender, RoutedEventArgs e)
        {
            if (CheckConnection() == true)
            {
                if (SendEmailDetails.amount == "")
                {
                    MessageBox.Show("Please save the data before creating an invoice.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
                    btn_save.Focus();
                }
                else
                {
                    Email obj = new Email();
                    obj.ShowDialog();
                }
            }
            else
            {
                MessageBox.Show("Cannot connect to the internet. Please try again.", "Warning", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        public void setInvoiceData(string month, string year)
        {
            string monthForInv = month;
            SendEmailDetails.month = monthForInv;

            string yearForInv = year;
            SendEmailDetails.year = yearForInv;

            SendEmailDetails.sid = txt_sid.Text;
            SendEmailDetails.amount = txt_amount.Text;
        }
    }
}
