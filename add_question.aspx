<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTeach.Master" AutoEventWireup="true" CodeBehind="add_question.aspx.cs" Inherits="ExamOnline.add_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 30px;
        }
        .style3
        {
            height: 57px;
        }
        .style4
        {
            height: 30px;
        }
    .style5
    {
        width: 493px;
    }
    .style6
    {
        height: 30px;
        width: 493px;
    }
        .style7
        {
            height: 22px;
        }
        .style8
        {
            height: 22px;
            width: 493px;
        }
        .style9
        {
            height: 20px;
        }
        .style10
        {
            height: 20px;
            width: 493px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" dir="rtl">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="اختر المادة" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td class="style6" align="right">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="sub_name" 
                    DataValueField="sub_id" Font-Bold="True" Font-Size="14pt">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconect %>" 
                    SelectCommand="SELECT [sub_id], [sub_name] FROM [subject]" ProviderName="<%$ ConnectionStrings:myconect.ProviderName %>">
                </asp:SqlDataSource>
            </td>
            <td class="style4" align="right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
                    Font-Bold="True" Font-Size="14pt" ForeColor="Red" ValidationGroup="Val1">ادخل البيانات</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" Text=" الامتحان" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style8">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="title" 
                    DataValueField="Exam_id" Font-Bold="True" Font-Size="14pt">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconect %>" 
                    SelectCommand="SELECT Exam_id, title FROM Exam WHERE (sub_id = @sub_id)" ProviderName="<%$ ConnectionStrings:myconect.ProviderName %>">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="sub_id" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style7">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="نوع السؤال" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style5">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" 
                    Text="صح أو خطأ" AutoPostBack="True" Font-Bold="True" Font-Size="14pt" OnCheckedChanged="RadioButton1_CheckedChanged" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" 
                    Text="اختر الإجابة الصحيحة" AutoPostBack="True" Font-Bold="True" 
                    Font-Size="14pt" OnCheckedChanged="RadioButton2_CheckedChanged" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="السؤال" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style5">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="425px" 
                    Font-Bold="True" Font-Size="14pt"></asp:TextBox>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label10" runat="server" 
                    Text="اختر الاجابة النموذجية بالضغط على المربع بجانب الخيار" Font-Bold="True" 
                    Font-Size="14pt" ForeColor="#993366"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Panel ID="Panel1" runat="server" BorderColor="Blue" Visible="False">
                    <asp:Label ID="Label5" runat="server" Text="الخيار الاول" Font-Bold="True" 
                        Font-Size="12pt"></asp:Label>
                    &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text=" " OnCheckedChanged="CheckBox1_CheckedChanged" />
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" 
                        Font-Size="14pt"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="الخيار التاني" Font-Bold="True" 
                        Font-Size="12pt"></asp:Label>
                    &nbsp;<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Text=" " OnCheckedChanged="CheckBox2_CheckedChanged" />
&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="الخيار الثالث" Font-Bold="True" 
                        Font-Size="12pt"></asp:Label>
                    &nbsp;<asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" 
                        Text=" " OnCheckedChanged="CheckBox3_CheckedChanged" />
                    &nbsp;<asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" 
                        Font-Size="14pt"></asp:TextBox>
                    &nbsp;</asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                <asp:Panel ID="Panel2" runat="server" Visible="False" Width="565px">
                    <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" Text="صح" OnCheckedChanged="CheckBox4_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" Text="خطأ" OnCheckedChanged="CheckBox5_CheckedChanged" />
                    &nbsp;</asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="14pt" 
                    Text="الحالة"></asp:Label>
            </td>
            <td align="right" class="style5">
                <asp:RadioButton ID="RadioButton3" runat="server" Font-Bold="True" 
                    Font-Size="14pt" GroupName="2" Text="مفعل" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" Font-Bold="True" 
                    Font-Size="14pt" GroupName="2" Text="غير مفعل"  />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="14pt" 
                    Text="درجة السؤال"></asp:Label>
            </td>
            <td class="style5" align="right">
                <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" 
                        Font-Size="14pt" Width="90px"></asp:TextBox>
                    </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="Button1" runat="server" Text="إضافة" Font-Bold="True" 
                    Font-Size="14pt" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
