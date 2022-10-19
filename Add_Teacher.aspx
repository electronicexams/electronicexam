<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Add_Teacher.aspx.cs" Inherits="ExamOnline.Add_Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style1 {
            height: 64px;
            text-align: center;
        }
        .auto-style2 {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table align="center" class="style1" dir="rtl">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" 
                Text="اسم الاستاذ"></asp:Label>
        <td >
            <asp:TextBox ID="TextBox1" ValidationGroup="Val1" runat="server" Font-Bold="True" Font-Size="14pt" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ValidationGroup="Val1" ErrorMessage="*  املا الفراغات" Font-Bold="True" 
                Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            </td>
        <td class="auto-style1">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" 
                Text="البريد الالكترونــي"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="14pt" TextMode="Email" Width="227px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" 
                Text="كلمة المرور"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Size="14pt" ValidationGroup="Val1" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox5" ValidationGroup="Val1" ErrorMessage="*  املا الفراغات" Font-Bold="True" 
                Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;<asp:Button ID="Button1" runat="server" ValidationGroup="Val1" Text="إضافة" Font-Bold="True" 
                Font-Size="14pt" OnClick="Button1_Click" Width="107px" />
        &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
