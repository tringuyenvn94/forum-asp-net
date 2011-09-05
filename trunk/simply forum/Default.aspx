<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="simply_forum._Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="MESSAGE_ID" HeaderText="MESSAGE_ID" 
                SortExpression="MESSAGE_ID" />
            <asp:BoundField DataField="TEXT" HeaderText="TEXT" SortExpression="TEXT" />
            <asp:BoundField DataField="AUTHOR" HeaderText="AUTHOR" 
                SortExpression="AUTHOR" />
            <asp:BoundField DataField="DATE_CREATE" HeaderText="DATE_CREATE" 
                SortExpression="DATE_CREATE" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:small_forumConnectionString %>" 
        SelectCommand="SELECT * FROM [MESSAGES]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="*Название"></asp:Label>
    <asp:TextBox ID="title" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="*Автор"></asp:Label>
    <asp:TextBox ID="author" runat="server"></asp:TextBox><br />
    <asp:Button ID="submit" runat="server" Text="Создать" onclick="submit_Click" 
        onload="submit_Load" />
</asp:Content>
