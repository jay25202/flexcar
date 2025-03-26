<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        &nbsp;

    <div class="row">
        <!-- Column -->
        <div class="col-lg-4 col-md-4">
            <div class="card card-inverse card-primary">
                <div class="card-body">
                    <div class="d-flex">
                        <div class="m-r-20 align-self-center">
                            <h1 class="text-white"><i class="ti-pie-chart"></i></h1>
                        </div>
                        <div>
                            <h3 class="card-title">Total Amount Received</h3>
                            <h6 class="card-subtitle">_________</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4 align-self-center">
                            <h2 class="font-light text-white"><asp:Label runat="server" Text="Label" ID="lblamt"></asp:Label></h2>
                        </div>
                        <div class="col-8 p-t-10 p-b-20 align-self-center">
                            <div class="usage chartist-chart" style="height: 65px">
                                <div class="chartist-tooltip" style="top: 13.7375px; left: 127.212px;"></div>
                                <%--<svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"></g><g><g class="ct-series ct-series-a"><path d="M30,60L30,37.5C35.224,45,40.448,60,45.671,60C50.895,60,56.119,6,61.343,6C66.567,6,71.79,55.5,77.014,55.5C82.238,55.5,87.462,24,92.686,24C97.91,24,103.133,46.5,108.357,46.5C113.581,46.5,118.805,12.75,124.029,6C129.252,-0.75,134.476,-3,139.7,-7.5L139.7,60Z" class="ct-area"></path><path d="M30,37.5C35.224,45,40.448,60,45.671,60C50.895,60,56.119,6,61.343,6C66.567,6,71.79,55.5,77.014,55.5C82.238,55.5,87.462,24,92.686,24C97.91,24,103.133,46.5,108.357,46.5C113.581,46.5,118.805,12.75,124.029,6C129.252,-0.75,134.476,-3,139.7,-7.5" class="ct-line"></path><line x1="30" y1="37.5" x2="30.01" y2="37.5" class="ct-point" ct:value="5"></line><line x1="45.671428135463174" y1="60" x2="45.68142813546317" y2="60" class="ct-point" ct:value="0"></line><line x1="61.34285627092634" y1="6" x2="61.35285627092634" y2="6" class="ct-point" ct:value="12"></line><line x1="77.0142844063895" y1="55.5" x2="77.02428440638951" y2="55.5" class="ct-point" ct:value="1"></line><line x1="92.68571254185268" y1="24" x2="92.69571254185269" y2="24" class="ct-point" ct:value="8"></line><line x1="108.35714067731585" y1="46.5" x2="108.36714067731586" y2="46.5" class="ct-point" ct:value="3"></line><line x1="124.02856881277901" y1="6" x2="124.03856881277902" y2="6" class="ct-point" ct:value="12"></line><line x1="139.6999969482422" y1="-7.5" x2="139.70999694824218" y2="-7.5" class="ct-point" ct:value="15"></line></g></g><g class="ct-labels"></g></svg>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->
        <!-- Column -->

        <div class="col-lg-4 col-md-4">
            <div class="card card-inverse card-success">
                <div class="card-body">
                    <div class="d-flex">
                        <div class="m-r-20 align-self-center">
                            <h1 class="text-white"><i class="icon-cloud-download"></i></h1>
                        </div>
                        <div>
                            <h3 class="card-title">visitor count</h3>
                            <h6 class="card-subtitle">_________</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4 align-self-center">
                            <h2 class="font-light text-white">
                                <asp:Label runat="server" Text="Label" ID="l1"></asp:Label>
                            </h2>
                            <h2 class="font-light text-white">View </h2>

                        </div>
                        <div class="col-8 p-t-10 p-b-20 text-right">
                            <div class="spark-count" style="height: 65px">
                                <canvas width="146" height="70" style="display: inline-block; width: 146px; height: 70px; vertical-align: top;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Column -->

        <!-- Column -->

        <div class="col-lg-4 col-md-4">
            <div class="card card-inverse card-primary">
                <div class="card-body">
                    <div class="d-flex">
                        <div class="m-r-20 align-self-center">
                            <h1 class="text-white"><i class="ti-pie-chart"></i></h1>
                        </div>
                        <div>
                            <h3 class="card-title">Total Customers</h3>
                            <h6 class="card-subtitle">_________</h6>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4 align-self-center">
                            
                        </div>
                        <div class="col-8 p-t-10 p-b-20 align-self-center">
                            <div class="usage chartist-chart" style="height: 65px">
                                <center>
                                <h2 class="font-light text-white"><asp:Label runat="server" Text="Label" ID="lblcust"></asp:Label></h2>
                            </center>
                                <div class="chartist-tooltip" style="top: 13.7375px; left: 127.212px;">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--<div class="col-lg-4 col-md-4">
            <div class="card">
                <img class="" src="../assets/images/background/weatherbg.jpg" alt="Card image cap">
                <div class="card-img-overlay" style="height: 110px;">
                    <h3 class="card-title text-white m-b-0 dl">New Delhi</h3>
                    <small class="card-text text-white font-light">Sunday 15 march</small>
                </div>
                <div class="card-body weather-small">
                    <div class="row">
                        <div class="col-8 b-r align-self-center">
                            <div class="d-flex">
                                <div class="display-6 text-info"><i class="wi wi-day-rain-wind"></i></div>
                                <div class="m-l-20">
                                    <h1 class="font-light text-info m-b-0">32<sup>0</sup></h1>
                                    <small>Sunny Rainy day</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 text-center">
                            <h1 class="font-light m-b-0">25<sup>0</sup></h1>
                            <small>Tonight</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- Column -->
    </div>




        <div class="col-12">
            <div class="card">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs profile-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" role="tab" aria-selected="true">Customer's comment</a>
                    </li>

                </ul>
                <!-- Tab panes -->
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <div class="tab-pane active" id="home" role="tabpanel">
                            <div class="card-body">
                                <div class="sl-item">
                                    <div class="sl-right">
                     </HeaderTemplate>
                    <ItemTemplate>
                                        <div>
                                            <a href="#" class="link">Name :<%# Eval("fname") %>  <%# Eval("lname") %></a>
                                            &nbsp; &nbsp;
                                            <a href="#" class="link">Email :<%# Eval("email") %></a>
                                            &nbsp; &nbsp;
                                            <a href="#" class="link">Phone :<%# Eval("phone") %></a>
                                            &nbsp; &nbsp;
                                            <a href="#" class="link">date :<%# Eval("cdate") %></a>
                                            &nbsp; &nbsp; &nbsp;
                                            <a href='comment_delete.aspx?id=<%# Eval("Id") %>' class="text-inverse" title="" data-toggle="tooltip" data-original-title="Delete" aria-describedby="tooltip340078"><i class="ti-trash"></i></a>

                                        <blockquote class="m-t-10">
                                        <%# Eval("comt") %>
                                        </blockquote>
                                    
                                    </div>
                        <br />
                        </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </div>
               </div>
            </div>
                    </FooterTemplate>
                </asp:Repeater>
        </div>
    </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tbl_contact]"></asp:SqlDataSource>

                <asp:SqlDataSource ID="q1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [fname], [lname], [email], [phone], [comt] FROM [tbl_contact]"></asp:SqlDataSource>
    </form>
</asp:Content>

