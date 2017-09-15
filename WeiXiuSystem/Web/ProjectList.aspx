<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="ProjectList.aspx.cs" Inherits="WXXT.Web.ProjectList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <br />
    <br />
                    <span class="l">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="导出Excel表" />
    </span>
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="92px" Width="785px" style="text-align: center">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                SortExpression="ID" Visible="False">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="number" HeaderText="序号" SortExpression="number">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="project" HeaderText="工程名称" SortExpression="project">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="completion" HeaderText="竣工时间" SortExpression="completion">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="baozhiqi" HeaderText="保质期" SortExpression="baozhiqi">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="money" HeaderText="工程款" SortExpression="money">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="builder" HeaderText="施工单位" SortExpression="builder">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="Bprincipal" HeaderText="施工负责人" SortExpression="Bprincipal">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="Bphone" HeaderText="联系方式" SortExpression="Bphone">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="designer" HeaderText="设计单位" SortExpression="designer">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="Dprincipal" HeaderText="设计负责人" SortExpression="Dprincipal">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="Dphone" HeaderText="联系方式" SortExpression="Dphone">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="supervisor" HeaderText="监理单位" SortExpression="supervisor">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="Sphone" HeaderText="联系方式" SortExpression="Sphone">
                <HeaderStyle Height="15px" />
                <ItemStyle Height="15px" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WXXTConnectionString %>"
        SelectCommand="SELECT [ID], [number], [project], [baozhiqi], [money], [supervisor], [Dphone], [designer], [completion], [builder], [Bprincipal], [Bphone], [Dprincipal], [Sphone] FROM [Information]"></asp:SqlDataSource>
</asp:Content>
