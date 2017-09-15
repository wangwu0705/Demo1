<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlanprojectEdit.aspx.cs" Inherits="WXXT.Web.Admin.PlanprojectEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <input type="hidden" name="uid" value="<%=WModel.ID %>"/>
         计划工程编号:<input type="text" name="ProjectNum" value="<%=WModel.ProjectNum %>"/>
       <br/>
        计划工程名:<input type="text" name="ProjectName" value="<%=WModel.ProjectName %>"/>
       <br/>
        计划开工时间:<input type="text" name="StartTime" value="<%=WModel.StartTime %>"/> 时间格式：2016.01.01<br/>
        计划竣工时间:<input type="text" name="EndTime" value="<%=WModel.EndTime %>"/> 时间格式：2016.01.01<br/>
        资金预算:<input type="text" name="Budget" value="<%=WModel.Budget %>"/>
       <br/>
        资金来源:<input type="text" name="MoneySource" value="<%=WModel.MoneySource %>"/>
       <br/>
        <input type="submit" value="修改"/>
    </form>
</body>
</html>
