<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="DANGNHAP.aspx.cs" Inherits="BANTHUCAN_DANANG.DANGNHAP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
    <tr>
        <td colspan="2">ĐĂNG NHẬP TÀI KHOẢN</td>
    </tr>
    <tr>
        <td class="auto-style5">Tai khoan</td>
        <td class="auto-style6">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mat khau</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Đăng nhập" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">BẠN CHƯA CÓ TÀI KHOẢN</td>
        <td colspan="2">
            
                <asp:Button ID="Button2" runat="server" Text="Đăng ký" OnClick="Button2_Click"/>
            
        </td>
    </tr>
</table>
</asp:Content>
