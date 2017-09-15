<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotosRemove.aspx.cs" Inherits="WXXT.Web.Admin.PhotosRemove" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="120" ImageUrl='<%#"Photos/" +Eval("Name")%>' />
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
