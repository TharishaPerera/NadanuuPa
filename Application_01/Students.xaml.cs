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
using System.Data;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for Students.xaml
    /// </summary>
    public partial class Students : Window
    {
        public Students()
        {
            InitializeComponent();
            Loaded += Students_Loaded;

            CustomStack.Children.Clear();
            StudentImg obj = new StudentImg();
            CustomStack.Children.Add(obj);
        }

        private void Students_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
        }

        SqlConnection connection = new SqlConnection();
        SqlDataAdapter da = new SqlDataAdapter();

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

        private void btn_exit_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Exit?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if(result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }

        private void btn_bottum_exit_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Exit?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if (result == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }

        private void btn_back_Click(object sender, RoutedEventArgs e)
        {
            Close();
            Home obj = new Home();
            obj.ShowDialog();
        }

        private void btn_registration_Click(object sender, RoutedEventArgs e)
        {
            CustomStack.Children.Clear();
            SRegistration obj = new SRegistration();
            CustomStack.Children.Add(obj);
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

        private void btn_viewStudents_Click(object sender, RoutedEventArgs e)
        {
            CustomStack.Children.Clear();
            ViewStudents obj = new ViewStudents();
            CustomStack.Children.Add(obj);
        }

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void btn_search_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void btn_searchAll_Click(object sender, RoutedEventArgs e)
        {
            
        }

        private void btn_update_Click(object sender, RoutedEventArgs e)
        {
            CustomStack.Children.Clear();
            UpdateStudent obj = new UpdateStudent();
            CustomStack.Children.Add(obj);
        }

        private void btn_delete_Click(object sender, RoutedEventArgs e)
        {
            CustomStack.Children.Clear();
            DeleteStudent obj = new DeleteStudent();
            CustomStack.Children.Add(obj);
        }

        private void txt_students_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            CustomStack.Children.Clear();
            StudentImg obj = new StudentImg();
            CustomStack.Children.Add(obj);
        }
    }
}
