<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="driversdetails.aspx.cs" Inherits="admin_drivers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server" align="center">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <div class="row">
            <!-- Column -->

            <div class="col-lg-4 col-xlg-3 col-md-5">


                <div class="card">
                    <div class="card-body">
                        <%--<img class="card-img" src="../assets/images/background/socialbg.jpg" alt="Card image">--%>
                        <asp:Image ID="imgdriver" class="card-img" runat="server" alt="Driver image" />
                        <div class=" card-inverse social-profile d-flex ">
                            <%--card-img-overlay--%>
                            <div class="align-self-center">
                                <%--<img src="../assets/images/users/1.jpg" class="img-circle" width="100">--%>
                                <%--<asp:Image ID="imgcar2" runat="server" width="100" class="img-circle" ImageAlign="Middle"></asp:Image>--%>
                                <div class="row">
                                    <div class="card-body">
                                        <h4 class="text-muted">
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
                    </div>
                </div>
                <%--</div>
      <div class="row"  >--%>
                <div class="card">
                    <div class="card-body">
                        <h6>
                            <asp:HyperLink ID="hl3" runat="server">Car Details</asp:HyperLink>
                        </h6>

                        <small class="text-muted">driver name : </small>
                        <h6>
                            <asp:Label ID="drivname" runat="server" Text="Label"></asp:Label>
                        </h6>

                        <small class="text-muted">driving licence no : </small>
                        <h6>
                            <asp:Label ID="drivlieno" runat="server" Text="Label"></asp:Label>
                        </h6>

                        <%--<small class="text-muted p-t-30 db">Transmisson Type : </small>--%>
                        <small class="text-muted">driving licence expire date : </small>
                        <h6>
                            <asp:Label ID="drivliexpdate" runat="server" Text="Label"></asp:Label>
                        </h6>

                        <small class="text-muted">Age : </small>
                        <h6>
                            <asp:Label ID="lblage" runat="server" Text="Label"></asp:Label>
                        </h6>

                        <small class="text-muted">Birthdate : </small>
                        <h6>
                            <asp:Label ID="lblbdt" runat="server" Text="Label"></asp:Label>
                        </h6>

                        <small class="text-muted">Address : </small>
                        <h6>
                            <asp:Label ID="lbladd" runat="server" Text="Label"></asp:Label>
                        </h6>
                        <%--<small class="text-muted"> email : </small>
                                <h6>
                                    <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                                </h6>

                                <small class="text-muted"> phone no : </small>
                                <h6>
                                    <asp:Label ID="phoneno" runat="server" Text="Label"></asp:Label>
                                </h6>--%>
                        <br />
                        <h6>
                            <asp:HyperLink ID="hl1" runat="server">Update</asp:HyperLink>
                        </h6>
                        <br />
                        <h6>
                            <asp:HyperLink ID="hl2" runat="server">Delete</asp:HyperLink>
                        </h6>
                        <br />
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
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
            <div class="col-lg-8 col-xlg-9 col-md-7">
                <div class="card">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs profile-tab" role="tablist">
                        <%--<li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#home" role="tab" aria-selected="false">Timeline</a> </li>--%>
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#profile" role="tab" aria-selected="true">Profile</a> </li>
                        <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#Reviews" role="tab" aria-selected="false">Reviews</a> </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">

                        <!--second tab-->
                        <div class="tab-pane active" id="profile" role="tabpanel">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3 col-xs-6 b-r">
                                        <strong>Full Name
                                        </strong>
                                        <br>
                                        <p class="text-muted">
                                            <center>
                                                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                                                    </center>
                                        </p>
                                    </div>
                                    <div class="col-md-3 col-xs-6 b-r">
                                        <strong>Mobile</strong>
                                        <br>
                                        <p class="text-muted">
                                            <center>
                                                    <asp:Label ID="lblno" runat="server" Text="Label"></asp:Label>
                                                    </center>
                                        </p>
                                    </div>
                                    <div class="col-md-3 col-xs-6 b-r">
                                        <strong>Email</strong>
                                        <br>
                                        <p class="text-muted">
                                            <center>
                                                    <asp:Label ID="lblmail" runat="server" Text="Label"></asp:Label>
                                                    </center>
                                        </p>
                                    </div>
                                    <div class="col-md-3 col-xs-6">
                                        <strong>Location</strong>
                                        <br>
                                        <p class="text-muted">
                                            <center>
                                                    <asp:Label ID="lbllocation" runat="server" Text=""></asp:Label>
                                                    </center>
                                        </p>
                                    </div>
                                </div>
                                <hr>
                                <%--<p class="m-t-30">Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt.Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries </p>
                                        <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>--%>
                                <%--<h4 class="font-medium m-t-30">Skill Set</h4>
                                        <hr>
                                        <h5 class="m-t-30">Wordpress <span class="pull-right">80%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                        <h5 class="m-t-30">HTML 5 <span class="pull-right">90%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                        <h5 class="m-t-30">jQuery <span class="pull-right">50%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                                        </div>
                                        <h5 class="m-t-30">Photoshop <span class="pull-right">70%</span></h5>
                                        <div class="progress">
                                            <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%; height:6px;"> <span class="sr-only">50% Complete</span> </div>
                                        </div>--%>


                                <div class="card-body">
                                    <div class="profiletimeline">
                                        <%--<div class="sl-item">--%>
                                        <%--<div class="sl-left"> <img src="../assets/images/users/1.jpg" alt="user" class="img-circle"> </div>--%>
                                        <%--<div class="sl-right">--%>
                                        <div>
                                            <h5>Focus on driving </h5>
                                            <p>
                                                Keep 100% of your attention on driving at all times – no multi-tasking. 
Don’t use your phone or any other electronic device while driving. 
Slow down. Speeding gives you less time to react and increases the severity of an accident. 
                                            </p>
                                            <br />
                                            <h5>Drive “defensively” </h5>
                                            <p>
                                                Be aware of what other drivers around you are doing, and expect the unexpected. 
Assume other motorists will do something crazy, and always be prepared to avoid it. 
Keep a 2-second cushion between you and the car in front of you.
Make that 4 seconds if the weather is bad. 
                                            </p>
                                            <br />
                                            <h5>Make a safe driving plan </h5>
                                            <p>
                                                Build time into your trip schedule to stop for food, rest breaks, phone calls or other business. 
Adjust your seat, mirrors and climate controls before putting the car in gear.
Pull over to eat or drink. It takes only a few minutes.
                                            </p>

                                        </div>
                                        <%--</div>--%>
                                        <%--</div>--%>
                                        <hr>
                                    </div>






                                </div>

                            </div>

                        </div>

                        <div class="tab-pane" id="Reviews" role="tabpanel">
                                <%--<div class="card-body">--%>
                                    <div data-spy="scroll" data-target="#navbar-example3" data-offset="0" class="card-body position-relative mt-4" style="height: 300px; overflow: auto;">
                                    <div class="profiletimeline">
                                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                        <div class="sl-item">
                                            <div class="sl-left">
                                                <img src="../img/c3.png" alt="user" class="img-circle">
                                            </div>
                                            <div class="sl-right">
                                                <div style="text-align: left">
                                                    <a class="link"><%#Eval("fname") %>  <%#Eval("lname") %> </a>
                                                    <p> <%#Eval("rate") %> <i class="fa fa-star"></i> </p>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-6 m-b-20">
                                                            <%#Eval("feedback") %>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </ItemTemplate>
                                            </asp:Repeater>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'>
                            </asp:SqlDataSource>
                                        
                                        
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>



        <%--<div class="row">

            <div class="col-lg-4 col-md-12">
                <div class="card">
                    <div data-spy="scroll" data-target="#navbar-example3" data-offset="0" class="card-body position-relative mt-4" style="height: 300px; overflow: auto;">

                       
                        <h4 class="card-title">Ratings</h4>
                        <ul class="feeds">

                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <li>
                                        <div class="bg-info" id="item-1">
                                            <i class="ti-user text-white"></i>
                                        </div><%#Eval("fname") %>  <%#Eval("lname") %>
                                        
                                        <p><center><%#Eval("feedback") %>
                                            &nbsp <%#Eval("rate") %> <i class="fa fa-star"></i>
                                           </center>
                                        </p>
                                        
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'>
                            </asp:SqlDataSource>
                        </ul>
                    </div>
                </div>
            </div>
        </div>--%>

    </form>
</asp:Content>

