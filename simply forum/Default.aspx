<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="simply_forum._Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:Label ID="errorlabel" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="*Название"></asp:Label>
    <asp:TextBox ID="title" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="*Автор"></asp:Label>
    <asp:TextBox ID="author" runat="server"></asp:TextBox><br />
    <asp:Button ID="submit" runat="server" Text="Создать" onclick="submit_Click" />
</asp:Content>
