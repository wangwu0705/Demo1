<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformationEdit.aspx.cs" Inherits="WXXT.Web.Admin.InformationEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" name="uid" value="<%=WModel.ID %>"/>
         工程编号:<input type="text" name="number" value="<%=WModel.number %>"/>
       <br/>
        工程名:<input type="text" name="project" value="<%=WModel.project %>"/>
       <br/>
        竣工时间:<input type="text" name="completion" value="<%=WModel.completion %>"/> 时间格式：2016.01.01<br/>
        保质期:<input type="text" name="baozhiqi" value="<%=WModel.baozhiqi %>"/>
       <br/>
        工程款:<input type="text" name="money" value="<%=WModel.money %>"/>
       <br/>
        施工单位:<input type="text" name="builder" value="<%=WModel.builder %>"/>
       <br/>
        施工负责人:<input type="text" name="Bprincipal" value="<%=WModel.Bprincipal %>"/>
       <br/>
        施工联系方式:<input type="text" name="Bphone" value="<%=WModel.Bphone %>"/>
       <br/>
        设计单位:<input type="text" name="designer" value="<%=WModel.designer %>"/>
       <br/>
        设计负责人:<input type="text" name="Dprincipal" value="<%=WModel.Dprincipal %>"/>
       <br/>
        设计联系方式:<input type="text" name="Dphone" value="<%=WModel.Dphone %>"/>
       <br/>
        监理单位:<input type="text" name="supervisor" value="<%=WModel.supervisor %>"/>
       <br/>
        监理联系方式:<input type="text" name="Sphone" value="<%=WModel.Sphone %>"/>
       <br/>
        <input type="submit" value="修改"/>
    </form>
</body>
</html>
