<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformationAdd.aspx.cs" Inherits="WXXT.Web.Admin.InformationAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../js/jquery-1.7.1.min.js"></script>
    <script src="../js/ajaxfileupload.js"></script>
    <script>
        $(function () {
            $('#btnUpload').click(function () {
                $.ajaxFileUpload({
                    url: 'FileUploadAjax.ashx',
                    fileElementId: 'UpImg1',
                    success: function (data) {
                        $('#img1').attr('src', $(data).text());
                    }
                });
            });
        });
    </script>
    <script>
        $(function () {
            $('#btnUpload1').click(function () {
                $.ajaxFileUpload({
                    url: 'FileUploadAjax1.ashx',
                    fileElementId: 'UpImg11',
                    success: function (data) {
                        $('#img11').attr('src', $(data).text());
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            工程  编号:<input type="text" name="number" />
            <br />
            <br />
            工  程  名:<input type="text" name="project" />
            <br />
            <br />
            竣工  时间:<input type="text" name="completion" />
            时间格式：2016.01.01<br />
            <br />
            <br />
            保  质  期:<input type="text" name="baozhiqi" />
            <br />
            <br />
            工  程  款:<input type="text" name="money" />
            <br />
            <br />
            施 工  单 位:<input type="text" name="builder" />
            <br />
            <br />
            施工 负 责人:<input type="text" name="Bprincipal" />
            <br />
            <br />
            施工联系方式:<input type="text" name="Bphone" />
            <br />
            <br />
            设 计  单 位:<input type="text" name="designer" />
            <br />
            <br />
            设计 负 责人:<input type="text" name="Dprincipal" />
            <br />
            <br />
            设计联系方式:<input type="text" name="Dphone" />
            <br />
            <br />
            监 理  单 位:<input type="text" name="supervisor" />
            <br />
            <br />
            监理联系方式:<input type="text" name="Sphone" />
            <br />
            <br />
            维修前照片:
            <input type="file" id="UpImg1" name="UpImg1" />
            <input type="button" id="btnUpload" value="上传" />  <a style="color :red"> 图片格式* .jpg</a>
            <br />
            <img id="img1" src="" />
            <br />
            维修后照片:
            <input type="file" id="UpImg11" name="UpImg11" />
            <input type="button" id="btnUpload1" value="上传" />  <a style="color :red"> 图片格式* .jpg</a>
            <br />
            <img id="img11" src="" />
            <br />
            <input type="submit" value="添加" />
            <br />
            <%=Msg %>
        </div>
    </form>
</body>
</html>
