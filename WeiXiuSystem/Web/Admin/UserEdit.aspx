<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserEdit.aspx.cs" Inherits="WXXT.Web.Admin.UserEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" name="uid" value="<%=WModel.id %>" />
        用户名:<input type="text" name="U_name" value="<%=WModel.U_name %>" />
        <br />
        密  码:<input type="text" name="U_mima" value="<%=WModel.U_mima %>" />
        <br />
        <input type="submit" value="修改"/>
    </form>
</body>
</html>
