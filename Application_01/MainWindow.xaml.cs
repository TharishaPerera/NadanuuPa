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
using System.Configuration;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        public MainWindow()
        {
            InitializeComponent();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
            Loaded += MainWindow_Loaded;
        }

        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            txt_username.Focus();
        }

        private bool VerifyUser(string username, string password)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select Status from users where username = '" + username + "' and password = '" + password + "' ";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (Convert.ToBoolean(dr["Status"]) == true)
                    return true;
                else
                    return false;
            }
            else
            {
                return false;
            }
        }

        private void btn_login_Click(object sender, RoutedEventArgs e)
        {

            UserType.username = txt_username.Text;
            UserType.password = txt_password.Password;

            if (string.IsNullOrEmpty(txt_username.Text) & string.IsNullOrEmpty(txt_password.Password))
            {
                MessageBox.Show("Please Enter Username & Password.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                txt_username.Focus();
                txt_password.Focus();
            }
            else if (string.IsNullOrEmpty(txt_username.Text))
            {
                MessageBox.Show("Username Cannot Be Empty", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                txt_username.Focus();
            }
            else if(string.IsNullOrEmpty(txt_password.Password))
            {
                MessageBox.Show("Password Cannot Be Empty", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                txt_password.Focus();
            }
            else 
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }

                if (VerifyUser(txt_username.Text, txt_password.Password))
                {
                    MessageBox.Show("Login Successfull", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                    Hide();
                    Home obj = new Home();
                    obj.ShowDialog();

                }
                else
                {
                    MessageBox.Show("Incorrect Username Or Password!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
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
                
            }
        }

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Exit?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
            else
            {

            }
        }

        private void btn_minimize_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                this.WindowState = WindowState.Minimized;
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void txt_changePass_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            ChangePw obj = new ChangePw();
            obj.ShowDialog();
        }

        private void txt_reguser_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            RegisterUser obj = new RegisterUser();
            obj.ShowDialog();
        }
    }
}
