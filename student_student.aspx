<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="student_student.aspx.cs" Inherits="ExamOnline.student_student" %>
<%--<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" href="acrdion/jquery-ui-1.7.2.custom.css"rel="stylesheet" />
    <script type="text/javascript" src="acrdion/jquery.js"></script>
    <script type="text/javascript" src="acrdion/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="acrdion/jquery-ui-1.7.2.custom.min.js"></script>
		
    <style type="text/css">
        .style2
        {
            text-align: right;
            height: 30px;
        }
        .style3
        {
            height: 30px;
        }
        .style4
        {
            height: 1305px;
        }
        .style5
        {
            height: 17px;
        }
        .style6
        {
            height: 30px;
            width: 130px;
        }
        .style7
        {
            width: 130px;
        }
        .style8
        {
            height: 17px;
            width: 130px;
        }
        .style9
        {
            height: 30px;
            width: 278px;
        }
        .style10
        {
            width: 278px;
        }
        .style11
        {
            height: 17px;
            width: 278px;
        }
        .style12
        {
            height: 30px;
            width: 346px;
        }
        .style13
        {
            width: 346px;
        }
        .style14
        {
            height: 17px;
            width: 346px;
        }
    .auto-style2 {
        text-align: right;
    }
        .auto-style3 {
            color: #009933;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" dir="rtl">
        <tr>
            <td class="auto-style2" colspan="2">أهلا بك الطالب :
                <asp:Label ID="Label18" runat="server" ForeColor="#FF6600"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                رقم القيد :
                <asp:Label ID="Label19" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            <td class="style12">
                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                    Font-Size="14pt" OnClick="LinkButton1_Click">الصفحة الرئيسية</asp:LinkButton>
                </td>
            <td class="style9">
                <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
                </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <b>
                <span dir="RTL" lang="AR-SA" style="font-size:14.0pt;
line-height:115%;font-family:&quot;Simplified Arabic&quot;,&quot;serif&quot;;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA">تعليمات عن الامتحان</span></b></td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <span dir="RTL" lang="AR-SA" style="font-size:14.0pt;
line-height:115%;font-family:&quot;Simplified Arabic&quot;,&quot;serif&quot;;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:EN-US;mso-fareast-language:
EN-US;mso-bidi-language:AR-SA" class="auto-style3">على الطالب الالتزام بالوقت المحدد للامتحان</span></td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style14">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="14pt" 
                    Text="اختر نوع الأسئلة "></asp:Label>
            </td>
            <td class="style11" align="right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Font-Bold="True" Font-Size="14pt" style="margin-right: 0px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>صح أو خطأ</asp:ListItem>
                    <asp:ListItem>اختر الإجابة الصحيحة</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="ابدأ" 
                    Font-Bold="True" Font-Size="14pt" OnCheckedChanged="CheckBox1_CheckedChanged" />
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="1" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                        &nbsp;<br />
                        <asp:Button ID="Button1" runat="server" Text="التالي" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button1_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button13" runat="server" Font-Bold="True" Font-Size="14pt" 
                            style="height: 34px" Text="حفظ الإجابة" OnClick="Button13_Click" />
                        &nbsp;&nbsp;&nbsp; [ درجة السؤال
                        <asp:Label ID="Label13" runat="server" ForeColor="Red"></asp:Label>
                        ]
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:RadioButton ID="RadioButton4" runat="server" Font-Bold="True" 
                            Font-Size="14pt" GroupName="2" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="2" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton6" runat="server" GroupName="2" 
                            Font-Bold="True" Font-Size="14pt" />
                        <br />
                        <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="Button2" runat="server" Text="التالي" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button2_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="السابق" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button3_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button12" runat="server" Text="حفظ الإجابة" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button12_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ درجة السؤال
                        <asp:Label ID="Label14" runat="server" ForeColor="Red"></asp:Label>
                        ]
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:RadioButton ID="RadioButton7" runat="server" GroupName="3" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;
                        <asp:RadioButton ID="RadioButton8" runat="server" Font-Bold="True" 
                            Font-Size="14pt" GroupName="3" />
                        &nbsp;
                        <asp:RadioButton ID="RadioButton9" runat="server" GroupName="3" 
                            Font-Bold="True" Font-Size="14pt" />
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="7" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="Button5" runat="server" Text="التالي" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button5_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" Text="السابق" 
                            Font-Bold="True" Font-Size="14pt" Height="40px" OnClick="Button6_Click" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button11" runat="server" Text="حفظ الإجابة" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button11_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [ درجة السؤال
                        <asp:Label ID="Label15" runat="server" ForeColor="Red"></asp:Label>
                        ]
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:RadioButton ID="RadioButton10" runat="server" GroupName="4" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton11" runat="server" GroupName="4" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton12" runat="server" GroupName="4" 
                            Font-Bold="True" Font-Size="14pt" />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="7" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="Button7" runat="server" Text="التالي" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button7_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button8" runat="server" Text="السابق" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button8_Click" />
                        &nbsp;
                        <asp:Button ID="Button10" runat="server" Text="حفظ الإجابة" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button10_Click" />
                        &nbsp;&nbsp;&nbsp; [ درجة السؤال
                        <asp:Label ID="Label16" runat="server" ForeColor="Red"></asp:Label>
                        ]
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:RadioButton ID="RadioButton13" runat="server" GroupName="5" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;
                        <asp:RadioButton ID="RadioButton14" runat="server" GroupName="5" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton15" runat="server" GroupName="5" 
                            Font-Bold="True" Font-Size="14pt" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="7" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="Button9" runat="server" Text="السابق" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button9_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" Text="حفظ الإجابة" Font-Bold="True" 
                            Font-Size="14pt" OnClick="Button4_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp; [ درجة السؤال
                        <asp:Label ID="Label17" runat="server" ForeColor="Red"></asp:Label>
                        ]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        </table>
</asp:Content>
