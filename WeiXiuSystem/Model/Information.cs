using System;
namespace WXXT.Model
{
	/// <summary>
	/// Information:实体类(属性说明自动提取数据库字段的描述信息)
	/// </summary>
	[Serializable]
	public partial class Information
	{
		public Information()
		{}
		#region Model
		private int _id;
		private int _number;
		private string _project;
		private DateTime? _completion;
		private string _baozhiqi;
		private string _money;
		private string _builder;
		private string _bprincipal;
		private string _bphone;
		private string _designer;
		private string _dprincipal;
		private string _dphone;
		private string _supervisor;
		private string _sphone;
		private string _beforetherepairimg;
		private string _aftertherepairimg;
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
		public int number
		{
			set{ _number=value;}
			get{return _number;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string project
		{
			set{ _project=value;}
			get{return _project;}
		}
		/// <summary>
		/// 
		/// </summary>
		public DateTime? completion
		{
			set{ _completion=value;}
			get{return _completion;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string baozhiqi
		{
			set{ _baozhiqi=value;}
			get{return _baozhiqi;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string money
		{
			set{ _money=value;}
			get{return _money;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string builder
		{
			set{ _builder=value;}
			get{return _builder;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Bprincipal
		{
			set{ _bprincipal=value;}
			get{return _bprincipal;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Bphone
		{
			set{ _bphone=value;}
			get{return _bphone;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string designer
		{
			set{ _designer=value;}
			get{return _designer;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Dprincipal
		{
			set{ _dprincipal=value;}
			get{return _dprincipal;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Dphone
		{
			set{ _dphone=value;}
			get{return _dphone;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string supervisor
		{
			set{ _supervisor=value;}
			get{return _supervisor;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string Sphone
		{
			set{ _sphone=value;}
			get{return _sphone;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string BeforetherepairImg
		{
			set{ _beforetherepairimg=value;}
			get{return _beforetherepairimg;}
		}
		/// <summary>
		/// 
		/// </summary>
		public string AftertherepairImg
		{
			set{ _aftertherepairimg=value;}
			get{return _aftertherepairimg;}
		}
		#endregion Model

	}
}

