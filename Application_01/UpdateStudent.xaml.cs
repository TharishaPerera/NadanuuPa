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
    /// Interaction logic for UpdateStudent.xaml
    /// </summary>
    public partial class UpdateStudent : UserControl
    {
        public UpdateStudent()
        {
            InitializeComponent();
            Loaded += UpdateStudent_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void UpdateStudent_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");

            connection.Open();
            da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            US_DataGrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                String gender = txt_gender.Text.ToUpper();

                if (string.IsNullOrEmpty(txt_id.Text))
                {
                    txt_err.Text = "Student ID cannot be blank";
                    txt_id.Focus();
                }
                else if (txt_id.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student ID Cannot Have Letters";
                    txt_id.Focus();
                }
                else if (string.IsNullOrEmpty(txt_name.Text))
                {
                    txt_err.Text = "Student name cannot be empty";
                    txt_name.Focus();
                }
                else if (txt_name.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Student name cannot have numbers";
                    txt_name.Focus();
                }
                else if (string.IsNullOrEmpty(txt_gender.Text))
                {
                    txt_err.Text = "Student gender cannot be empty";
                    txt_gender.Focus();
                }
                else if (txt_gender.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Student gender cannot have letters";
                    txt_gender.Focus();
                }
                else if (gender != "MALE" && gender != "FEMALE")
                {
                    txt_err.Text = "Student gender must be 'Male' or 'Female'";
                    txt_gender.Focus();
                }
                else if (string.IsNullOrEmpty(txt_grade.Text))
                {
                    txt_err.Text = "Student grade cannot be empty";
                    txt_grade.Focus();
                }
                else if (txt_grade.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "Student grade cannot have letters";
                    txt_grade.Focus();
                }
                else if (Convert.ToInt32(txt_grade.Text) > 13)
                {
                    txt_err.Text = "Maximum student grade is 13 ";
                    txt_grade.Focus();
                }
                else if (!Regex.IsMatch(txt_tp.Text, @"^(?:7|0|(?:\+94))[0-9]{8,9}$"))
                {
                    txt_err.Text = "Enter valid telephone number";
                    txt_tp.Focus();
                }
                else if (string.IsNullOrEmpty(txt_address.Text))
                {
                    txt_err.Text = "Address cannot be empty";
                    txt_address.Focus();
                }
                else
                {
                    connection.Open();

                    command = new SqlCommand("update student set Student_Name = '" + txt_name.Text + "', Student_Gender = '" + gender + "', Grade = '" + txt_grade.Text + "', Telephone = '" + txt_tp.Text + "', Address = '" + txt_address.Text + "' where Student_Id ='"+txt_id.Text+"' ", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("Data updated successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                        da = new SqlDataAdapter("select Student_Id, Student_Name from student", connection);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        US_DataGrid.ItemsSource = null;
                        US_DataGrid.Items.Refresh();
                        US_DataGrid.ItemsSource = dt.DefaultView;
                    }
                    else
                    {
                        MessageBox.Show("Data cannot be updated. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    txt_id.Clear();
                    txt_name.Clear();
                    txt_gender.Clear();
                    txt_grade.Clear();
                    txt_tp.Clear();
                    txt_address.Clear();
                    txt_err.Text = "";
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

        private void btn_clear_Click(object sender, RoutedEventArgs e)
        {
            txt_id.Clear();
            txt_name.Clear();
            txt_gender.Clear();
            txt_grade.Clear();
            txt_tp.Clear();
            txt_address.Clear();
            txt_err.Text = "";
        }

        private void btn_go_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("select * from Student where Student_Id = '" + txt_id.Text + "' ", connection);
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    txt_name.Text = dr.GetString(1);
                    txt_gender.Text = dr.GetString(2);
                    txt_grade.Text = dr.GetInt32(3).ToString();
                    txt_tp.Text = "0" + dr.GetInt32(4).ToString();
                    txt_address.Text = dr.GetString(5);
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
    }
}
