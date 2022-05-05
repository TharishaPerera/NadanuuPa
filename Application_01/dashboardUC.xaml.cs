using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace Application_01
{
    /// <summary>
    /// Interaction logic for dashboardUC.xaml
    /// </summary>
    public partial class dashboardUC : UserControl
    {
        public dashboardUC()
        {
            InitializeComponent();
            Loaded += DashboardUC_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();

        private void DashboardUC_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
            calStudentNumbers();
            calUsers();
            calFees();
        }
        public void calStudentNumbers()
        {
            string male = "Male";
            string female = "Female";

            try
            {
                connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
                connection.Open();
                command = new SqlCommand("Select count(Student_Id) from Student", connection);
                double no_students = Convert.ToDouble(command.ExecuteScalar().ToString());

                command = new SqlCommand("Select count(Student_Gender) from Student where Student_Gender = '"+male+"' ", connection);
                double no_male = Convert.ToDouble(command.ExecuteScalar().ToString());

                command = new SqlCommand("Select count(Student_Gender) from Student where Student_Gender = '" + female + "' ", connection);
                double no_female = Convert.ToDouble(command.ExecuteScalar().ToString());

                int male_value = Convert.ToInt32(no_male / no_students * 100);
                int female_value = Convert.ToInt32(no_female / no_students * 100);

                pbar_NoMale.Value = male_value;
                pbr_NoFemale.Value = female_value;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }

        public void calUsers()
        {
            string admin = "Admin";
            string other_user = "User";

            try
            {
                connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
                connection.Open();
                command = new SqlCommand("Select count(id) from users", connection);
                double no_users = Convert.ToDouble(command.ExecuteScalar().ToString());

                command = new SqlCommand("Select count(role) from users where role = '" + admin + "' ", connection);
                double no_admin = Convert.ToDouble(command.ExecuteScalar().ToString());

                command = new SqlCommand("Select count(role) from users where role = '" + other_user + "' ", connection);
                double no_other_user = Convert.ToDouble(command.ExecuteScalar().ToString());

                int admin_value = Convert.ToInt32(no_admin / no_users * 100);
                int other_user_value = Convert.ToInt32(no_other_user / no_users * 100);

                pbar_Admins.Value = admin_value;
                pbar_Users.Value = other_user_value;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                connection.Close();
            }
        }
        public void calFees()
        {
            try
            {
                connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
                connection.Open();

                command = new SqlCommand("Select sum(Amount) from fees", connection);
                double tot_fees = Convert.ToDouble(command.ExecuteScalar().ToString());
                double rounded_tot = Math.Round(tot_fees, 2);
                txt_TotFees.Text = rounded_tot.ToString();

                command = new SqlCommand("Select avg(Amount) from fees", connection);
                double avg_fees = Convert.ToDouble(command.ExecuteScalar().ToString());
                double rounded_avg = Math.Round(avg_fees, 2);
                txt_AvgFees.Text = rounded_avg.ToString();
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
    }
}
