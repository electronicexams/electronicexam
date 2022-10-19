<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="edit_student.aspx.cs" Inherits="ExamOnline.edit_student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            height: 13px;
            text-align: center;
        }
        .style6
        {
            height: 36px;
        }
        .style7
        {
            height: 36px;
            width: 373px;
        }
        .style8
        {
            height: 13px;
            width: 373px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" dir="rtl" style="height: 321px">
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                </td>
            <td class="style6">
                </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="أدخل الرقم" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt" 
                    Height="36px" Width="193px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="بحث" Font-Bold="True" 
                    Font-Size="14pt" OnClick="Button1_Click" />
                </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style8">
                </td>
            <td class="style5">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2" DataKeyNames="stu_id" 
                    DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="14pt" AllowPaging="True" Width="951px">
                    <Columns>
                        <asp:BoundField DataField="stu_id" HeaderText="رقم القيد" ReadOnly="True"  SortExpression="stu_id" />
                        <asp:BoundField DataField="stu_name" HeaderText="اسم الطالب" 
                            SortExpression="stu_name" />
                        <asp:BoundField DataField="password" HeaderText="كلمة المرور" 
                            SortExpression="password" />
                        <asp:BoundField DataField="NID" HeaderText="الرقم الوطني" SortExpression="NID" />
                        <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" SortExpression="Email" />
                        <asp:CommandField ButtonType="Button" CancelText="الغاء الامر" EditText="تعديل" ShowEditButton="True" UpdateText="تحديث" />
                        <asp:TemplateField ShowHeader="False" ValidateRequestMode="Disabled">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="حذف" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconect %>" 
                    SelectCommand="SELECT [stu_id], [stu_name], [password], [NID], [Email] FROM [student] WHERE ([stu_id] = @stu_id)" 
                    

                     DeleteCommand="DELETE FROM student WHERE (stu_id = @stu_id)" 
               
                    UpdateCommand="UPDATE student SET stu_name = @stu_name, password = @password,NID=@NID,Email=@Email WHERE (stu_id = @stu_id)">
                  <DeleteParameters>
                        <asp:Parameter Name="stu_id" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="stu_id" PropertyName="Text" Type="String" />
                    </SelectParameters>
                       <UpdateParameters>
                        <asp:Parameter Name="stu_name" />
                        <asp:Parameter Name="password" />
                        <asp:Parameter Name="stu_id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
