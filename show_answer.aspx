<%@ Page Title="" Language="C#" MasterPageFile="~/MasterTeach.Master" AutoEventWireup="true" CodeBehind="show_answer.aspx.cs" Inherits="ExamOnline.show_answer" %>
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
        <td class="style2">
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" EmptyDataText="لا تتوفر اجابة لهذا الطالب" ForeColor="#333333" PageSize="15" Width="779px" Font-Bold="True" 
                Font-Size="14pt" style="margin-left: 159px; margin-right: 0px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="q_id" HeaderText="رقم السؤال" />
                    <asp:BoundField DataField="q_name" HeaderText="السؤال">
                    <ControlStyle Width="250px" />
                    <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="answer" HeaderText="الإجابة">
                    <ControlStyle BackColor="#CCCCCC" Font-Size="14pt" Width="100px" />
                    <ItemStyle Font-Size="14pt" Width="110px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="data_ans" HeaderText="تاريخ الإجابة" />
                    <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="الدرجة">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("q_ans") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("q_ans", "{0:c}") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle BackColor="White" />
                        <ItemStyle BackColor="#66FF33" HorizontalAlign="Center" 
                            VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="12pt" 
                Text="مجموع الدرجات"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
    </tr>
    </table>
</asp:Content>
