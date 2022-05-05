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
    /// Interaction logic for ViewAttendance.xaml
    /// </summary>
    public partial class ViewAttendance : UserControl
    {
        public ViewAttendance()
        {
            InitializeComponent();
            Loaded += ViewAttendance_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void ViewAttendance_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();
            da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ViewAttendance_Data.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_search_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                connection.Open();
                if (string.IsNullOrEmpty(cmb_month.Text))
                {
                    if (rbn_sid.IsChecked == true)
                    {
                        da = new SqlDataAdapter("select Student_Name, Grade, Day, Month, Year, Date_Updated from Student, Attendance where Student.Student_Id = Attendance.SID AND SID = '" + txt_id_grade.Text + "' ", connection);
                    }
                    else if (rbn_grade.IsChecked == true)
                    {
                        da = new SqlDataAdapter("select Student_Name, Grade, Day, Month, Year, Date_Updated from Student, Attendance where Student.Student_Id = Attendance.SID AND Grade = '" + txt_id_grade.Text + "' ", connection);
                    }
                    else if (rbn_all.IsChecked == true)
                    {
                        da = new SqlDataAdapter("select Student_Name, Grade, Day, Month, Year, Date_Updated from Student, Attendance where Student.Student_Id = Attendance.SID ", connection);
                    }
                }
                else
                {
                    if (rbn_sid.IsChecked == true)
                    {
                        da = new SqlDataAdapter("select Student_Name, Grade, Day, Month, Year, Date_Updated from Student, Attendance where Student.Student_Id = Attendance.SID AND SID = '" + txt_id_grade.Text + "' AND Month = '" + cmb_month.Text + "' ", connection);
                    }
                    else if (rbn_grade.IsChecked == true)
                    {
                        da = new SqlDataAdapter("select Student_Name, Grade, Day, Month, Year, Date_Updated from Student, Attendance where Student.Student_Id = Attendance.SID AND Grade = '" + txt_id_grade.Text + "' AND Month = '" + cmb_month.Text + "' ", connection);
                    }
                    else if (rbn_month.IsChecked == true)
                    {
                        da = new SqlDataAdapter("select Student_Name, Grade, Day, Month, Year, Date_Updated from Student, Attendance where Student.Student_Id = Attendance.SID AND Month = '" + cmb_month.Text + "' ", connection);
                    }
                }
                DataTable dt = new DataTable();
                da.Fill(dt);
                ViewAttendance_Datagrid.ItemsSource = dt.DefaultView;
            }
            catch (SqlException)
            {
                MessageBox.Show("Database error. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
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

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_id_grade.Text = null;
            cmb_month.Text = null;
            ViewAttendance_Datagrid.ItemsSource = null;
            ViewAttendance_Datagrid.Items.Refresh();
        }

        private void rbn_all_Checked(object sender, RoutedEventArgs e)
        {
            if (rbn_all.IsChecked == true)
            {
                txt_id_grade.Text = null;
                cmb_month.Text = null;
                cmb_month.IsEnabled = false;
                txt_id_grade.IsEnabled = false;
            }
        }

        private void rbn_month_Checked(object sender, RoutedEventArgs e)
        {
            if (rbn_month.IsChecked == true)
                txt_id_grade.IsEnabled = false;
        }

        private void rbn_all_Unchecked(object sender, RoutedEventArgs e)
        {
            if (rbn_all.IsChecked == false)
            {
                cmb_month.IsEnabled = true;
                txt_id_grade.IsEnabled = true;
            }
        }

        private void rbn_month_Unchecked(object sender, RoutedEventArgs e)
        {
            if (rbn_month.IsChecked == false)
                txt_id_grade.IsEnabled = true;
        }

        private void btn_print_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                PrintDialog print = new PrintDialog();
                print.PrintVisual(ViewAttendance_Datagrid, "Attendance Report");
                
                //MessageBox.Show("PDF successfully exported.", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch(Exception ex)
            {
                MessageBox.Show("PDF cannot be exported.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
