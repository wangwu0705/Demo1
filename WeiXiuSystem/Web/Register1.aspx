<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="WXXT.Web.Register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册页面</title>
    <script src="js/jquery-1.7.1.min.js"></script>
    <style>
        body {
            background: #ebebeb;
            font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
            color: #222;
            font-size: 12px;
        }

        * {
            padding: 0px;
            margin: 0px;
        }

        .top_div {
            background: #008ead;
            width: 100%;
            height: 400px;
        }

        .ipt {
            border: 1px solid #d3d3d3;
            padding: 10px 10px;
            width: 290px;
            border-radius: 4px;
            padding-left: 35px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

            .ipt:focus {
                border-color: #66afe9;
                outline: 0;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            }

        .u_logo {
            background: url("images/username.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 43px;
            left: 40px;
        }

        .p_logo {
            background: url("images/password.png") no-repeat;
            padding: 10px 10px;
            position: absolute;
            top: 12px;
            left: 40px;
        }

        a {
            text-decoration: none;
        }

        .tou {
            background: url("images/tou.png") no-repeat;
            width: 97px;
            height: 92px;
            position: absolute;
            top: -87px;
            left: 140px;
        }

        .left_hand {
            background: url("images/left_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            left: 150px;
        }

        .right_hand {
            background: url("images/right_hand.png") no-repeat;
            width: 32px;
            height: 37px;
            position: absolute;
            top: -38px;
            right: -64px;
        }

        .initial_left_hand {
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            left: 100px;
        }

        .initial_right_hand {
            background: url("images/hand.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -12px;
            right: -112px;
        }

        .left_handing {
            background: url("images/left-handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -24px;
            left: 139px;
        }

        .right_handinging {
            background: url("images/right_handing.png") no-repeat;
            width: 30px;
            height: 20px;
            position: absolute;
            top: -21px;
            left: 210px;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            //得到焦点
            $("#cpwd1").focus(function () {
                $("#left_hand").animate({
                    left: "150",
                    top: " -38"
                }, {
                    step: function () {
                        if (parseInt($("#left_hand").css("left")) > 140) {
                            $("#left_hand").attr("class", "left_hand");
                        }
                    }
                }, 2000);
                $("#right_hand").animate({
                    right: "-64",
                    top: "-38px"
                }, {
                    step: function () {
                        if (parseInt($("#right_hand").css("right")) > -70) {
                            $("#right_hand").attr("class", "right_hand");
                        }
                    }
                }, 2000);
            });
            //失去焦点
            $("#cpwd1").blur(function () {
                $("#left_hand").attr("class", "initial_left_hand");
                $("#left_hand").attr("style", "left:100px;top:-12px;");
                $("#right_hand").attr("class", "initial_right_hand");
                $("#right_hand").attr("style", "right:-112px;top:-12px");
            });
        });
    </script>
    <script>
        $(function () {
            $('#cname').blur(function () {
                var cname = $('#cname').val();
                if (cname.length <= 0) {
                    $('#cname1').html('用户名不能为空');
                    return;
                }
                $.post(
                    'CNameExists.ashx',
                    {
                        cname: cname
                    },
                    function (msg) {
                        if (msg == 1) {
                            //表示存在
                            $('#cname1').html('X');
                        } else {
                            //不存在，用户名可用
                            $('#cname1').html('');
                        }
                    }
                );
            });

            $('#cpwd2').blur(function () {
                if ($('#cpwd1').val() != "") {
                    if ($('#cpwd2').val() != $('#cpwd1').val()) {
                        $('#cpwd22').html('X');
                    } else {
                        $('#cpwd22').html('');
                    }
                }
            });

            $('form').submit(function () {
                if ($('#cname').val() == '' || $('#cname1').html() != '') {
                    $('#cname').focus();
                    return false;
                }

                if ($('#cpwd22').html() == 'X') {
                    $('#cpwd2').focus();
                    return false;
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top_div"></div>
        <div style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">
            <div style="width: 165px; height: 96px; position: absolute;">
                <div class="tou"></div>
                <div class="initial_left_hand" id="left_hand"></div>
                <div class="initial_right_hand" id="right_hand"></div>
            </div>
            <p style="padding: 30px 0px 10px; position: relative;">
                <span class="u_logo"></span>
                <input type="text" placeholder="请输入用户名" id="cname" name="cname" class="ipt" />
            </p>
            <p style="font-size: xx-small; color: red;"><span id="cname1"></span></p>
            <p style="position: relative;">
                <span class="p_logo"></span>
                <input type="password" placeholder="请输入密码" id="cpwd1" name="cpwd1" class="ipt" />
            </p>
            <br />
            <p style="position: relative;">
                <span class="p_logo"></span>
                <input type="password" placeholder="请确认密码" id="cpwd2" name="cpwd2" class="ipt" /><span id="cpwd22"></span>
            </p>
            <%=Msg%>
            <div style="height: 50px; line-height: 50px; margin-top: 30px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
                <p style="margin: 0px 35px 20px 45px;">
                    <span style="float: right;">
                        <input type="submit" value="注册" />
                    </span>
                </p>
                <p>版权所属:<a href="http://www.sjzu.edu.cn/" target="_blank">沈阳建筑大学</a></p>
            </div>
        </div>
        <table>
            <tr></tr>
            <tr></tr>
            <tr></tr>
        </table>
        <div style="text-align: center;">
        </div>
    </form>
</body>
</html>
