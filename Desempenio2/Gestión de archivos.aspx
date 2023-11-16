<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaInicio.Master" AutoEventWireup="true" CodeBehind="Gestión de archivos.aspx.cs" Inherits="Desempenio2.Gestión_de_archivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>
    Cargar Archivo
</p>
    <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
&nbsp;<br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cargar" />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar " ShowHeader="True" Text="Botón" />
        </Columns>
    </asp:GridView>
</asp:Content>
