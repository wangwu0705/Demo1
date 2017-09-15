<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Remind.aspx.cs" Inherits="WXXT.Web.Remind" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
  <span class="l">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="导出Excel表" />
    </span>
           <br />
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="92px" Width="785px" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                    SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="number" HeaderText="序号" SortExpression="number" />
                <asp:BoundField DataField="project" HeaderText="工程名" SortExpression="project" />
                <asp:BoundField DataField="completion" HeaderText="竣工时间" SortExpression="completion" />
                <asp:BoundField DataField="baozhiqi" HeaderText="baozhiqi" SortExpression="baozhiqi"
                    Visible="False" />
                <asp:BoundField DataField="money" HeaderText="合同金额" SortExpression="money" />
                <asp:BoundField DataField="builder" HeaderText="施工单位" SortExpression="builder" />
                <asp:BoundField DataField="Bprincipal" HeaderText="施工负责人" SortExpression="Bprincipal" />
                <asp:BoundField DataField="Bphone" HeaderText="联系电话" SortExpression="Bphone" />
                <asp:BoundField DataField="designer" HeaderText="designer" SortExpression="designer"
                    Visible="False" />
                <asp:BoundField DataField="Dprincipal" HeaderText="Dprincipal" SortExpression="Dprincipal"
                    Visible="False" />
                <asp:BoundField DataField="Dphone" HeaderText="Dphone" SortExpression="Dphone" Visible="False" />
                <asp:BoundField DataField="supervisor" HeaderText="监理工程师" SortExpression="supervisor" />
                <asp:BoundField DataField="Sphone" HeaderText="联系方式" SortExpression="联系方式" />
            </Columns>
        </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WXXTConnectionString %>"
            SelectCommand="SELECT [ID],[number], [project], [completion],[money], [supervisor], [Bphone], [Bprincipal], [builder], [Sphone] FROM [Information] WHERE (DATEDIFF(dd,completion,GETDATE())>=28)">
        </asp:SqlDataSource>
</asp:Content>
