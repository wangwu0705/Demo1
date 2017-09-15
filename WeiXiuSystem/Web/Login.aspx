<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WXXT.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大修管理系统</title>
    <script src="js/jquery-1.7.1.min.js"></script>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            overflow: hidden;
        }

        .STYLE3 {
            color: #528311;
            font-size: 12px;
        }

        .STYLE4 {
            color: #42870a;
            font-size: 12px;
        }
        -->
    </style>
</head>
<script>
    $(function () {
        //完成异步登录
        $('#imgLogin').click(function () {
            $.post(
                'RegisterLogin.ashx',
                $('form').serialize(),
                function (msg) {
                    if (msg == '1') {
                        location.href = 'Index.aspx';
                    }
                }
            );
        });
    });
</script>
<body>
    <form id="form1" runat="server">
        <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td bgcolor="#e5f6cf">&nbsp;</td>
            </tr>
            <tr>
                <td height="608" background="images/login_03.gif">
                    <table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td height="266" background="images/login_04.gif">&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="95">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="424" height="95" background="images/login_06.gif">&nbsp;</td>
                                        <td width="183" background="images/login_07.gif">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="23%" height="30">
                                                        <div align="center"><span class="STYLE3">用户</span></div>
                                                    </td>
                                                    <td width="77%" height="30">
                                                        <input type="text" name="cname" style="height: 18px; width: 130px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;" /></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">
                                                        <div align="center"><span class="STYLE3">密码</span></div>
                                                    </td>
                                                    <td height="30">
                                                        <input type="password" name="cpwd" style="height: 18px; width: 130px; border: solid 1px #cadcb2; font-size: 12px; color: #81b432;" /></td>
                                                </tr>
                                                <tr>
                                                    <td height="30">&nbsp;</td>
                                                    <td height="30">
                                                        <asp:ImageButton ID="ImageButton1" runat="server" Width="40" Height="22" border="0" Style="cursor: pointer" ImageUrl="images/dl2.jpg" OnClick="ImageButton1_Click" />
                                                        <a href="Register1.aspx">
                                                            <img src="images/dl3.jpg" width="40" height="22" border="0" /></a></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="255" background="images/login_08.gif">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="247" valign="top" background="images/login_09.gif">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="22%" height="30">&nbsp;</td>
                                        <td width="56%">&nbsp;&nbsp;
                                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/Admin/AdminLogin.aspx">管理员登录 &gt;&gt;</asp:HyperLink>
                                        </td>
                                        <td width="22%">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td height="30">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="44%" height="20">&nbsp;</td>
                                                    <td width="56%" class="STYLE4"></td>
                                                </tr>
                                                <tr>
                                                    <td width="44%" height="20">&nbsp;</td>
                                                    <td width="56%" class="STYLE4"></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WXXTConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#a2d962">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
