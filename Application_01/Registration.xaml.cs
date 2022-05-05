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
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for Registration.xaml
    /// </summary>
    public partial class Registration : Window
    {
        public Registration()
        {
            InitializeComponent();
            Loaded += Registration_Load;
        }

        private void Registration_Load(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();

        private void btn_minimize_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                this.WindowState = WindowState.Minimized;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_close_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            Close();
            Students obj = new Students();
            obj.ShowDialog();
        }
        
        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txt_id.Text))
                {
                    txt_err.Text = "Student ID cannot be blank";
                    txt_id.Focus();
                }
                else if (string.IsNullOrEmpty(txt_name.Text))
                {
                    txt_err.Text = "Student name cannot be empty";
                    txt_name.Focus();
                }
                else if (txt_name.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Doctor name cannot have numbers";
                    txt_name.Focus();
                }
                else if (string.IsNullOrEmpty(txt_age.Text))
                {
                    txt_err.Text = "Student age cannot be empty";
                    txt_age.Focus();
                }
                else if (txt_age.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student age cannot have letters";
                    txt_age.Focus();
                }
                else if (string.IsNullOrEmpty(txt_grade.Text))
                {
                    txt_err.Text = "Student grade cannot be empty";
                    txt_grade.Focus();
                }
                else if (txt_grade.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student grade cannot have letters";
                    txt_grade.Focus();
                }
                else if (!Regex.IsMatch(txt_tp.Text, @"^(?:7|0|(?:\+94))[0-9]{8,9}$"))
                {
                    txt_err.Text = "Enter valid telephone number";
                    txt_tp.Focus();
                }
                else if (string.IsNullOrEmpty(txt_address.Text))
                {
                    txt_err.Text = "Address cannot be empty";
                    txt_address.Focus();
                }
                else
                {
                    connection.Open();

                    command = new SqlCommand("insert into student values ('"+txt_id.Text+"', '"+txt_name.Text+"', '"+txt_age.Text+"', '"+txt_grade.Text+"', '"+txt_tp.Text+"', '"+txt_address.Text+"')", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("Data saved successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else
                    {
                        MessageBox.Show("Data cannot be saved. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    //txt_id.Clear();
                    txt_name.Clear();
                    txt_age.Clear();
                    txt_grade.Clear();
                    txt_tp.Clear();
                    txt_address.Clear();
                    txt_err.Text = "";
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Database errors", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Please check again", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                connection.Close();
            }
        }

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                this.DragMove();
            }
            catch (System.InvalidOperationException)
            {
                MessageBox.Show("You Can Only Drag From The BOTTOM Of The Window.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
