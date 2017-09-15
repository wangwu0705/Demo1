<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Planproject.aspx.cs" Inherits="WXXT.Web.Admin.Planproject" %>

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
                    'PlanprojectRemove.ashx',
                    {
                        id: id
                    },
                    function (msg) {
                        if (msg == 1) {
                            location.href = "Planproject.aspx";
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
                                <th align="center" colspan="16" style="height: 23px">计划工程基本信息</th>
                            </tr>
                            <tr bgcolor="#DEE5FA">
                                <td colspan="16" align="center" class="txlrow">&nbsp;</td>
                            </tr>
                            <tr align="center" bgcolor="#799AE1">
                                <td width="10%" align="center" class="txlHeaderBackgroundAlternate">编号</td>
                                <td width="15%" align="center" class="txlHeaderBackgroundAlternate">计划工程编号</td>
                                <td width="15%" align="center" class="txlHeaderBackgroundAlternate">计划工程名</td>
                                <td width="15%" align="center" class="txlHeaderBackgroundAlternate">计划开工时间</td>
                                <td width="15%" align="center" class="txlHeaderBackgroundAlternate">计划竣工时间</td>
                                <td width="10%" align="center" class="txlHeaderBackgroundAlternate">资金预算</td>
                                <td width="10%" align="center" class="txlHeaderBackgroundAlternate">资金来源</td>
                                <td width="10%" align="center" class="txlHeaderBackgroundAlternate">操作</td>
                            </tr>
                </HeaderTemplate>
                <FooterTemplate>
                    <tr>
                        <td align="center" class="txlrow" colspan="8">
                            <%=PagerBar %>
                        </td>
                    </tr>
                    </tbody></table>
                </FooterTemplate>
                <ItemTemplate>
                    <tr bgcolor="#DEE5FA">
                        <td align="center" class="txlrow"><%#Eval("ID")%></td>
                        <td align="center" class="txlrow"><%#Eval("ProjectNum")%></td>
                        <td align="center" class="txlrow"><%#Eval("ProjectName")%></td>
                        <td align="center" class="txlrow"><%#Eval("StartTime")%></td>
                        <td align="center" class="txlrow"><%#Eval("EndTime")%></td>
                        <td align="center" class="txlrow"><%#Eval("Budget")%></td>
                        <td align="center" class="txlrow"><%#Eval("MoneySource")%></td>
                        <td align="center" class="txlrow">
                            <a href='PlanprojectEdit.aspx?id=<%#Eval("ID") %>'>修改</a>
                            <a href='javascript:RemoveConfirm(<%#Eval("ID") %>)'>删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
