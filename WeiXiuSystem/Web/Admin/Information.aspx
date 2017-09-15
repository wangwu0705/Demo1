<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="WXXT.Web.Admin.Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="inc/css.css" rel="stylesheet" />
    <script src="../js/jquery-1.7.1.min.js"></script>
    <script>
        function RemoveConfirm(id) {
            if (confirm("确定要删除吗？")) {
                $.post(
                    'InformationRemove.ashx',
                    {
                        id: id
                    },
                    function (msg) {
                        if (msg == 1) {
                            location.href = "Information.aspx";
                        } else {
                            alert('删除失败');
                        }
                    }
                );
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" bordercolor="#799AE1" class="tableBorder">
                        <tbody>
                            <tr>
                                <th align="center" colspan="16" style="height: 23px">维修工程基本信息</th>
                            </tr>
                            <tr bgcolor="#DEE5FA">
                                <td colspan="16" align="center" class="txlrow">&nbsp;</td>
                            </tr>
                            <tr align="center" bgcolor="#799AE1">
                                <td width="4%" align="center" class="txlHeaderBackgroundAlternate">编号</td>
                                <td width="5%" align="center" class="txlHeaderBackgroundAlternate">工程编号</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">工程名</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">竣工时间</td>
                                <td width="6%" align="center" class="txlHeaderBackgroundAlternate">保质期</td>
                                <td width="6%" align="center" class="txlHeaderBackgroundAlternate">工程款</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">施工单位</td>
                                <td width="6%" align="center" class="txlHeaderBackgroundAlternate">施工负责人</td>
                                <td width="6%" align="center" class="txlHeaderBackgroundAlternate">施工联系方式</td>
                                <td width="5%" align="center" class="txlHeaderBackgroundAlternate">设计单位</td>
                                <td width="6%" align="center" class="txlHeaderBackgroundAlternate">设计负责人</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">设计联系方式</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">监理单位</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">监理联系方式</td>
                                <td width="8%" align="center" class="txlHeaderBackgroundAlternate">操作</td>
                            </tr>
                </HeaderTemplate>
                <FooterTemplate>
                    <tr>
                        <td align="center" class="txlrow" colspan="15">
                            <%=PagerBar %>
                        </td>
                    </tr>
                    </tbody></table>
                </FooterTemplate>
                <ItemTemplate>
                    <tr bgcolor="#DEE5FA">
                        <td align="center" class="txlrow"><%#Eval("ID")%></td>
                        <td align="center" class="txlrow"><%#Eval("number")%></td>
                        <td align="center" class="txlrow"><%#Eval("project")%></td>
                        <td align="center" class="txlrow"><%#Eval("completion")%></td>
                        <td align="center" class="txlrow"><%#Eval("baozhiqi")%></td>
                        <td align="center" class="txlrow"><%#Eval("money")%></td>
                        <td align="center" class="txlrow"><%#Eval("builder")%></td>
                        <td align="center" class="txlrow"><%#Eval("Bprincipal")%></td>
                        <td align="center" class="txlrow"><%#Eval("Bphone")%></td>
                        <td align="center" class="txlrow"><%#Eval("designer")%></td>
                        <td align="center" class="txlrow"><%#Eval("Dprincipal")%></td>
                        <td align="center" class="txlrow"><%#Eval("Dphone")%></td>
                        <td align="center" class="txlrow"><%#Eval("supervisor")%></td>
                        <td align="center" class="txlrow"><%#Eval("Sphone")%></td>
                        <td align="center" class="txlrow">
                            <a href='InformationEdit.aspx?id=<%#Eval("ID") %>'>修改</a>
                            <a href='javascript:RemoveConfirm(<%#Eval("ID") %>)'>删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
