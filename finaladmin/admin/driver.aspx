<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="driver.aspx.cs" Inherits="admin_driver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <%--<div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">--%>
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->


    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>

        
                <div class="row el-element-overlay">
                    <div class="col-md-12">
                        </HeaderTemplate>
        <ItemTemplate>
                        <h4 class="card-title"> </h4>
                        <h6 class="card-subtitle m-b-20 text-muted"> <code></code></h6> </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="el-card-item">
                                <div class="el-card-avatar el-overlay-1"> <img src='../driver_image/<%# Eval("pic") %>' alt="user" />
                                    <div class="el-overlay">
                                        <ul class="el-info">
                                            <li><a class="btn default btn-outline image-popup-vertical-fit" href='driver_update.aspx?id=<%# Eval("driver_id") %>'><i class="ti-pencil-alt"></i><%--Update--%></a></li>
                                            <li><a class="btn default btn-outline image-popup-vertical-fit" href='driversdetails.aspx?id=<%# Eval("driver_id") %>'><i class="icon-magnifier"></i></a></li>
                                            <li><a class="btn default btn-outline image-popup-vertical-fit" href='driver_delete.aspx?id=<%# Eval("driver_id") %>'><i class="mdi mdi-delete"></i><%--Delete--%></a></li>
                                            
                                            </ul>
                                    </div>
                                </div>
                                <div class="el-card-content">
                                    <h3><asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>'></asp:Label></h3><br/>
                                      <h4><asp:Label ID="Label2" runat="server" Text='<%# Eval("lname") %>'></asp:Label></h4><br/>
                                    <br/> </div>
                            </div>
                        </div>

                        </ItemTemplate>
            <FooterTemplate>
                    </div>   
                </div>
            </FooterTemplate>

 </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_driver]"></asp:SqlDataSource>

</asp:Content>

