using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace Peaker.TimeManagment.Data
{
    abstract public class DataAccess
    {
        protected string ConnectionString {
            get { return ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString; }
        }
        protected IEnumerable<T> Retrieve<T>(Func<IDataRecord, T> factory, string sql, Dictionary<string, object> parameters = null, bool isStoredProcedure = true)
        {
            using (var cn = new MySqlConnection(ConnectionString))
            using (var cmd = new MySqlCommand(sql, cn))
            {
                if (isStoredProcedure)
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                }
                else {
                    cmd.CommandType = CommandType.Text;
                }
                if (parameters != null)
                {
                    foreach (var param in parameters)
                    {
                        cmd.Parameters.Add(new MySqlParameter(param.Key, param.Value));
                    }
                }
                cn.Open();
                using (var rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                        yield return factory(rdr);
                    rdr.Close();
                }
            }
        }

        protected T RetrieveSingle<T>(Func<IDataRecord, T> factory, string sql, Dictionary<string, object> parameters) {
            var single = Retrieve(factory, sql, parameters);
            if (single.Count() == 1)
            {
                return single.First();
            }
            else {
                if (single.Count() > 1)
                {
                    throw new ArgumentOutOfRangeException("Multiple results returned.");
                }
                else {
                    return default(T);
                }
            }
        }

        protected IEnumerable<T> Retrieve<T>(string sql, Dictionary<string, object> parameters)
        {
            List<T> results = new List<T>();
            using (var cn = new MySqlConnection(ConnectionString))
            using (var cmd = new MySqlCommand(sql, cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                foreach (var param in parameters)
                {
                    cmd.Parameters.Add(new MySqlParameter(param.Key, param.Value));
                }

                cn.Open();
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows) {
                        while (reader.Read())
                        {
                            results.Add((T)reader[0]);
                        }
                    }
                }
            }
            return results.AsEnumerable();
        }


        protected T RetrieveSingleConvertible<T>(string sql, Dictionary<string, object> parameters)
        {
            var single = RetrieveConvertible<T>(sql, parameters);
            if (single.Count() == 1)
            {
                return single.First();
            }
            else
            {
                throw new ArgumentOutOfRangeException("Multiple results returned.");
            }
        }

        /// <summary>
        /// Use this method to retrieve types that implement IConvertible (Int32, string)
        /// </summary>
        /// <typeparam name="T">Expected Type</typeparam>
        /// <param name="sql">Stored Procedure</param>
        /// <param name="parameters">Dictionary of parameters.</param>
        /// <returns>IEnumerable of T from stored procedure.</returns>
        protected IEnumerable<T> RetrieveConvertible<T>(string sql, Dictionary<string, object> parameters)
        {
            List<T> results = new List<T>();
            using (var cn = new MySqlConnection(ConnectionString))
            using (var cmd = new MySqlCommand(sql, cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                foreach (var param in parameters)
                {
                    cmd.Parameters.Add(new MySqlParameter(param.Key, param.Value));
                }

                cn.Open();
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            results.Add((T)Convert.ChangeType(reader[0], typeof(T)));
                        }
                    }
                }
            }
            return results.AsEnumerable();
        }
        

        protected void ExecuteNonQuery( string sql, Dictionary<string, object> updateParameters)
        {
            using (var cn = new MySqlConnection(ConnectionString))
            using (var cmd = new MySqlCommand(sql, cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                if (updateParameters != null)
                {
                    foreach (var param in updateParameters)
                    {
                        cmd.Parameters.Add(new MySqlParameter(param.Key, param.Value));
                    }
                }
                cn.Open();
                cmd.ExecuteNonQuery();
            }

        }

        protected Dictionary<string, object> GetSingleParameter(string key, object value)
        {
            var paramDictionary = new Dictionary<string, object>();
            paramDictionary.Add(key, value);
            return paramDictionary;
        }

    }
}