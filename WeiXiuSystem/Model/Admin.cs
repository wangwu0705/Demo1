using System;
namespace WXXT.Model
{
	/// <summary>
	/// Admin:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Admin
	{
		public Admin()
		{}
		#region Model
		private int _id;
		private string _a_name;
		private string _a_mima;
		/// <summary>
		/// 
		/// </summary>
		public int ID
		{
			set{ _id=value;}
			get{return _id;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string A_name
		{
			set{ _a_name=value;}
			get{return _a_name;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string A_mima
		{
			set{ _a_mima=value;}
			get{return _a_mima;}
		}
		#endregion Model

	}
}

