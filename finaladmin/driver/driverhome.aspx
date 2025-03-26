<%@ Page Title="" Language="C#" MasterPageFile="~/driver/driverMasterPage.master" AutoEventWireup="true" CodeFile="driverhome.aspx.cs" Inherits="driver_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form class="floating-labels m-t-40" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">customer details</h4>
                        &nbsp;
                                &nbsp;
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>



                        <div class="form-group has-success m-b-40">

                            <label for="input7">customer Fname</label>
                            &nbsp; 
                                        <asp:Label ID="lblfname" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>



                        </div>
                        <div class="form-group has-success m-b-40">

                            <label for="input7">Customer Lname</label>
                            &nbsp;
                                     <asp:Label ID="lbllname" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>



                        <div class="form-group has-success m-b-40">

                            <label for="input7">Contact Number</label>
                            &nbsp;
                                     <asp:Label ID="lblcontact" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>

                        <div class="form-group has-success m-b-40">
                            <label for="input7">Billing Amount</label>
                            &nbsp;
                                     <asp:Label ID="lblamt" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>
                        </div>

                        <div class="form-group has-success m-b-40">

                            <label for="input7">Payment Mode</label>
                            &nbsp;
                                     <asp:Label ID="lblpay" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <%--<div class="row">
                    <div class="col-12">
                        
                       <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">car details</h4>
                                &nbsp;
                                &nbsp;--%>


        <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>



        <%-- <div class="form-group has-success m-b-40">
                                        
                                       <label for="input7">car name</label> &nbsp; 
                                        <asp:Label ID="lblname" runat="server" Text="carname"  class="form-control"></asp:Label>
                                      
                                       
                                        
                                    </div>
                                 <div class="form-group has-success m-b-40">
                                        
                                       <label for="input7">car company</label>  &nbsp;
                                     <asp:Label ID="lblcomp" runat="server" Text="company" class="form-control"></asp:Label>
                                        
                                    </div>
                                  <div class="form-group has-success m-b-40">
                                        
                                       <label for="input7">customer registerno</label>  &nbsp;
                                     <asp:Label ID="lblreg" runat="server" Text="regno" class="form-control"></asp:Label>                                        
                                    </div>                                                                                            
                            </div>
                        </div>
                    </div>
                </div>--%>

        <div class="row">
            <div class="col-12">

                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">trip details</h4>
                        &nbsp;
                                &nbsp;
                                <%--<h6 class="card-subtitle">Just add <code>floating-labels</code> class to the form and <code>has-warning, has-success, has-danger &amp; has-error</code> for various inputs. For input with icon add <code>has-feedback</code> class.</h6>--%>



                        <div class="form-group has-success m-b-40">

                            <label for="input7">Pickup Date</label>
                            &nbsp;
                                     <asp:Label ID="lblpickdate" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>

                        <div class="form-group has-success m-b-40">

                            <label for="input7">Pickup Location</label>
                            &nbsp;
                                     <asp:Label ID="lblpickup" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>

                        <div class="form-group has-success m-b-40">

                            <label for="input&">Drop-Off Location</label>
                            &nbsp;
                                     <asp:Label ID="lbldrop" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>

                        <div class="form-group has-success m-b-40">

                            <label for="input7">Drop-Off Date</label>
                            &nbsp;
                                     <asp:Label ID="lbldropdate" runat="server" Text="There is No Booking!" class="form-control"></asp:Label>

                        </div>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="panelstart" runat="server">

                                    <div class="text-center">
                                        <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                        <asp:Button runat="server" Text="Start Ride" ID="btnstart" class="btn-rounded btn-success" OnClick="btnstart_Click" />
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        &nbsp;
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="panelotp" runat="server" Visible="false">
                                    <div class="form-group has-success m-b-40">

                                      <%--  <label for="input7">Enter OTP </label>--%>
                                        <asp:TextBox ID="txtotp" runat="server" class="form-control" placeholder="Enter OTP"></asp:TextBox>
                                      

                                    </div>
                                      <asp:Label ID="lblotp" runat="server" ForeColor="red" ></asp:Label>
                                    <div class="text-center">
                                        <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                        <asp:Button runat="server" Text="Submit OTP" ID="btnsubotp" class="btn-rounded btn-success" OnClick="btnsubotp_Click" />
                                    </div>
                                    &nbsp;
                                
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblstart" runat="server" Text=""></asp:Label>
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:Panel ID="panelend" runat="server" Visible="false">
                                    <div class="text-center">
                                        <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                        <%--<asp:Button runat="server" Text="Payment Receive" ID="btnpay" class="btn-rounded btn-success" OnClick="btnpay_Click" />--%>
                                    </div>
                                    <div class="text-center">
                                        <%--<button type="button" class="btn waves-effect waves-light btn-rounded btn-primary">Primary</button>--%>
                                        <asp:Button runat="server" Text="End Ride" ID="btnend" class="btn-rounded btn-success" OnClick="btnend_Click" />
                                    </div>
                                    <div class="form-group has-success m-b-40">
                                        <asp:Label ID="lblend" runat="server" Text=""></asp:Label>
                                    </div>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                </div>
            </div>
        </div>




    </form>
</asp:Content>

