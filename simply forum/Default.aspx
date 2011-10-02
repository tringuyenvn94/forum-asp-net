<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="simply_forum._Default" %>
    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:small_forumConnectionString %>" 
        
        
        SelectCommand="SELECT t.TOPIC_ID, t.NAME, t.AUTHOR, t.DATE_CREATE, (SELECT COUNT(MESSAGE_ID) AS Expr1 FROM MESSAGES AS m WHERE (TOPICS_ID = t.TOPIC_ID)) AS MESSAGES, mm.DATE_CREATE AS Expr1 FROM TOPICS AS t INNER JOIN MESSAGES AS mm ON mm.TOPICS_ID = t.TOPIC_ID or 1=1"></asp:SqlDataSource>
    <table>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" PageIndex="20" Caption="Список тем" 
                DataKeyNames="TOPIC_ID">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="TOPIC_ID" 
                        DataNavigateUrlFormatString="about.aspx?id={0}" DataTextField="NAME" 
                        HeaderText="Тема" />
                    <asp:BoundField DataField="AUTHOR" HeaderText="Автор" 
                        SortExpression="AUTHOR" />
                    <asp:BoundField DataField="DATE_CREATE" HeaderText="Дата создания" 
                        SortExpression="DATE_CREATE" />
                    <asp:BoundField DataField="Expr1" HeaderText="Последнее сообщение" 
                        SortExpression="Expr1" />
                    <asp:BoundField DataField="MESSAGES" HeaderText="Количество сообщений" 
                        ReadOnly="True" SortExpression="MESSAGES" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="errorlabel" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="*Название"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="title" runat="server"></asp:TextBox><br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="*Автор"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="author" runat="server"></asp:TextBox><br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="submit" runat="server" Text="Создать" onclick="submit_Click" />
        </td>
    </tr>
    </table>
</asp:Content>
