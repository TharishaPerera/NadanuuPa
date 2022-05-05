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
    /// Interaction logic for SendMsg.xaml
    /// </summary>
    public partial class SendMsg : UserControl
    {
        public SendMsg()
        {
            InitializeComponent();
            Loaded += SendMsg_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void SendMsg_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();
            da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SendMsg_DataGrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_id.Text = "";
            txt_tp.Text = "";
            txt_msg.Text = "";
        }

        private void btn_send_Click(object sender, RoutedEventArgs e)
        {

        }

        private void btn_go_Click(object sender, RoutedEventArgs e)
        {
            
            try
            {
                connection.Open();

                command = new SqlCommand("select Telephone from Student where Student_Id = '" + txt_id.Text + "' ", connection);
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    txt_tp.Text = "0" + dr.GetInt32(0).ToString();
                }
            }
            catch (SqlException)
            {
                MessageBox.Show("Database errors. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error Occured. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                connection.Close();
            }
        }

        private void cmb_msg_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                string cmbItem = (cmb_msg.SelectedItem as ComboBoxItem).Content.ToString();
                if (cmbItem == "Template 1")
                {
                    txt_msg.Text = "Template 1\nExample Text";
                }
                else if (cmbItem == "Template 2")
                {
                    txt_msg.Text = "Template 2\nExample Text";
                }
                else if (cmbItem == "Template 3")
                {
                    txt_msg.Text = "Template 3\nExample Text";
                }
                else if (cmbItem == "New Message")
                {
                    txt_msg.Text = "";
                    txt_msg.Focus();
                }

            }
            catch (System.NullReferenceException)
            {

            }
        }

        private void rbn_individual_Checked(object sender, RoutedEventArgs e)
        {
            txt_id_grade.Text = "Student ID";
        }

        private void rbn_all_Checked(object sender, RoutedEventArgs e)
        {
            txt_id_grade.Text = "Select Grade";
        }
    }
}
