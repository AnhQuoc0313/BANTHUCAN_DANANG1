<%@ Page Title="" Language="C#" MasterPageFile="~/TRANGME.Master" AutoEventWireup="true" CodeBehind="XEMDONHANG.aspx.cs" Inherits="BANTHUCAN_DANANG.XEMDONHANG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
     .auto-style3 {
         height: 26px;
     }

     .auto-style4 {
         margin-right: 69px;
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style3">

            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <%-- Gridview --%>
            <div class="myrow" style="margin-top: 20px;">
                <div class="mycol-9">
                    <asp:GridView ID="listDonhangs" runat="server" AutoGenerateColumns="False" AllowSorting="True" Width="90%"
                        DataKeyNames="IDDH"
                        BorderColor="Silver"
                        OnRowCommand="lbXacnhanDonhang_RowCommand"
                        OnRowDeleting="lbDelDonhang_RowDeleting"
                        EmptyDataText="Không có dữ liệu trong đơn hàng" CssClass="auto-style4">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%# Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" Width="25px" />
                                <ItemStyle HorizontalAlign="Left" Font-Bold="true" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Hình Ảnh">
                                <ItemTemplate>
                                    <asp:Image ID="img" runat="server" Width="100px" Height="100px" ImageUrl='<%#  "~/IMAGE/"+Eval("IMG") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--  
            <asp:BoundField DataField="TENNHOM" HeaderText="Nhóm">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="MaSP" HeaderText="Mã">
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
                 --%>
                            <asp:BoundField DataField="TENSP" HeaderText="Tên sản phẩm">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SOLUONGDH" HeaderText="Số lượng">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TONGTIENDH" HeaderText="Tiền cần thanh toán" DataFormatString="{0:### ### ###}">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TRANGTHAIDH" HeaderText="Trạng thái đơn hàng">
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <%-- Update Company --%>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbXacnhanDonhang" runat="server" CommandArgument='<%# Eval("IDDH") %>'
                                        CommandName="XacnhanDonhang" Text="Xác Nhận" CausesValidation="false"></asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="80px" />
                            </asp:TemplateField>


                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbDelDonhang" Text="Del" runat="server"
                                        OnClientClick="return confirm('Bạn chắc chắn muốn xóa sản phẩm này?');" CommandName="Delete" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
        </td>
        <td class="auto-style3"></td>
    </tr>

</table>
</asp:Content>
