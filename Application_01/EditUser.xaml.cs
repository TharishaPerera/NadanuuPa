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
    /// Interaction logic for EditUser.xaml
    /// </summary>
    public partial class EditUser : UserControl
    {
        public EditUser()
        {
            InitializeComponent();
            Loaded += EditUser_Loaded;
        }

        SqlConnection connection = new SqlConnection();
        SqlCommand command = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        private void EditUser_Loaded(object sender, RoutedEventArgs e)
        {
            connection = new SqlConnection("Data Source=THARISHA;Initial Catalog=WPF;Integrated Security=True");
            updateTable();
        }
         public void updateTable()
        {
            connection.Open();
            da = new SqlDataAdapter("select ID, Username from Users", connection);
            DataTable dt = new DataTable();
            da.Fill(dt);
            EU_DataGrid.ItemsSource = dt.DefaultView;
            connection.Close();
        }

        private void btn_go_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                connection.Open();
                command = new SqlCommand("select * from users where ID = '" + txt_id.Text + "' ", connection);
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    txt_username.Text = dr.GetString(1);
                    txt_password.Text = dr.GetString(2);
                    txt_status.Text = Convert.ToInt32(dr.GetValue(3)).ToString();
                    txt_role.Text = dr.GetString(4);
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
            txt_username.Clear();
            txt_password.Clear();
            txt_status.Clear();
            txt_role.Clear();
            txt_err.Text = null;
        }

        private void btn_save_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txt_id.Text))
                {
                    txt_err.Text = "User ID cannot be blank";
                    txt_id.Focus();
                }
                else if (txt_id.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "User ID Cannot Have Letters";
                    txt_id.Focus();
                }
                else if (string.IsNullOrEmpty(txt_username.Text))
                {
                    txt_err.Text = "Username cannot be empty";
                    txt_username.Focus();
                }
                else if (txt_username.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Username cannot have numbers";
                    txt_username.Focus();
                }
                else if (string.IsNullOrEmpty(txt_password.Text))
                {
                    txt_err.Text = "Password cannot be empty";
                    txt_password.Focus();
                }
                else if (string.IsNullOrEmpty(txt_status.Text))
                {
                    txt_err.Text = "User status cannot be empty";
                    txt_status.Focus();
                }
                else if (txt_status.Text.Any(char.IsLetter))
                {
                    txt_err.Text = "User status should be 1 or 0";
                    txt_status.Focus();
                }
                else if (Convert.ToInt32(txt_status.Text) != 0 && Convert.ToInt32(txt_status.Text) != 1)
                {
                    txt_err.Text = "User status should be 1 or 0";
                    txt_status.Focus();
                }
                else if (string.IsNullOrEmpty(txt_role.Text))
                {
                    txt_err.Text = "Role cannot be empty";
                    txt_role.Focus();
                }
                else if (txt_role.Text.Any(char.IsDigit))
                {
                    txt_err.Text = "Role cannot have numbers";
                    txt_role.Focus();
                }
                else
                {
                    connection.Open();

                    command = new SqlCommand("update users set Username = '" + txt_username.Text + "', Password = '" + txt_password.Text + "', Status = '" + txt_status.Text + "', Role = '" + txt_role.Text.ToUpper() + "' where Id ='" + txt_id.Text + "' ", connection);
                    int i = command.ExecuteNonQuery();
                    if (i == 1)
                    {
                        MessageBox.Show("Data updated successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                        da = new SqlDataAdapter("select ID, Username from Users", connection);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        EU_DataGrid.ItemsSource = null;
                        EU_DataGrid.Items.Refresh();
                        EU_DataGrid.ItemsSource = dt.DefaultView;
                    }
                    else
                    {
                        MessageBox.Show("Data cannot be updated. Please contact the publisher.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }

                    txt_id.Clear();
                    txt_username.Clear();
                    txt_password.Clear();
                    txt_status.Clear();
                    txt_role.Clear();
                    txt_err.Text = null;
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

        private void btn_delete_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult result = MessageBox.Show("Are You Sure Want To Delete the selected user?", "Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Question, MessageBoxResult.Yes);
            if (result == MessageBoxResult.Yes)
            {
                try
                {
                    connection.Open();
                    command = new SqlCommand("delete from users where Id = '"+txt_id.Text+"' ", connection);
                    int i = command.ExecuteNonQuery();
                    if(i == 1)
                    {
                        MessageBox.Show("User Deleted Successfully", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                        txt_id.Clear();
                        txt_username.Clear();
                        txt_password.Clear();
                        txt_status.Clear();
                        txt_role.Clear();
                        txt_err.Text = null;

                        da = new SqlDataAdapter("select ID, Username from Users", connection);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        EU_DataGrid.ItemsSource = null;
                        EU_DataGrid.Items.Refresh();
                        EU_DataGrid.ItemsSource = dt.DefaultView;
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
        }
    }
}
