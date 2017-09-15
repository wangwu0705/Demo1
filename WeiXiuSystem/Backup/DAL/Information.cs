using System;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using Maticsoft.DBUtility;//Please add references
namespace WXXT.DAL
{
	/// <summary>
	/// 数据访问类:Information
	/// </summary>
	public partial class Information
	{
		public Information()
		{}
		#region  BasicMethod

		/// <summary>
		/// 得到最大ID
		/// </summary>
		public int GetMaxId()
		{
		return DbHelperSQL.GetMaxID("ID", "Information"); 
		}

		/// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int ID)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) from Information");
			strSql.Append(" where ID=@ID");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
			parameters[0].Value = ID;

			return DbHelperSQL.Exists(strSql.ToString(),parameters);
		}


		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(WXXT.Model.Information model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("insert into Information(");
			strSql.Append("number,project,completion,baozhiqi,money,builder,Bprincipal,Bphone,designer,Dprincipal,Dphone,supervisor,Sphone,BeforetherepairImg,AftertherepairImg)");
			strSql.Append(" values (");
			strSql.Append("@number,@project,@completion,@baozhiqi,@money,@builder,@Bprincipal,@Bphone,@designer,@Dprincipal,@Dphone,@supervisor,@Sphone,@BeforetherepairImg,@AftertherepairImg)");
			strSql.Append(";select @@IDENTITY");
			SqlParameter[] parameters = {
					new SqlParameter("@number", SqlDbType.Int,4),
					new SqlParameter("@project", SqlDbType.VarChar,50),
					new SqlParameter("@completion", SqlDbType.DateTime),
					new SqlParameter("@baozhiqi", SqlDbType.VarChar,50),
					new SqlParameter("@money", SqlDbType.VarChar,50),
					new SqlParameter("@builder", SqlDbType.VarChar,50),
					new SqlParameter("@Bprincipal", SqlDbType.VarChar,50),
					new SqlParameter("@Bphone", SqlDbType.VarChar,50),
					new SqlParameter("@designer", SqlDbType.VarChar,50),
					new SqlParameter("@Dprincipal", SqlDbType.VarChar,50),
					new SqlParameter("@Dphone", SqlDbType.VarChar,50),
					new SqlParameter("@supervisor", SqlDbType.VarChar,50),
					new SqlParameter("@Sphone", SqlDbType.VarChar,50),
					new SqlParameter("@BeforetherepairImg", SqlDbType.VarChar,50),
					new SqlParameter("@AftertherepairImg", SqlDbType.VarChar,50)};
			parameters[0].Value = model.number;
			parameters[1].Value = model.project;
			parameters[2].Value = model.completion;
			parameters[3].Value = model.baozhiqi;
			parameters[4].Value = model.money;
			parameters[5].Value = model.builder;
			parameters[6].Value = model.Bprincipal;
			parameters[7].Value = model.Bphone;
			parameters[8].Value = model.designer;
			parameters[9].Value = model.Dprincipal;
			parameters[10].Value = model.Dphone;
			parameters[11].Value = model.supervisor;
			parameters[12].Value = model.Sphone;
			parameters[13].Value = model.BeforetherepairImg;
			parameters[14].Value = model.AftertherepairImg;

			object obj = DbHelperSQL.GetSingle(strSql.ToString(),parameters);
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 更新一条数据
		/// </summary>
		public bool Update(WXXT.Model.Information model)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("update Information set ");
			strSql.Append("number=@number,");
			strSql.Append("project=@project,");
			strSql.Append("completion=@completion,");
			strSql.Append("baozhiqi=@baozhiqi,");
			strSql.Append("money=@money,");
			strSql.Append("builder=@builder,");
			strSql.Append("Bprincipal=@Bprincipal,");
			strSql.Append("Bphone=@Bphone,");
			strSql.Append("designer=@designer,");
			strSql.Append("Dprincipal=@Dprincipal,");
			strSql.Append("Dphone=@Dphone,");
			strSql.Append("supervisor=@supervisor,");
			strSql.Append("Sphone=@Sphone,");
			strSql.Append("BeforetherepairImg=@BeforetherepairImg,");
			strSql.Append("AftertherepairImg=@AftertherepairImg");
			strSql.Append(" where ID=@ID");
			SqlParameter[] parameters = {
					new SqlParameter("@number", SqlDbType.Int,4),
					new SqlParameter("@project", SqlDbType.VarChar,50),
					new SqlParameter("@completion", SqlDbType.DateTime),
					new SqlParameter("@baozhiqi", SqlDbType.VarChar,50),
					new SqlParameter("@money", SqlDbType.VarChar,50),
					new SqlParameter("@builder", SqlDbType.VarChar,50),
					new SqlParameter("@Bprincipal", SqlDbType.VarChar,50),
					new SqlParameter("@Bphone", SqlDbType.VarChar,50),
					new SqlParameter("@designer", SqlDbType.VarChar,50),
					new SqlParameter("@Dprincipal", SqlDbType.VarChar,50),
					new SqlParameter("@Dphone", SqlDbType.VarChar,50),
					new SqlParameter("@supervisor", SqlDbType.VarChar,50),
					new SqlParameter("@Sphone", SqlDbType.VarChar,50),
					new SqlParameter("@BeforetherepairImg", SqlDbType.VarChar,50),
					new SqlParameter("@AftertherepairImg", SqlDbType.VarChar,50),
					new SqlParameter("@ID", SqlDbType.Int,4)};
			parameters[0].Value = model.number;
			parameters[1].Value = model.project;
			parameters[2].Value = model.completion;
			parameters[3].Value = model.baozhiqi;
			parameters[4].Value = model.money;
			parameters[5].Value = model.builder;
			parameters[6].Value = model.Bprincipal;
			parameters[7].Value = model.Bphone;
			parameters[8].Value = model.designer;
			parameters[9].Value = model.Dprincipal;
			parameters[10].Value = model.Dphone;
			parameters[11].Value = model.supervisor;
			parameters[12].Value = model.Sphone;
			parameters[13].Value = model.BeforetherepairImg;
			parameters[14].Value = model.AftertherepairImg;
			parameters[15].Value = model.ID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int ID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Information ");
			strSql.Append(" where ID=@ID");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
			parameters[0].Value = ID;

			int rows=DbHelperSQL.ExecuteSql(strSql.ToString(),parameters);
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		/// <summary>
		/// 批量删除数据
		/// </summary>
		public bool DeleteList(string IDlist )
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("delete from Information ");
			strSql.Append(" where ID in ("+IDlist + ")  ");
			int rows=DbHelperSQL.ExecuteSql(strSql.ToString());
			if (rows > 0)
			{
				return true;
			}
			else
			{
				return false;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WXXT.Model.Information GetModel(int ID)
		{
			
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select  top 1 ID,number,project,completion,baozhiqi,money,builder,Bprincipal,Bphone,designer,Dprincipal,Dphone,supervisor,Sphone,BeforetherepairImg,AftertherepairImg from Information ");
			strSql.Append(" where ID=@ID");
			SqlParameter[] parameters = {
					new SqlParameter("@ID", SqlDbType.Int,4)
			};
			parameters[0].Value = ID;

			WXXT.Model.Information model=new WXXT.Model.Information();
			DataSet ds=DbHelperSQL.Query(strSql.ToString(),parameters);
			if(ds.Tables[0].Rows.Count>0)
			{
				return DataRowToModel(ds.Tables[0].Rows[0]);
			}
			else
			{
				return null;
			}
		}


		/// <summary>
		/// 得到一个对象实体
		/// </summary>
		public WXXT.Model.Information DataRowToModel(DataRow row)
		{
			WXXT.Model.Information model=new WXXT.Model.Information();
			if (row != null)
			{
				if(row["ID"]!=null && row["ID"].ToString()!="")
				{
					model.ID=int.Parse(row["ID"].ToString());
				}
				if(row["number"]!=null && row["number"].ToString()!="")
				{
					model.number=int.Parse(row["number"].ToString());
				}
				if(row["project"]!=null)
				{
					model.project=row["project"].ToString();
				}
				if(row["completion"]!=null && row["completion"].ToString()!="")
				{
					model.completion=DateTime.Parse(row["completion"].ToString());
				}
				if(row["baozhiqi"]!=null)
				{
					model.baozhiqi=row["baozhiqi"].ToString();
				}
				if(row["money"]!=null)
				{
					model.money=row["money"].ToString();
				}
				if(row["builder"]!=null)
				{
					model.builder=row["builder"].ToString();
				}
				if(row["Bprincipal"]!=null)
				{
					model.Bprincipal=row["Bprincipal"].ToString();
				}
				if(row["Bphone"]!=null)
				{
					model.Bphone=row["Bphone"].ToString();
				}
				if(row["designer"]!=null)
				{
					model.designer=row["designer"].ToString();
				}
				if(row["Dprincipal"]!=null)
				{
					model.Dprincipal=row["Dprincipal"].ToString();
				}
				if(row["Dphone"]!=null)
				{
					model.Dphone=row["Dphone"].ToString();
				}
				if(row["supervisor"]!=null)
				{
					model.supervisor=row["supervisor"].ToString();
				}
				if(row["Sphone"]!=null)
				{
					model.Sphone=row["Sphone"].ToString();
				}
				if(row["BeforetherepairImg"]!=null)
				{
					model.BeforetherepairImg=row["BeforetherepairImg"].ToString();
				}
				if(row["AftertherepairImg"]!=null)
				{
					model.AftertherepairImg=row["AftertherepairImg"].ToString();
				}
			}
			return model;
		}

		/// <summary>
		/// 获得数据列表
		/// </summary>
		public DataSet GetList(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ID,number,project,completion,baozhiqi,money,builder,Bprincipal,Bphone,designer,Dprincipal,Dphone,supervisor,Sphone,BeforetherepairImg,AftertherepairImg ");
			strSql.Append(" FROM Information ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" ID,number,project,completion,baozhiqi,money,builder,Bprincipal,Bphone,designer,Dprincipal,Dphone,supervisor,Sphone,BeforetherepairImg,AftertherepairImg ");
			strSql.Append(" FROM Information ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/// <summary>
		/// 获取记录总数
		/// </summary>
		public int GetRecordCount(string strWhere)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select count(1) FROM Information ");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			object obj = DbHelperSQL.GetSingle(strSql.ToString());
			if (obj == null)
			{
				return 0;
			}
			else
			{
				return Convert.ToInt32(obj);
			}
		}
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetListByPage(string strWhere, string orderby, int startIndex, int endIndex)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("SELECT * FROM ( ");
			strSql.Append(" SELECT ROW_NUMBER() OVER (");
			if (!string.IsNullOrEmpty(orderby.Trim()))
			{
				strSql.Append("order by T." + orderby );
			}
			else
			{
				strSql.Append("order by T.ID desc");
			}
			strSql.Append(")AS Row, T.*  from Information T ");
			if (!string.IsNullOrEmpty(strWhere.Trim()))
			{
				strSql.Append(" WHERE " + strWhere);
			}
			strSql.Append(" ) TT");
			strSql.AppendFormat(" WHERE TT.Row between {0} and {1}", startIndex, endIndex);
			return DbHelperSQL.Query(strSql.ToString());
		}

		/*
		/// <summary>
		/// 分页获取数据列表
		/// </summary>
		public DataSet GetList(int PageSize,int PageIndex,string strWhere)
		{
			SqlParameter[] parameters = {
					new SqlParameter("@tblName", SqlDbType.VarChar, 255),
					new SqlParameter("@fldName", SqlDbType.VarChar, 255),
					new SqlParameter("@PageSize", SqlDbType.Int),
					new SqlParameter("@PageIndex", SqlDbType.Int),
					new SqlParameter("@IsReCount", SqlDbType.Bit),
					new SqlParameter("@OrderType", SqlDbType.Bit),
					new SqlParameter("@strWhere", SqlDbType.VarChar,1000),
					};
			parameters[0].Value = "Information";
			parameters[1].Value = "ID";
			parameters[2].Value = PageSize;
			parameters[3].Value = PageIndex;
			parameters[4].Value = 0;
			parameters[5].Value = 0;
			parameters[6].Value = strWhere;	
			return DbHelperSQL.RunProcedure("UP_GetRecordByPage",parameters,"ds");
		}*/

		#endregion  BasicMethod
		#region  ExtensionMethod

		#endregion  ExtensionMethod
	}
}

