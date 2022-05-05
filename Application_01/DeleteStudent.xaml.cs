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
    /// Interaction logic for DeleteStudent.xaml
    /// </summary>
    public partial class DeleteStudent : UserControl
    {
        public DeleteStudent()
        {
            InitializeComponent();
            Loaded += DeleteStudent_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void DeleteStudent_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();
            da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Del_DataGrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_delete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("delete from Student where Student_Id = '" + txt_sID.Text + "' ", connection);
                int i = command.ExecuteNonQuery();
                if (i == 1)
                {
                    MessageBox.Show("Data Deleted Successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                    txt_sID.Text = "";
                    da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Del_DataGrid.ItemsSource = null;
                    Del_DataGrid.Items.Refresh();
                    Del_DataGrid.ItemsSource = dt.DefaultView;
                }
                else
                {
                    MessageBox.Show("Invalid Student ID. Please Check Again.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    txt_sID.Text = "";
                    txt_sID.Focus();
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Database Error. Please Contact the Publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error Occured. Please Contact the Publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
