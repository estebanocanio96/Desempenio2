<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaInicio.Master" AutoEventWireup="true" CodeBehind="Registración.aspx.cs" Inherits="Desempenio2.Registración" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Username:&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Completar Campo Nombre" ForeColor="#CC3300"></asp:RequiredFieldValidator>
</p>
<p>
    Email:&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="Completar Campo Email" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="El valor ingresado no es un Email" ForeColor="#CC3300" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
</p>
<p>
    Edad:&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Completar Campo Edad" ForeColor="#CC3300"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Rango de Edad entre 15 a 99" ForeColor="#CC3300" MaximumValue="99" MinimumValue="15" Type="Integer"></asp:RangeValidator>
</p>
<p>
    Contraseña:
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Completar Campo Contraseña" ForeColor="#CC3300"></asp:RequiredFieldValidator>
</p>
<p>
    Confirme contraseña:
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Completar Campo Confirmar" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="None" ErrorMessage="No coinciden contraseñas" ForeColor="#CC3300"></asp:CompareValidator>
</p>
    <p>
</p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" />
    <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
<p>
    Sesion</p>
    <p>
    &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Crear Sesion" />
&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
<p>
    &nbsp;</p>
</asp:Content>
