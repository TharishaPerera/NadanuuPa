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
using System.Text.RegularExpressions;

namespace Application_01
{
    /// <summary>
    /// Interaction logic for ViewStudents.xaml
    /// </summary>
    public partial class ViewStudents : UserControl
    {
        public ViewStudents()
        {
            InitializeComponent();
            Loaded += ViewStudents_Loaded;
        }

        private void ViewStudents_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
        }

        SqlConnection connection = new SqlConnection();
        SqlDataAdapter da = new SqlDataAdapter();
        string only_number;
        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_sName.Text = null;
            cmb_grade.Text = null;
            ViewStudent_Datagrid.ItemsSource = null;
            ViewStudent_Datagrid.Items.Refresh();
        }

        private void btn_search_Click(object sender, RoutedEventArgs e)
        {

            if (!string.IsNullOrEmpty(cmb_grade.Text))
            {
                only_number = Regex.Replace(cmb_grade.Text, "[^0-9]+", string.Empty);
            }

            connection.Open();
            if (string.IsNullOrEmpty(cmb_grade.Text))
            {
                da = new SqlDataAdapter("select * from student where student_Name = '" + txt_sName.Text + "' ", connection);
            }
            else if (string.IsNullOrEmpty(txt_sName.Text))
            {
                da = new SqlDataAdapter("select * from student where Grade = '" + only_number + "' ", connection);
            }
            else
            {
                da = new SqlDataAdapter("select * from student where student_Name = '" + txt_sName.Text + "' AND Grade = '"+only_number+"' ", connection);
            }
            DataTable dt = new DataTable();
            da.Fill(dt);
            ViewStudent_Datagrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_searchAll_Click(object sender, RoutedEventArgs e)
        {
            txt_sName.Text = "";
            connection.Open();
            da = new SqlDataAdapter("select * from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ViewStudent_Datagrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }
    }
}
