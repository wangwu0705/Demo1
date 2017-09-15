<%@ Page Title="" Language="C#" MasterPageFile="~/Homepage.Master" AutoEventWireup="true" CodeBehind="Photo2.aspx.cs" Inherits="WXXT.Web.Photo2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Width="120" ImageUrl='<%#"Photos1/" +Eval("Name")%>' />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
