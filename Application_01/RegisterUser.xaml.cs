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

namespace Application_01
{
    /// <summary>
    /// Interaction logic for RegisterUser.xaml
    /// </summary>
    public partial class RegisterUser : Window
    {
        public RegisterUser()
        {
            InitializeComponent();
            Loaded += RegisterUser_Loaded;
        }

        int id;

        private void RegisterUser_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();

            command = new SqlCommand("Select max(ID) from users", connection);
            SqlDataReader dr = command.ExecuteReader();

            if (dr.Read())
            {
                if (dr[0] != System.DBNull.Value)
                {
                    id = Convert.ToInt32(dr[0].ToString()) + 1;
                }
                else
                {
                    id = 1;
                }
            }
            connection.Close();
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();

        private void btn_register_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txt_username.Text))
                {
                    txt_err.Text = "Username Cannot Be Empty.";
                    txt_username.Focus();
                }
                else if (txt_username.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Username cannot have numbers";
                    txt_username.Focus();
                }
                else if (string.IsNullOrEmpty(txt_passwd.Password))
                {
                    txt_err.Text = "Password Cannot Be Empty.";
                    txt_passwd.Focus();
                }
                else if (string.IsNullOrEmpty(txt_repeatPasswd.Password))
                {
                    txt_err.Text = "Enter Password Again.";
                    txt_repeatPasswd.Focus();
                }
                else if (string.IsNullOrEmpty(txt_role.Text))
                {
                    txt_err.Text = "Role Cannot Be Empty.";
                    txt_role.Focus();
                }
                else if (txt_passwd.Password != txt_repeatPasswd.Password)
                {
                    txt_err.Text = "Passwords Does Not Match.";
                    txt_passwd.Focus();
                    txt_repeatPasswd.Focus();
                }
                else
                {
                    connection.Open();

                    command = new SqlCommand("insert into users values('"+id+"' , '" + txt_username.Text + "', '" + txt_passwd.Password + "', 1, '" + txt_role.Text.ToUpper() + "')", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("User Registered Successfully.", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                        txt_username.Clear();
                        txt_passwd.Clear();
                        txt_repeatPasswd.Clear();
                        txt_role.Clear();
                        txt_err.Text = null;
                    }
                    else
                    {
                        MessageBox.Show("Please Check Again.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (SqlException ex)
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
    }
}
