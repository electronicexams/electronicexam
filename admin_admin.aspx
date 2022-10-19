<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="admin_admin.aspx.cs" Inherits="ExamOnline.admin_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .style3
        {
            width: 100%;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="style3" dir="rtl">
        <tr>
            <td align="center" class="style2" colspan="2">
                &nbsp;</td>
        </tr>
      <%--  <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Label ID="Label2" runat="server" 
                    Text="لعرض إجابات الطلبة قم بالبحت عن الطالب المراد عرض إجابته" 
                    Font-Bold="True" Font-Size="14pt"></asp:Label>
            </td>
        </tr>--%>
<%--        <tr>
            <td align="center" class="style2" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="البحث برقم القيد أو اسم الطالب" 
                    Font-Bold="True" Font-Size="14pt"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="ابحث" Font-Bold="True"
                    Font-Size="14pt" OnClick="Button1_Click" />
            </td>
        </tr>--%>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
      <%--  <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="stu_id" DataSourceID="SqlDataSource1" Width="486px" 
                    Font-Bold="True" Font-Size="14pt">
                    <Columns>
                        <asp:BoundField DataField="stu_id" HeaderText="رقم القيد" ReadOnly="True" 
                            SortExpression="stu_id" />
                        <asp:BoundField DataField="stu_name" HeaderText="اسم الطالب" 
                            SortExpression="stu_name" />
                        <asp:CommandField ButtonType="Button" SelectText="عرض الإجابة" 
                            ShowSelectButton="True" >
                        <ControlStyle Font-Bold="True" Font-Size="14pt" />
                        <FooterStyle Font-Bold="True" Font-Size="14pt" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconnection %>" 
                    SelectCommand="SELECT [stu_id], [stu_name] FROM [student] WHERE (([stu_id] = @stu_id) OR ([stu_name] LIKE '%' + @stu_name + '%'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="stu_id" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="stu_name" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>--%>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
