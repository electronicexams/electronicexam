<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTeach.Master" AutoEventWireup="true" CodeBehind="add_Exam.aspx.cs" Inherits="ExamOnline.add_Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 34px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            height: 17px;
        }
        .style5
        {
            height: 30px;
        }
        .style6
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" dir="rtl" style="height: 314px">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="اسم الامتحان" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right">
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
            </td>
            <td align="right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ValidationGroup="Val1" ErrorMessage="*  املا الفراغات" Font-Bold="True" 
                    Font-Size="14pt" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
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
                <asp:Label ID="Label3" runat="server" Text="دقائق الامتحان" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" 
                    Font-Size="14pt">
                    <asp:ListItem Value="15"></asp:ListItem>
                    <asp:ListItem Value="20"></asp:ListItem>
                    <asp:ListItem Value="30"></asp:ListItem>
                    <asp:ListItem Value="60"></asp:ListItem>
                    <asp:ListItem Value="90"></asp:ListItem>
                    <asp:ListItem Value="120"></asp:ListItem>
                    <asp:ListItem Value="180"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style4">
                </td>
            <td class="style4">
                </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style5">
                <asp:Label ID="Label4" runat="server" Text="المادة" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style5">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="sub_name" 
                    DataValueField="sub_id" Font-Bold="True" Font-Size="14pt">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconect %>" 
                    SelectCommand="SELECT [sub_id], [sub_name] FROM [subject]" ProviderName="<%$ ConnectionStrings:myconect.ProviderName %>">
                </asp:SqlDataSource>
            </td>
            <td class="style5">
                &nbsp;</td>
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
            <td class="style2">
                </td>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="الحالة" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style2">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="مفتوح" 
                    Font-Bold="True" Font-Size="14pt" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="مغلق" 
                    Font-Bold="True" Font-Size="14pt" />
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label6" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="Button1" runat="server" Text="إضافة" Font-Bold="True" 
                    Font-Size="14pt" OnClick="Button1_Click" Width="129px" />
            </td>
        </tr>
    </table>
    </asp:Content>

