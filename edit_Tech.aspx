<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="edit_Tech.aspx.cs" Inherits="ExamOnline.edit_Tech" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
        width: 347px;
    }
        .style4
        {
            height: 30px;
            width: 347px;
        }
    .style5
    {
            height: 3px;
        }
    .style6
    {
        width: 347px;
        height: 3px;
    }
    .style7
    {
        height: 3px;
        width: 389px;
    }
    .style8
    {
        width: 389px;
    }
    .style9
    {
        height: 30px;
        width: 389px;
    }
    .style11
    {
        width: 347px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" dir="rtl" 
    style="height: 326px; margin-right: 73px; margin-bottom: 0px; width: 98%;">
        <tr>
            <td class="style5">
                </td>
            <td class="style7">
                </td>
            <td class="style6">
                </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td>
                </td>
            <td class="style8">
                <asp:Label ID="Label1" runat="server" Text="أدخل الإسم" Font-Bold="True" 
                    Font-Size="14pt"></asp:Label>
            </td>
            <td align="right" class="style11">
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="بحث" Width="50px" 
                    Font-Bold="True" Font-Size="14pt" />
            &nbsp;</td>
            <td align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style9">
                </td>
            <td class="style4">
                </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Teach_ID" DataSourceID="SqlDataSource1" CellPadding="4" Font-Bold="True" Font-Size="14pt" ForeColor="#333333" GridLines="None" Width="874px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Teach_ID" HeaderText="رقم الاستاذ" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Teach_ID" />
                        <asp:BoundField DataField="Teach_Name" HeaderText="الاسم" 
                            SortExpression="Teach_Name" />
                        <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" SortExpression="Email" />
                        <asp:BoundField DataField="Password" HeaderText="كلمة مرور" 
                            SortExpression="Password" />
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="تحديث"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="الغاء الامر"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="حذف" ></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#666666" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:myconect %>" 
                    
                    SelectCommand="SELECT * FROM [Teachers] WHERE ([Teach_Name] LIKE '%' + @Teach_Name + '%')" 
                    DeleteCommand="DELETE FROM Teachers WHERE (Teach_ID = @Teach_ID)" 
                    UpdateCommand="UPDATE Teachers SET Teach_Name = @Teach_Name, Email = @Email, password = @password WHERE (Teach_ID = @Teach_ID)" ProviderName="System.Data.SqlClient">
                    <DeleteParameters>
                        <asp:Parameter Name="Teach_ID" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Teach_Name" 
                            PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Teach_Name" />
                        <asp:Parameter Name="email" />
                        <asp:Parameter Name="password" />
                        <asp:Parameter Name="Teach_ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table></asp:Content>
