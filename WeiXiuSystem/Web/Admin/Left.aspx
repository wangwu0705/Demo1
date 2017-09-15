<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>管理页面</title>
    <style type="text/css">
        BODY {
            BACKGROUND: #799ae1;
            MARGIN: 0px;
            FONT: 9pt 宋体;
        }

        TABLE {
            BORDER-RIGHT: 0px;
            BORDER-TOP: 0px;
            BORDER-LEFT: 0px;
            BORDER-BOTTOM: 0px;
        }

        TD {
            FONT: 12px 宋体;
        }

        IMG {
            BORDER-RIGHT: 0px;
            BORDER-TOP: 0px;
            VERTICAL-ALIGN: bottom;
            BORDER-LEFT: 0px;
            BORDER-BOTTOM: 0px;
        }

        A {
            FONT: 12px 宋体;
            COLOR: #000000;
            TEXT-DECORATION: none;
        }

            A:hover {
                COLOR: #428eff;
                TEXT-DECORATION: underline;
            }

        .sec_menu {
            BORDER-RIGHT: white 1px solid;
            BACKGROUND: #d6dff7;
            OVERFLOW: hidden;
            BORDER-LEFT: white 1px solid;
            BORDER-BOTTOM: white 1px solid;
        }

        .menu_title {
        }

            .menu_title SPAN {
                FONT-WEIGHT: bold;
                LEFT: 7px;
                COLOR: #215dc6;
                POSITION: relative;
                TOP: 2px;
            }

        .menu_title2 {
        }

            .menu_title2 SPAN {
                FONT-WEIGHT: bold;
                LEFT: 8px;
                COLOR: #428eff;
                POSITION: relative;
                TOP: 2px;
            }
    </style>

    <script language="javascript1.2">
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
    </script>

    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <meta content="MSHTML 6.00.2900.2180" name="GENERATOR">
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <table cellspacing="0" cellpadding="0" width="100%" align="left" border="0">
        <tbody>
            <tr>
                <td valign="top" bgcolor="#799ae1">
                    <table cellspacing="0" cellpadding="0" width="158" align="center">
                        <tbody>
                            <tr>
                                <td valign="bottom" height="42">
                                    <img height="38"
                                        src="left.files/titles.gif" width="158">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="158" align="center">
                        <tbody>
                            <tr>
                                <td class="menu_title" onmouseover="this.className='menu_title2';"
                                    onmouseout="this.className='menu_title';" background=""
                                    height="25"><span>| <a
                                        href="/Index.aspx"
                                        target="_parent"><b>退出</b></a></span></td>
                            </tr>
                            <tr>
                                <td class="menu_title" onmouseover="this.className='menu_title2';"
                                    onmouseout="this.className='menu_title';" background=""
                                    height="25">&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellspacing="0" cellpadding="0" width="158" align="center">
                        <tbody>
                            <tr>
                                <td class="menu_title" id="menuTitle1"
                                    onmouseover="this.className='menu_title2';" onclick="showsubmenu(0)"
                                    onmouseout="this.className='menu_title';"
                                    background="left.files/admin_left_1.gif"
                                    height="25"><strong style="color: #0000FF">施工信息</strong></td>
                            </tr>
                            <tr>
                                <td id="submenu0">
                                    <div class="sec_menu" style="width: 158px">
                                        <table cellspacing="0" cellpadding="0" width="135" align="center">
                                            <tbody>
                                                <tr>
                                                    <td height="20"><a
                                                        href="Information.aspx"
                                                        target="mainFrame">基本施工信息列表</a></td>
                                                </tr>
                                                <tr>
                                                    <td height="20"><a
                                                        href="InformationAdd.aspx"
                                                        target="mainFrame">增加施工信息</a></td>
                                                </tr>
                                                <%--<tr>
                                                    <td height="20"><a
                                                        href="PhotosRemove.aspx"
                                                        target="mainFrame">维修前照片操作</a></td>
                                                </tr>
                                                <tr>
                                                    <td height="20"><a
                                                        href="Photos1Remove.aspx"
                                                        target="mainFrame">维修后照片操作</a></td>
                                                </tr>--%>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>



                    <table cellspacing="0" cellpadding="0" width="158" align="center">
                        <tbody>
                            <tr>
                                <td class="menu_title" id="TD1"
                                    onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)"
                                    onmouseout="this.className='menu_title';"
                                    background="left.files/admin_left_2.gif" height="25"><span>用户管理</span> </td>
                            </tr>
                            <tr>
                                <td id="submenu2">
                                    <div class="sec_menu" style="width: 158px">
                                        <table cellspacing="0" cellpadding="0" width="135" align="center">
                                            <tbody>
                                                <tr>
                                                    <td height="20"><a href="UserList.aspx" target="mainFrame">用户列表</a></td>
                                                </tr>
                                                <tr>
                                                    <td height="20"><a href="UserAdd.aspx" target="mainFrame">添加用户</a></td>
                                                </tr>                
                                                <tr>
                                                    <td height="20">&nbsp;</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table cellspacing="0" cellpadding="0" width="158" align="center">
                        <tbody>
                            <tr>
                                <td class="menu_title" id="menuTitle1"
                                    onmouseover="this.className='menu_title2';" onclick="showsubmenu(30)"
                                    onmouseout="this.className='menu_title';"
                                    background="left.files/admin_left_2.gif" height="25"><span>计划工程项目</span> </td>
                            </tr>
                            <tr>
                                <td id="submenu30">
                                    <div class="sec_menu" style="width: 158px">
                                        <table cellspacing="0" cellpadding="0" width="135" align="center">
                                            <tbody>
                                                <tr>
                                                    <td height="20"><a href="Planproject.aspx" target="mainFrame">计划工程项目列表</a></td>
                                                </tr>
                                                <tr>
                                                    <td height="20"><a href="PlanprojectAdd.aspx" target="mainFrame">增加计划工程项目</a></td>
                                                </tr>  
                                                 <tr>
                                                    <td height="20"><a href="PlanprojectAdd.aspx" target="mainFrame">导出计划工程项目</a></td>
                                                </tr>                                                                                 
                                            </tbody>
                                        </table>
                                    </div>
                                    <div style="width: 158px">
                                        <table cellspacing="0" cellpadding="0" width="135" align="center">
                                            <tbody>
                                                <tr>
                                                    <td
                                                        height="20"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                </td>
                            </tr>
                        </tbody>
                    </table>


                    <table cellspacing="0" cellpadding="0" width="158" align="center">
                        <tbody>
                            <tr>
                                <td class="menu_title" id="menuTitle1"
                                    onmouseover="this.className='menu_title2';"
                                    onmouseout="this.className='menu_title';"
                                    background="left.files/admin_left_9.gif"
                                    height="25"><span>建筑维修系统版权信息</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="sec_menu" style="width: 158px">
                                        <table cellspacing="0" cellpadding="0" width="135" align="center">
                                            <tbody>
                                                <tr>
                                                    <td height="20" bgcolor="#D6DFF7" style="line-height: 150%">版权:沈阳建筑大学
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
            </tr>
        </tbody>
    </table>


</body>
</html>
