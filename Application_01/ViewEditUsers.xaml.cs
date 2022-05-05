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

namespace Application_01
{
    /// <summary>
    /// Interaction logic for ViewEditUsers.xaml
    /// </summary>
    public partial class ViewEditUsers : Window
    {
        public ViewEditUsers()
        {
            InitializeComponent();
            Loaded += ViewEditUsers_Loaded;
        }

        private void ViewEditUsers_Loaded(object sender, RoutedEventArgs e)
        {
            userStack.Children.Clear();
            ViewUsers obj = new ViewUsers();
            userStack.Children.Add(obj);
        }

        private void btn_goBack_Click(object sender, RoutedEventArgs e)
        {
            Close();
            Home obj = new Home();
            obj.ShowDialog();
        }

        private void btn_viewUsers_Click(object sender, RoutedEventArgs e)
        {
            userStack.Children.Clear();
            ViewUsers obj = new ViewUsers();
            userStack.Children.Add(obj);
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

        private void btn_editUsers_Click(object sender, RoutedEventArgs e)
        {
            userStack.Children.Clear();
            EditUser obj = new EditUser();
            userStack.Children.Add(obj);
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
    }
}
