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
    /// Interaction logic for ChangePw.xaml
    /// </summary>
    public partial class ChangePw : Window
    {
        public ChangePw()
        {
            InitializeComponent();
            Loaded += ChangePw_Loaded;
        }

        private void ChangePw_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
        }
        string oldPw;

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();

        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                this.DragMove();
            }
            catch(System.InvalidOperationException)
            {
               
            }
        }

        private void btn_cancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            connection.Open();
            command = new SqlCommand("select Password from users where Username = '" + txt_username.Text + "' ", connection);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                oldPw = dr.GetString(0);
            }
            connection.Close();
            string pw = txt_newpwrepeat.Password;

            try
            {
                if (string.IsNullOrEmpty(txt_username.Text))
                {
                    txt_err.Text = "Username Cannot Be Empty.";
                    txt_username.Focus();
                }
                else if (string.IsNullOrEmpty(txt_oldpw.Password))
                {
                    txt_err.Text = "Old Password Cannot Be Empty.";
                    txt_oldpw.Focus();
                }
                else if (string.IsNullOrEmpty(txt_newpw.Password))
                {
                    txt_err.Text = "Enter New Password.";
                    txt_newpw.Focus();
                }
                else if (string.IsNullOrEmpty(txt_newpwrepeat.Password))
                {
                    txt_err.Text = "Re-Type New Password.";
                    txt_newpwrepeat.Focus();
                }
                else if (oldPw != txt_oldpw.Password.ToString())
                {
                    txt_err.Text = "Old Password Is Incorrect.";
                    txt_oldpw.Focus();
                }
                else if(txt_newpw.Password != txt_newpwrepeat.Password)
                {
                    txt_err.Text = "New Passwords Doen't Match.";
                    txt_newpw.Focus();
                    txt_newpwrepeat.Focus();
                }
                else
                {
                    connection.Open();

                    command = new SqlCommand("update users set Password = '"+pw+"' where username = '"+txt_username.Text+"' ", connection);
                    int i = command.ExecuteNonQuery();
                    if(i == 1)
                    {
                        MessageBox.Show("Password Successfully Changed.", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                        txt_err.Text = null;
                        txt_username.Text = null;
                        txt_oldpw.Password = null;
                        txt_newpw.Password = null;
                        txt_newpwrepeat.Password = null;
                    }
                    else
                    {
                        MessageBox.Show("Please Check Username.");
                        txt_username.Focus();
                        txt_oldpw.Focus();
                    }
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Database errors. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch(Exception)
            {
                MessageBox.Show("Error Occured. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
