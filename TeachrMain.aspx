<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTeach.Master" AutoEventWireup="true" CodeBehind="TeachrMain.aspx.cs" Inherits="ExamOnline.TeachrMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style3" dir="rtl">
        <tr>
            <td align="center" class="style2" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Label ID="Label2" runat="server" 
                    Text="لعرض إجابات الطلبة قم بالبحت عن الطالب المراد عرض إجابته" 
                    Font-Bold="True" Font-Size="14pt"></asp:Label>
            </td>
        </tr>
        <tr>
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
                    Font-Size="14pt" Width="76px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="stu_id" DataSourceID="SqlDataSource1" Width="798px" 
                    Font-Bold="True" Font-Size="14pt" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
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
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconect %>" 
                    SelectCommand="SELECT [stu_id], [stu_name] FROM [student] WHERE (([stu_id] = @stu_id) OR ([stu_name] LIKE '%' + @stu_name + '%'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="stu_id" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="stu_name" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
