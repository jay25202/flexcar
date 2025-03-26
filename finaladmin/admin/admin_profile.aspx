<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="admin_profile.aspx.cs" Inherits="admin_admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 col-8 align-self-center">
                    <h3 class="text-themecolor m-b-0 m-t-0">Profile</h3>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)"><a href="dashboard.aspx">admin</a></a></li>
                        <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </div>
                <%-- <div class="col-md-7 col-4 align-self-center">
                        <div class="d-flex m-t-10 justify-content-end">
                            <div class="d-flex m-r-20 m-l-10 hidden-md-down">
                                <div class="chart-text m-r-10">
                                    <h6 class="m-b-0"><small>THIS MONTH</small></h6>
                                    <h4 class="m-t-0 text-info">$58,356</h4></div>
                                <div class="spark-chart">
                                    <div id="monthchart"><canvas width="60" height="35" style="display: inline-block; width: 60px; height: 35px; vertical-align: top;"></canvas></div>
                                </div>
                            </div>
                            <div class="d-flex m-r-20 m-l-10 hidden-md-down">
                                <div class="chart-text m-r-10">
                                    <h6 class="m-b-0"><small>LAST MONTH</small></h6>
                                    <h4 class="m-t-0 text-primary">$48,356</h4></div>
                                <div class="spark-chart">
                                    <div id="lastmonthchart"><canvas width="60" height="35" style="display: inline-block; width: 60px; height: 35px; vertical-align: top;"></canvas></div>
                                </div>
                            </div>
                            <div class="">
                                <button class="right-side-toggle waves-effect waves-light btn-success btn btn-circle btn-sm pull-right m-l-10"><i class="ti-settings text-white"></i></button>
                            </div>
                        </div>
                    </div>--%>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <!-- Row -->
            <%--  <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <center class="m-t-30"> <img src="../assets/images/users/5.jpg" class="img-circle" width="150">
                                    <h4 class="card-title m-t-10">Hanna Gover</h4>
                                    <h6 class="card-subtitle">Accoubts Manager Amix corp</h6>
                                    <div class="row text-center justify-content-md-center">
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">254</font></a></div>
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-picture"></i> <font class="font-medium">54</font></a></div>
                                    </div>
                                </center>
                            </div>
                            <div>
                                <hr> </div>
                            <div class="card-body"> <small class="text-muted">Email address </small>
                                <h6>hannagover@gmail.com</h6> <small class="text-muted p-t-30 db">Phone</small>
                                <h6>+91 654 784 547</h6> <small class="text-muted p-t-30 db">Address</small>
                                <h6>71 Pilgrim Avenue Chevy Chase, MD 20815</h6>
                                <div class="map-box">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470029.1604841957!2d72.29955005258641!3d23.019996818380896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C+Gujarat!5e0!3m2!1sen!2sin!4v1493204785508" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen=""></iframe>
                                </div> <small class="text-muted p-t-30 db">Social Profile</small>
                                <br>
                                <button class="btn btn-circle btn-secondary"><i class="fa fa-facebook"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fa fa-twitter"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fa fa-youtube"></i></button>
                            </div>
                        </div>
                    </div>--%>

            <div class="row">
                <!-- Column -->

                <div class="col-lg-4 col-xlg-3 col-md-5">


                    <div class="card">
                        <div class="card-body">
                            <%--<img class="card-img" src="../assets/images/background/socialbg.jpg" alt="Card image">--%>
                            <asp:Image ID="imgadmin" class="card-img" runat="server" alt="admin image" />
                            <div class=" card-inverse social-profile d-flex ">
                                <%--card-img-overlay--%>
                                <div class="align-self-center">
                                    <%--<img src="../assets/images/users/1.jpg" class="img-circle" width="100">--%>
                                    <%--<asp:Image ID="imgcar2" runat="server" width="100" class="img-circle" ImageAlign="Middle"></asp:Image>--%>


                                    <h4 class="card-title">
                                        <asp:Label ID="lblfname" runat="server" Text="Label" align="center"></asp:Label>
                                    </h4>
                                    <h5 class="card-subtitle">
                                        <%-- @jamesandre--%>
                                        <asp:Label ID="lbllname" runat="server" Text="Label" align="center"></asp:Label>
                                    </h5>
                                </div>
                            </div>

                            <%--<p class="text-white">
                                       <%-- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  --%>
                            <%--<asp:Label ID="lbltype" runat="server" Text="Label"></asp:Label>

                                    </p>--%>
                        </div>
                    </div>


                    <div class="card">
                        <div class="card-body">
                            <center>
                            <small class="text-muted">admin name : </small>
                            <h6>
                                <asp:Label ID="adminname" runat="server" Text="Label"></asp:Label>
                            </h6>

                            <small class="text-muted">phono no : </small>
                            <h6>
                                <asp:Label ID="phono" runat="server" Text="Label"></asp:Label>
                            </h6>

                            <%--<small class="text-muted p-t-30 db">Transmisson Type : </small>--%>
                            <small class="text-muted">birthdate: </small>
                            <h6>
                                <asp:Label ID="birthdate" runat="server" Text="Label"></asp:Label>
                            </h6>

                            <small class="text-muted">email : </small>
                            <h6>
                                <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                            </h6>



                            <%--<h6>
                                    <asp:HyperLink ID="hl1" runat="server"  >Update</asp:HyperLink>
                                </h6>

                                <h6>
                                    <asp:HyperLink ID="hl2" runat="server" >Delete</asp:HyperLink>
                                </h6>--%>
                            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                                </center>
                            <%--<div class="map-box">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470029.1604841957!2d72.29955005258641!3d23.019996818380896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C+Gujarat!5e0!3m2!1sen!2sin!4v1493204785508" width="100%" height="150" frameborder="0" style="border: 0" allowfullscreen=""></iframe>
                            </div>
                            <small class="text-muted p-t-30 db">Social Profile</small>
                            <br>
                            <button class="btn btn-circle btn-secondary"><i class="fab fa-facebook-f"></i></button>
                            <button class="btn btn-circle btn-secondary"><i class="fab fa-twitter"></i></button>
                            <button class="btn btn-circle btn-secondary"><i class="fab fa-youtube"></i></button>--%>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-8 col-xlg-9 col-md-7">
                    <div class="card">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs profile-tab" role="tablist">
                            <%--<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home" role="tab" aria-selected="true">Timeline</a> </li>--%>
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#profile" role="tab" aria-selected="false">Profile</a> </li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#settings" role="tab" aria-selected="false">Settings</a> </li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <%--<div class="tab-pane active" id="home" role="tabpanel">
                                <div class="card-body">
                                    <div class="profiletimeline">
                                        <div class="sl-item">
                                            <div class="sl-left">
                                                <img src="../assets/images/users/1.jpg" alt="user" class="img-circle">
                                            </div>
                                            <div class="sl-right">
                                                <div>
                                                    <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                    <p>assign a new task <a href="#">Design weblayout</a></p>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-6 m-b-20">
                                                            <img src="../assets/images/big/img1.jpg" class="img-responsive radius">
                                                        </div>
                                                        <div class="col-lg-3 col-md-6 m-b-20">
                                                            <img src="../assets/images/big/img2.jpg" class="img-responsive radius">
                                                        </div>
                                                        <div class="col-lg-3 col-md-6 m-b-20">
                                                            <img src="../assets/images/big/img3.jpg" class="img-responsive radius">
                                                        </div>
                                                        <div class="col-lg-3 col-md-6 m-b-20">
                                                            <img src="../assets/images/big/img4.jpg" class="img-responsive radius">
                                                        </div>
                                                    </div>
                                                    <div class="like-comm"><a href="javascript:void(0)" class="link m-r-10">2 comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-danger"></i>5 Love</a> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="sl-item">
                                            <div class="sl-left">
                                                <img src="../assets/images/users/2.jpg" alt="user" class="img-circle">
                                            </div>
                                            <div class="sl-right">
                                                <div>
                                                    <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                    <div class="m-t-20 row">
                                                        <div class="col-md-3 col-xs-12">
                                                            <img src="../assets/images/big/img1.jpg" alt="user" class="img-responsive radius">
                                                        </div>
                                                        <div class="col-md-9 col-xs-12">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. </p>
                                                            <a href="#" class="btn btn-success">Design weblayout</a>
                                                        </div>
                                                    </div>
                                                    <div class="like-comm m-t-20"><a href="javascript:void(0)" class="link m-r-10">2 comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-danger"></i>5 Love</a> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="sl-item">
                                            <div class="sl-left">
                                                <img src="../assets/images/users/3.jpg" alt="user" class="img-circle">
                                            </div>
                                            <div class="sl-right">
                                                <div>
                                                    <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                    <p class="m-t-10">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper </p>
                                                </div>
                                                <div class="like-comm m-t-20"><a href="javascript:void(0)" class="link m-r-10">2 comment</a> <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart text-danger"></i>5 Love</a> </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="sl-item">
                                            <div class="sl-left">
                                                <img src="../assets/images/users/4.jpg" alt="user" class="img-circle">
                                            </div>
                                            <div class="sl-right">
                                                <div>
                                                    <a href="#" class="link">John Doe</a> <span class="sl-date">5 minutes ago</span>
                                                    <blockquote class="m-t-10">
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                                    </blockquote>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>--%>
                            <!--second tab-->
                            <div class="tab-pane active" id="profile" role="tabpanel">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-3 col-xs-6 b-r">
                                            <strong>Full Name</strong>
                                            <br>
                                            <p class="text-muted">
                                                <asp:Label ID="llb3" runat="server" Text="Label"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r">
                                            <strong>Mobile</strong>
                                            <br>
                                            <p class="text-muted">(+91)<asp:Label ID="llb5" runat="server" Text="Label"></asp:Label></p>
                                        </div>
                                        <div class="col-md-3 col-xs-6 b-r">
                                            <strong>Email</strong>
                                            <br>
                                            <p class="text-muted">
                                                <asp:Label ID="llb7" runat="server" Text="Label"></asp:Label>
                                            </p>
                                        </div>
                                        <div class="col-md-3 col-xs-6">
                                            <strong>Location></strong>
                                            <br>
                                            <p class="text-muted"><asp:Label ID="llb9" runat="server" Text="Label"></asp:Label></p>
                                        </div>
                                    </div>
                                    <%--<hr>
                                    <p class="m-t-30">Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries </p>
                                    <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                    <h4 class="font-medium m-t-30">Skill Set</h4>
                                    <hr>
                                    <h5 class="m-t-30">Wordpress <span class="pull-right">80%</span></h5>
                                    <div class="progress">
                                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%; height: 6px;"><span class="sr-only">50% Complete</span> </div>
                                    </div>
                                    <h5 class="m-t-30">HTML 5 <span class="pull-right">90%</span></h5>
                                    <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%; height: 6px;"><span class="sr-only">50% Complete</span> </div>
                                    </div>
                                    <h5 class="m-t-30">jQuery <span class="pull-right">50%</span></h5>
                                    <div class="progress">
                                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%; height: 6px;"><span class="sr-only">50% Complete</span> </div>
                                    </div>
                                    <h5 class="m-t-30">Photoshop <span class="pull-right">70%</span></h5>
                                    <div class="progress">
                                        <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%; height: 6px;"><span class="sr-only">50% Complete</span> </div>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="tab-pane" id="settings" role="tabpanel">
                                <div class="card-body">
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">First Name</label>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="admin name" class="form-control form-control-line"></asp:TextBox>
                                        <%-- <input type="text" placeholder="Johnathan Doe" class="form-control form-control-line">--%>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">Email</label>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="TextBox2" runat="server" placeholder="email" class="form-control form-control-line" TextMode="Email"></asp:TextBox>
                                        <%--   <input type="email" placeholder="johnathan@admin.com" class="form-control form-control-line" name="example-email" id="example-email">--%>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Password</label>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="Txtpass" runat="server" value="password" class="form-control form-control-line" TextMode="Password"></asp:TextBox>
                                        <%--   <input type="password" value="password" class="form-control form-control-line">--%>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Phone No</label>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtphone" runat="server" placeholder="(+91)phone number" class="form-control form-control-line" TextMode="Phone"></asp:TextBox>
                                        <%-- <input type="text" placeholder="123 456 7890" class="form-control form-control-line">--%>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-12">Select state</label>
                                    <div class="col-sm-12">
                                        <%--<select class="form-control form-control-line">
                                                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                                        
                                                    </select>--%>
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>

                                                <asp:DropDownList ID="ddlstate" runat="server" class="form-control form-control-line" AutoPostBack="True" DataTextField="state_name" DataValueField="state_id" DataSourceID="SqlDataSource_state">
                                                </asp:DropDownList>

                                                <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_state] WHERE ([country_id] = @country_id)">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="1" Name="country_id" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-12">Select City</label>
                                    <div class="col-sm-12">
                                        <%--<select class="form-control form-control-line">
                                                        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                                        
                                                    </select>--%>
                                        <asp:UpdatePanel runat="server">
                                            <ContentTemplate>
                                                <asp:DropDownList ID="ddlcity" runat="server" class="form-control form-control-line" AutoPostBack="True" DataTextField="city_name" DataValueField="city_id" DataSourceID="SqlDataSource_city">
                                                </asp:DropDownList>


                                                <asp:SqlDataSource ID="SqlDataSource_city" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [tbl_city] WHERE ([state_id] = @state_id)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlstate" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>


                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <%-- <button class="btn btn-success"></button>--%>
                                        <asp:Button ID="Button1" runat="server" Text="Update Profile" class="btn btn-success" OnClick="Button1_Click" />
                                    </div>
                                    <asp:Label ID="lbl2" runat="server" Visible="True"></asp:Label>

                                </div>
                                <%--</form>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Column -->
        </div>

        <!-- Row -->
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->
        <div class="right-sidebar" style="overflow: visible;">
            <div class="slimScrollDiv" style="position: relative; overflow: visible hidden; width: auto; height: 100%;">
                <div class="slimscrollright" style="overflow: hidden; width: auto; height: 100%;">
                    <div class="rpanel-title">Service Panel <span><i class="ti-close right-side-toggle"></i></span></div>
                    <div class="r-panel-body">
                        <ul id="themecolors" class="m-t-20">
                            <li><b>With Light sidebar</b></li>
                            <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                            <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                            <li><a href="javascript:void(0)" data-theme="red" class="red-theme">3</a></li>
                            <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme working">4</a></li>
                            <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                            <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
                            <li class="d-block m-t-30"><b>With Dark sidebar</b></li>
                            <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                            <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                            <li><a href="javascript:void(0)" data-theme="red-dark" class="red-dark-theme">9</a></li>
                            <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                            <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                            <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme ">12</a></li>
                        </ul>
                        <ul class="m-t-20 chatonline">
                            <li><b>Chat option</b></li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/1.jpg" alt="user-img" class="img-circle">
                                    <span>Varun Dhavan <small class="text-success">online</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/2.jpg" alt="user-img" class="img-circle">
                                    <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/3.jpg" alt="user-img" class="img-circle">
                                    <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/4.jpg" alt="user-img" class="img-circle">
                                    <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/5.jpg" alt="user-img" class="img-circle">
                                    <span>Govinda Star <small class="text-success">online</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/6.jpg" alt="user-img" class="img-circle">
                                    <span>John Abraham<small class="text-success">online</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/7.jpg" alt="user-img" class="img-circle">
                                    <span>Hritik Roshan<small class="text-success">online</small></span></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <img src="../assets/images/users/8.jpg" alt="user-img" class="img-circle">
                                    <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="slimScrollBar" style="background: rgb(220, 220, 220); width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
                <div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
        </div>  
    </form>
    
</asp:Content>

