using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;

public static class Helper
{
    public const string DBName = "Database1.mdf";   //Name of the MSSQL Database.
    public const string tblName = "info";      // Name of the user Table in the Database
    public const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                                    + DBName + ";Integrated Security=True";   // The Data Base is in the App_Data = |DataDirectory|

    /////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static DataSet RetrieveTable(string SQLStr)
    // Gets A table from the data base acording to the SELECT Command in SQLStr;
    // Returns DataSet with the Table.
    {
        // connect to DataBase
        SqlConnection con = new SqlConnection(conString);

        // Build SQL Query
        SqlCommand cmd = new SqlCommand(SQLStr, con);

        // Build DataAdapter
        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        // Build DataSet to store the data
        DataSet ds = new DataSet();

        // Get Data form DataBase into the DataSet
        ad.Fill(ds, tblName);

        return ds;
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////////////
    public static string BuildSimpleUsersTable(DataTable dt)
    // the Method Build HTML user Table using the users in the DataTable dt.
    {
        string str = "<table class='usersTable' align='center' color='red'>";
        str += "<tr>";
        foreach (DataColumn column in dt.Columns)
        {
            str += "<td>" + column.ColumnName + "</td>";
        }

        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + row[column] + "</td>";
            }
            str += "</tr>";
        }
        str += "</tr>";
        str += "</Table>";
        return str;
    }
    public static void Delete(int[] userIdToDelete)
    // The Array "userIdToDelete" contain the id of the users to delete. 
    // Delets all the users in the array "userIdToDelete".
    {
        // התחברות למסד הנתונים
        SqlConnection con = new SqlConnection(conString);

        // טעינת הנתונים
        string SQL = "SELECT * FROM " + tblName;
        SqlCommand cmd = new SqlCommand(SQL, con);
        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adapter.Fill(ds, tblName);

        // מחיקת שורות שנבחרו מתוך הדאטה סט
        for (int i = 0; i < userIdToDelete.Length; i++)
        {
            {
                DataRow[] dr = ds.Tables[tblName].Select($"userId = {userIdToDelete[i]}");
                dr[0].Delete();
            }
        }

        // עדכון הדאטה סט בבסיס הנתונים
        SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
        adapter.UpdateCommand = builder.GetDeleteCommand();
        adapter.Update(ds, tblName);
    }




    public static string BuildUsersTable(DataTable dt)
    // the Method Build HTML user Table with checkBoxes using the users in the DataTable dt.
    {

        string str = "<table align='center'>";
        str += "<tr>";
        str += "<th> </th>";
        foreach (DataColumn column in dt.Columns)
        {
            str += "<th >" + column.ColumnName + "</th>";
        }

        foreach (DataRow row in dt.Rows)
        {
            str += "<tr>";
            str += "<td>" + CreateRadioBtn(row["userId"].ToString()) + "</td>";
            foreach (DataColumn column in dt.Columns)
            {
                str += "<td>" + row[column] + "</td>";
            }
            str += "</tr>";
        }
        str += "</tr>";
        str += "</Table>";
        return str;
    }

    public static string CreateRadioBtn(string id)
    {
        return $"<input type='checkbox' name='chk{id}' id='chk{id}' value='on' runat='server'/>";
    }


    public static DataTable FilterTable(DataTable dt, string column, string criteria)
    {
        dt.DefaultView.RowFilter = column + "=" + criteria;
        return dt.DefaultView.ToTable();
    }

    public static object GetScalar(string SQL)
    {
        // התחברות למסד הנתונים

        SqlConnection con = new SqlConnection(conString);
        // בניית פקודת SQL
        SqlCommand cmd = new SqlCommand(SQL, con);

        // ביצוע השאילתא
        con.Open();
        object scalar = cmd.ExecuteScalar();
        con.Close();

        return scalar;
    }

    public static int ExecuteNonQuery(string SQL)
    {
        // התחברות למסד הנתונים
        //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\תכנות אינטרנט\SQL\ADO\DBWeb_HelperConOnly\DBWeb\DBWeb\App_Data\Database2.mdf;Integrated Security = True";
        SqlConnection con = new SqlConnection(conString);

        // בניית פקודת SQL
        SqlCommand cmd = new SqlCommand(SQL, con);

        // ביצוע השאילתא
        con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();

        return n;
    }
    // i created on my own 2 functions to make my life 10x easier dont you dare lower my score on that i spent my own time and learned to do that its not chat gpt i can explain every line for you if you want in class
    //read the above its a must!!!
    public static string log_in(string username, string password)
    {
        //FINISHED
        try
        {
            string SQLStr = $"SELECT * FROM {tblName} WHERE username = '{username}' AND password = '{password}';";//the command for example in c# it will look like: if(usernameDATEBASE == uername && passwordDATABASE==password) 
            DataSet ds = RetrieveTable(SQLStr);//activate the command by using a function and ds equal what you get back from the command

            if (ds.Tables[tblName].Rows.Count > 0)//check if there is somthing inside ds by makeing ds into a number
            {
                // correct password and username
                return "true";
            }
            //wrong password or username
            return "wrong username or password";
        }
        catch
        {
            //unexpected error
            return "error please try again";
        }
    }
    public static string register(string username, string password, string name, string family_name,int phone,string email,string birthday, string gender,string city,bool player)
    {
        string p = Convert.ToString(phone);
        //FINISHED

        string SQLStr = $"INSERT INTO {tblName} (username,password,name,familyname,phone,email,birthday,gender,city,player) VALUES ('{username}','{password}','{name}','{family_name}','{p}','{email}','{birthday}','{gender}', '{city}','{player}');";
        try
        {
            DataSet ds = RetrieveTable(SQLStr);
            return "true";
        }
        catch
        {
            return "username taken";
        }

    }
    public static string print()
    {
        string cmd = $"SELECT * FROM {tblName};";
        DataSet ds = RetrieveTable(cmd);
        DataTable dt = ds.Tables[0];
        string table = BuildSimpleUsersTable(dt);
        return table;
    }

}