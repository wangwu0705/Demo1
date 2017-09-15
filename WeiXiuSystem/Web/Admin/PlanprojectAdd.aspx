<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlanprojectAdd.aspx.cs" Inherits="WXXT.Web.Admin.PlanprojectAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div>
        计划工程编号:<input type="text" name="ProjectNum"/>
       <br/><br/>
        计划 工 程名:<input type="text" name="ProjectName"/>
       <br/><br/>
        计划开工时间:<input type="text" name="StartTime"/> 时间格式：2016.01.01<br/><br/>
        计划竣工时间:<input type="text" name="EndTime"/> 时间格式：2016.01.01<br/><br/>
        资 金  预 算:<input type="text" name="Budget"/>
       <br/><br/>
        资 金  来 源:<input type="text" name="MoneySource"/>
       <br/><br/>
        <input type="submit" value="添加"/>
        <br/>
        <%=Msg %>
    </div>
    </form>
</body>
</html>
