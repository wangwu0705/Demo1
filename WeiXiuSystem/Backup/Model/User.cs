using System;
namespace WXXT.Model
{
	/// <summary>
	/// User:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class User
	{
		public User()
		{}
		#region Model
		private int _id;
		private string _u_name;
		private string _u_mima;
		private int _u_level;
		/// <summary>
		/// 
		/// </summary>
		public int id
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string U_name
		{
			set{ _u_name=value;}
			get{return _u_name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string U_mima
		{
			set{ _u_mima=value;}
			get{return _u_mima;}
		}
		/// <summary>
		/// 
		/// </summary>
		public int U_level
		{
			set{ _u_level=value;}
			get{return _u_level;}
		}
		#endregion Model

	}
}

