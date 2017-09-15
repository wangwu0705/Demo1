using System;
namespace WXXT.Model
{
	/// <summary>
	/// JihuaProject:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class JihuaProject
	{
		public JihuaProject()
		{}
		#region Model
		private int _id;
		private int _projectnum;
		private string _projectname;
		private DateTime? _starttime;
		private DateTime? _endtime;
		private decimal? _budget;
		private string _moneysource;
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
		public int ProjectNum
		{
			set{ _projectnum=value;}
			get{return _projectnum;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string ProjectName
		{
			set{ _projectname=value;}
			get{return _projectname;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? StartTime
		{
			set{ _starttime=value;}
			get{return _starttime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? EndTime
		{
			set{ _endtime=value;}
			get{return _endtime;}
		}
		/// <summary>
		/// 
		/// </summary>
		public decimal? Budget
		{
			set{ _budget=value;}
			get{return _budget;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string MoneySource
		{
			set{ _moneysource=value;}
			get{return _moneysource;}
		}
		#endregion Model

	}
}

