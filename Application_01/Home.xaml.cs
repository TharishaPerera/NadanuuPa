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
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class Home : Window
    {
        public Home()
        {
            InitializeComponent();
            Loaded += Home_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataReader dr;

        private void Home_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            HomeStack.Children.Clear();
            dashboardUC obj = new dashboardUC();
            HomeStack.Children.Add(obj);

            usertype();
        }

        public void usertype()
        {
            try
            {
                string role = "";
                string username = UserType.username;
                string password = UserType.password;

                connection.Open();
                command = new SqlCommand("Select Role from Users where Username = '" + username + "' and Password = '" + password + "' ", connection);
                dr = command.ExecuteReader();
                while (dr.Read())
                {
                    role = dr.GetString(0);
                }

                if (role != "ADMIN")
                {
                    btn_viewUsers.IsEnabled = false;
                }

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Exit?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }

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

        private void btn_dashboard_Click(object sender, RoutedEventArgs e)
        {
            HomeStack.Children.Clear();
            dashboardUC obj = new dashboardUC();
            HomeStack.Children.Add(obj);
        }

        private void btn_bottum_exit_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Exit?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }


        private void btn_students_Click(object sender, RoutedEventArgs e)
        {
            Hide();
            Students obj = new Students();
            obj.ShowDialog();
        }

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

        private void btn_sendSMS_Click(object sender, RoutedEventArgs e)
        {
            HomeStack.Children.Clear();
            SendMsg obj = new SendMsg();
            HomeStack.Children.Add(obj);
        }

        private void txtbl_home_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            HomeStack.Children.Clear();
            HomeImg obj = new HomeImg();
            HomeStack.Children.Add(obj);
        }

        private void btn_fees_Click(object sender, RoutedEventArgs e)
        {
            HomeStack.Children.Clear();
            Fees obj = new Fees();
            HomeStack.Children.Add(obj);
        }

        private void btn_attendance_Click(object sender, RoutedEventArgs e)
        {
            HomeStack.Children.Clear();
            Attendance obj = new Attendance();
            HomeStack.Children.Add(obj);
        }

        private void btn_viewUsers_Click(object sender, RoutedEventArgs e)
        {
            Hide();
            ViewEditUsers obj = new ViewEditUsers();
            obj.ShowDialog();
        }

        private void btn_logout_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Logout?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if (result == MessageBoxResult.Yes)
            {
                this.Close();
                MainWindow obj = new MainWindow();
                obj.ShowDialog();
            }
        }
    }
}
