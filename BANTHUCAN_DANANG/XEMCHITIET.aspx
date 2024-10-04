<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="XEMCHITIET.aspx.cs" Inherits="BANTHUCAN_DANANG.XEMCHITIET" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/CSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-container" style=" display: flex; justify-content: center; align-items: center; width:100%; margin-left:344px;">
        <div style="text-align: center;">
            <asp:Label ID="lblSanphamNew" runat="server" Text="Thông tin sản phẩm" CssClass="header" />
            <asp:Label runat="server" ID="lblSPID" Visible="false" Font-Size="12px" />
        </div>

        <div class="myrow">
            <!-- Cột ảnh sản phẩm -->
            <div class="mycol-4">
                <asp:Image ID="Image1" runat="server" CssClass="product-image" />
            </div>

            <!-- Cột thông tin sản phẩm -->
            <div class="mycol-8">
                <asp:Label ID="lblMessage" ForeColor="Red" Font-Bold="true" runat="server" Text="" />
                <table align="center" class="product-table">
                    <tr>
                        <td>Tên sản phẩm</td>
                        <td>
                            <asp:TextBox ID="txtSanphamName" runat="server" MaxLength="50"
                                ToolTip="Tên sản phẩm"
                                AutoCompleteType="Disabled" placeholder="Tên sản phẩm" ReadOnly="true" />
                        </td>
                    </tr>
                    <tr>
                        <td>Mô tả</td>
                        <td>
                            <asp:TextBox ID="txtSanphamMota" runat="server" MaxLength="20"
                                ToolTip="Mô tả sản phẩm"
                                AutoCompleteType="Disabled" placeholder="Mô tả sản phẩm" ReadOnly="true" />
                        </td>
                    </tr>
                    <tr>
                        <td>Giá bán</td>
                        <td>
                            <asp:TextBox ID="txtDongia" runat="server" MaxLength="20"
                                ToolTip="Giá bán"
                                AutoCompleteType="Disabled" placeholder="Giá bán sản phẩm" ReadOnly="true" />
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
                        <td colspan="2" class="button-group">
                            <asp:Button ID="btnChonSanpham" runat="server"
                                Text="Chọn sản phẩm"
                                Visible="true" CausesValidation="false"
                                OnClick="btnChonSanpham_Click"
                                UseSubmitBehavior="false" />
                            <asp:Button ID="btnClose" runat="server"
                                Text="Close"
                                CausesValidation="false"
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
    </div>
</asp:Content>
