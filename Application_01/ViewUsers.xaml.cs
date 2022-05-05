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
    /// Interaction logic for ViewUsers.xaml
    /// </summary>
    public partial class ViewUsers : UserControl
    {
        public ViewUsers()
        {
            InitializeComponent();
            Loaded += ViewUsers_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void ViewUsers_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
            viewUsers();
        }

        public void viewUsers()
        {
            connection.Open();
            da = new SqlDataAdapter("select * from Users", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ViewUsers_Datagrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }
    }
}
