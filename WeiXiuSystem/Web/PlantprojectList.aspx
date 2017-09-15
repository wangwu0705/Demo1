<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="PlantprojectList.aspx.cs" Inherits="WXXT.Web.PlantprojectList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="92px" Width="785px" style="text-align: center">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False">
                            </asp:BoundField>
                            <asp:BoundField DataField="ProjectNum" HeaderText="计划工程编号" SortExpression="ProjectNum">
                            </asp:BoundField>
                            <asp:BoundField DataField="ProjectName" HeaderText="计划工程名" SortExpression="ProjectName">
                            </asp:BoundField>
                            <asp:BoundField DataField="StartTime" HeaderText="计划开工时间" SortExpression="StartTime">
                            </asp:BoundField>
                            <asp:BoundField DataField="EndTime" HeaderText="竣工时间" SortExpression="EndTime" />
                            <asp:BoundField DataField="Budget" HeaderText="资金预算" SortExpression="Budget" />
                            <asp:BoundField DataField="MoneySource" HeaderText="资金来源" SortExpression="MoneySource" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WXXTConnectionString %>" SelectCommand="SELECT [ID], [ProjectNum], [ProjectName], [StartTime], [EndTime], [Budget], [MoneySource] FROM [JihuaProject]"></asp:SqlDataSource>
</asp:Content>
