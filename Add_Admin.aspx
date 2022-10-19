<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="Add_Admin.aspx.cs" Inherits="ExamOnline.Add_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style3
        {
            height: 64px;
        }
        .style5
    {
        height: 43px;
    }
    .style6
    {
        height: 28px;
    }
    .style7
    {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" class="style1" dir="rtl" style="height: 308px">
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
                </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text=" اسم المدير" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right">
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td align="right">
               
            </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="البريد الالكتروني" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right">
                <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="رقم الهاتف" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right">
                <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style5">
                <asp:Label ID="Label4" runat="server" Text="كلمة المرور" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style5">
                <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td align="right" class="style2">
                <asp:Label ID="Label5" runat="server" Text="" ForeColor="Red"></asp:Label>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="Button1" runat="server" Text="إضافة" Font-Bold="True"
                    Font-Size="14pt" Height="34px" OnClick="Button1_Click" />
            &nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>
