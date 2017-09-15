<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAdd.aspx.cs" Inherits="WXXT.Web.Admin.UserAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            用 户 名:<input type="text" name="U_name" />
            <br />
            <br />
            用户密码:<input type="text" name="U_mima" />
            <br />
            <br />
             <input type="submit" value="添加"/>
        <br/>
        <%=Msg %>
        </div>
    </form>
</body>
</html>
