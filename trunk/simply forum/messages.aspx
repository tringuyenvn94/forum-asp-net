<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="messages.aspx.cs" Inherits="simply_forum.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">&lt;&lt;К списку тем</asp:HyperLink>
    <br />
    Тема:
    <asp:Label ID="topicstheme" runat="server" Text="topicstheme"></asp:Label>
    <br />
    Сообщения за:&nbsp; 
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    
</asp:Content>

