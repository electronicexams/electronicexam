<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageHome.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ExamOnline.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style type="text/css">
body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 8px;
        text-align: center;
        font-weight: 700;
        font-size: 18pt;
    }
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 8px auto;
width: 345px;
        height: 394px;
    }
form fieldset input[type="text"], input[type="password"] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #e5e5e5;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        color: #5a5656;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        font-size: 16px;
        height: 40px;
        outline: none;
        padding: 0px 10px;
        width: 280px;
        -webkit-appearance:none;
        text-align: center;
    }
form fieldset input[type="submit"] {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #5DA1A0;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        color: #f4f4f4;
        cursor: pointer;
        font-family: 'Open Sans', Arial, Helvetica, sans-serif;
        height: 50px;
        text-transform: uppercase;
        width: 300px;
        -webkit-appearance:none;
        font-weight: 700;
        font-size: large;
    }
.button{
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 325px;
-webkit-appearance:none;
}

form fieldset a {
color: #5a5656;
font-size: large;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 14px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}
  
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="login">

   <br />
<fieldset>
    <br />
   <p dir="rtl">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="150">
            <asp:ListItem Selected="True">اختر الصفة</asp:ListItem>
            <asp:ListItem Value="مدير النظام">مدير النظام</asp:ListItem>
            <asp:ListItem Value="مـــدرس">مـــدرس</asp:ListItem>
             <asp:ListItem Value="طـــالب">طـــالب</asp:ListItem>
        </asp:DropDownList></p>
  
   <p>
    <asp:TextBox ID="TextBox1" runat="server"  required value="البريد الالكتروني" onBlur="if(this.value=='')this.value='البريد الالكتروني'" onFocus="if(this.value=='البريد الالكتروني')this.value='' "></asp:TextBox> 
    </p>
    <br />
    <p><asp:TextBox ID="TextBox2" runat="server"  required value="كلمة المرور" onBlur="if(this.value=='')this.value='كلمة المرور'" onFocus="if(this.value=='كلمة المرور')this.value='' " MaxLength="12" TextMode="Password"></asp:TextBox> </p>

    <p> 
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </p><br />
    <p>
        <asp:Button ID="Button1" runat="server" Text=" تسجيل دخــول" OnClick="Button1_Click" />
    </p>
   

     </fieldset>
</div> <%-- end login --%>

</asp:Content>
