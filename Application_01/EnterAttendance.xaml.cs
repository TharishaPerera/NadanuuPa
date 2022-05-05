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

namespace Application_01
{
    /// <summary>
    /// Interaction logic for EnterAttendance.xaml
    /// </summary>
    public partial class EnterAttendance : UserControl
    {
        public EnterAttendance()
        {
            InitializeComponent();
            Loaded += EnterAttendance_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void EnterAttendance_Loaded(object sender, RoutedEventArgs e)
        {
            dp_date.SelectedDateFormat = DatePickerFormat.Long;

            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();
            da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            EnterAttendance_DataGrid.ItemsSource = dt.DefaultView;
            connection.Close();
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
                else if (txt_sid.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student ID Cannot Have Letters.";
                    txt_sid.Focus();
                }
                else if (string.IsNullOrEmpty(dp_date.Text))
                {
                    txt_err.Text = "Date Cannot Be Empty,";
                    dp_date.Focus();
                }
                else
                {
                    string day = dp_date.SelectedDate.Value.Day.ToString();
                    string monthNo = dp_date.SelectedDate.Value.Month.ToString();
                    string year = dp_date.SelectedDate.Value.Year.ToString();
                    string date = DateTime.Now.ToLongDateString();
                    string month = "";

                    if (monthNo == 1.ToString())
                    {
                        month = "January";
                    }
                    else if (monthNo == 2.ToString())
                    {
                        month = "February";
                    }
                    else if (monthNo == 3.ToString())
                    {
                        month = "March";
                    }
                    else if (monthNo == 4.ToString())
                    {
                        month = "April";
                    }
                    else if (monthNo == 5.ToString())
                    {
                        month = "May";
                    }
                    else if (monthNo == 6.ToString())
                    {
                        month = "June";
                    }
                    else if (monthNo == 7.ToString())
                    {
                        month = "July";
                    }
                    else if (monthNo == 8.ToString())
                    {
                        month = "August";
                    }
                    else if (monthNo == 9.ToString())
                    {
                        month = "September";
                    }
                    else if (monthNo == 10.ToString())
                    {
                        month = "October";
                    }
                    else if (monthNo == 11.ToString())
                    {
                        month = "November";
                    }
                    else if (monthNo == 12.ToString())
                    {
                        month = "December";
                    }

                    connection.Open();

                    command = new SqlCommand("insert into Attendance values('" + txt_sid.Text + "', '" + day + "', '" + month + "', '" + year + "', '" + date + "') ", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("Data updated successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Data cannot be updated. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                    txt_err.Text = null;
                    txt_sid.Text = null;
                    dp_date.Text = null;
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

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_err.Text = null;
            txt_sid.Text = null;
            dp_date.Text = null;
        }
    }
}
