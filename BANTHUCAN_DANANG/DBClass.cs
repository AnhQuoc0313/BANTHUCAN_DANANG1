using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace BANTHUCAN_DANANG
{
    public class DBClass
    {
        // thu phuong an voi localdb
        public static DataTable tbGioHang = new DataTable();
        public static SqlConnection OpenConn()
        {
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString);
            myCon.Open();
            return myCon;
        }
        public DataTable GetData1(string sql)
        {
            //lay chuoi config
            string config = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
            //tao doi tuong ket noi thong qua chuoi config
            SqlConnection sqlConnection = new SqlConnection(config);
            sqlConnection.Open();
            //tao doi tuong dataadapter de truy van du lieu
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, sqlConnection);
            //tao doi tuong dataset chua du lu tu sqladapter
            DataSet dataSet = new DataSet();
            //tu sqladapter truyen du lieu vao dataset
            sqlDataAdapter.Fill(dataSet);
            //tra ve bang du lieu
            return dataSet.Tables[0];
        }


        public DataTable GetData(string sql)
        {
            string config = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(config);
            sqlConnection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, sqlConnection);
            sqlConnection.Close();
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);
            return dataSet.Tables[0];
        }

        public void RunQuery(string sql)
        {
            SqlConnection sqlConnection = null;
            try
            {
                string config = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
                sqlConnection = new SqlConnection(config);
                sqlConnection.Open();
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.Text;
                    sqlCommand.ExecuteNonQuery();
                }
            }
            catch (Exception e)
            {
                Console.Write(e.Message);
            }
            finally
            {
                if (sqlConnection != null)
                {
                    sqlConnection.Close();
                }
            }
        }

        public void GetRecord(string sql)
        {
            SqlConnection sqlConnection = null;
            SqlDataReader sqlDataReader = null;
            try
            {
                string config = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
                sqlConnection = new SqlConnection(config);
                sqlConnection.Open();
                using (SqlCommand sqlCommand = new SqlCommand(sql, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.Text;
                    sqlDataReader = sqlCommand.ExecuteReader();
                }
            }
            catch (Exception e)
            {
                Console.Write(e.Message);
            }
            finally
            {
                if (sqlConnection != null)
                {
                    sqlConnection.Close();
                }
            }
        }
    }
}