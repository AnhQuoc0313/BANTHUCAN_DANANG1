<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="XEMCHITIET.aspx.cs" Inherits="BANTHUCAN_DANANG.XEMCHITIET" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center;">
    <asp:Label ID="lblSanphamNew" runat="server" Text="Thông tin sản phẩm" Font-Size="24px" Font-Bold="true" />
    <asp:Label runat="server" ID="lblSPID" Visible="false" Font-Size="12px" />
</div>
<div class="myrow">
    <div class="mycol-4">
        <asp:Image ID="Image1" runat="server" Width="50%" Height="50%"/>
    </div>
    <div class="mycol-8">
        <asp:Label ID="lblMessage" ForeColor="Red" Font-Bold="true" runat="server" Text="" />
        <table align="center">
            <tr>
                <td>Tên sản phẩm</td>
                <td>
                    <asp:TextBox ID="txtSanphamName" runat="server" MaxLength="50" 
                        ToolTip="Tên sản phẩm"
                        AutoCompleteType="Disabled" placeholder="Tên sản phẩm" ReadOnly="true"/>
                </td>
            </tr>
            <tr>
                <td>Mã</td>
                <td>
                    <asp:TextBox ID="txtSanphamMota" runat="server" MaxLength="20" 
                        ToolTip="Mo ta san pham"
                        AutoCompleteType="Disabled" placeholder="Mo ta san pham" ReadOnly="true"/>
                </td>
            </tr>
            <tr>
                <td>ĐVT</td>
                <td>
                    <asp:TextBox ID="txtSanphamDVT" runat="server" MaxLength="10" 
                        ToolTip="Đơn vị tính"
                        AutoCompleteType="Disabled" placeholder="Đơn vị tính" ReadOnly="true"/>
                </td>
            </tr>

            <tr>
                <td>Giá bán</td>
                <td>
                    <asp:TextBox ID="txtDongia" runat="server" MaxLength="20" 
                        ToolTip="Giá bán"
                        AutoCompleteType="Disabled" placeholder="Giá bán sản phẩm" ReadOnly="true"/>
                </td>
            </tr>

            <tr>
                <td>Số lượng</td>
                <td>
                    <asp:TextBox ID="txtSoluong" runat="server" MaxLength="20" 
                        ToolTip="Số lượng"
                        AutoCompleteType="Disabled" placeholder="Số lượng sản phẩm" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="btnChonSanpham" runat="server" 
                        Text="Chọn sản phẩm"
                        Visible="true" CausesValidation="false"
                        OnClick="btnChonSanpham_Click"
                        UseSubmitBehavior="false" />
                    <asp:Button ID="btnClose" runat="server" 
                        Text="Close" CausesValidation="false"
                        OnClick="btnClose_Click"
                        UseSubmitBehavior="false" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblModalMessage" runat="server" ForeColor="Red" Font-Size="12px" Text="" />
                </td>
            </tr>
        </table>
    </div>
</div>
</asp:Content>
