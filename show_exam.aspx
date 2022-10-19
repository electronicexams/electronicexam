<%@ Page Title="" Language="C#" MasterPageFile="~/MasterStudent.Master" AutoEventWireup="true" CodeBehind="show_exam.aspx.cs" Inherits="ExamOnline.show_exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" dir="rtl">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Exam_id" Font-Bold="True" Font-Size="14pt" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1241px" AllowCustomPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="12">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Exam_id" HeaderText="رقم الامتحان" />
                        <asp:BoundField DataField="title" HeaderText="اسم الامتحان" />
                        <asp:BoundField DataField="sub_id" HeaderText="رقم المادة" />
                        <asp:BoundField DataField="sub_name" HeaderText="اسم المادة" />
                        <asp:BoundField DataField="hour" HeaderText="دقائق الامتحان" />
                        <asp:CommandField ButtonType="Button" SelectText="بداية الامتحان" 
                            ShowSelectButton="True" >
                        <ControlStyle Font-Bold="True" Font-Size="14pt" />
                        <FooterStyle Font-Bold="True" Font-Size="14pt" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table></asp:Content>
