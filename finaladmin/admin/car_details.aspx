<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="car_details.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form runat ="server" align="center" >
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row"  >
                    <!-- Column -->
       
                    <div class="col-lg-4 col-xlg-3 col-md-5">


                        <div class="card"> 
                            <div class="card-body">
                                <center>
                            <%--<img class="card-img" src="../assets/images/background/socialbg.jpg" alt="Card image">--%>
                            <asp:Image ID="imgcar" class="card-img" runat="server" alt="Car image"/>
                            <div class=" card-inverse social-profile d-flex ">
                                <%--card-img-overlay--%>
                                <div class="align-self-center"> 
                                    <%--<img src="../assets/images/users/1.jpg" class="img-circle" width="100">--%> 
                                    <%--<asp:Image ID="imgcar2" runat="server" width="100" class="img-circle" ImageAlign="Middle"></asp:Image>--%>
                                    
                                    <h4 class="card-title">
                                        <asp:Label ID="lblname" class="col-4" runat="server" Text="Label"></asp:Label>
                                    </h4>
                                     
                                        
                                    
                                    <h5 class="card-subtitle">
                                       <%-- @jamesandre--%> 
                                        <asp:Label ID="lblcompany" runat="server" Text="Label"></asp:Label>
                                    </h5>
                                   
                                    <%--<p class="text-white">
                                       <%-- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt  --%>
                                        <%--<asp:Label ID="lbltype" runat="server" Text="Label"></asp:Label>

                                    </p>--%>
                                       



                                       </div>
                                  </div>
                                    </center>
                            </div>
                            </div>


                        <div class="card">
                            <div class="card-body">
                                <h6>
                                    <asp:HyperLink ID="hl3" runat="server" >Driver Details</asp:HyperLink>
                                </h6>

                                 <small class="text-muted">Car Type : </small>
                                <h6>
                                     <asp:Label ID="lbltype" runat="server" Text="Label"></asp:Label>
                                </h6> 

                                <small class="text-muted">Car Model : </small>
                                <h6>
                                     <asp:Label ID="lblmodel" runat="server" Text="Label"></asp:Label>
                                </h6> 
                                
                                <%--<small class="text-muted p-t-30 db">Transmisson Type : </small>--%>
                                <small class="text-muted">Transmisson Type : </small>
                                 <h6>
                                    <asp:Label ID="lbltran" runat="server" Text="Label"></asp:Label>
                                </h6> 

                                <small class="text-muted">Car Rent : </small>
                                 <h6>
                                    <asp:Label ID="lblrent" runat="server" Text="Label"></asp:Label>
                                </h6> 
                                
                                <small class="text-muted"> Car Owner : </small>
                                <h6>
                                    <asp:Label ID="lblown" runat="server" Text="Label"></asp:Label>
                                </h6>

                                <small class="text-muted"> Regestration Number : </small>
                                <h6>
                                    <asp:Label ID="lblregno" runat="server" Text="Label"></asp:Label>
                                </h6>

                                <small class="text-muted"> Color : </small>
                                <h6>
                                    <asp:Label ID="lblcolor" runat="server" Text="Label"></asp:Label>
                                </h6>

                                <small class="text-muted"> Avarage Fuel Efficiency : </small>
                                <h6>
                                    <asp:Label ID="lblavg" runat="server" Text="Label"></asp:Label>
                                </h6>

                                <small class="text-muted"> Fuel : </small>
                                <h6>
                                    <asp:Label ID="lblfuel" runat="server" Text="Label"></asp:Label>
                                </h6>
                                <br />
                                <%--<h6>
                                    <asp:HyperLink ID="hl1" runat="server"  >Update</asp:HyperLink>
                                </h6>
                                <br />
                                <h6>
                                    <asp:HyperLink ID="hl2" runat="server" >Delete</asp:HyperLink>
                                </h6>--%>
                                <br />
                               <%-- <div class="map-box">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470029.1604841957!2d72.29955005258641!3d23.019996818380896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C+Gujarat!5e0!3m2!1sen!2sin!4v1493204785508" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen=""></iframe>
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
                                <div id="carouselExampleIndicators" class="carousel slide pointer-event" data-ride="carousel">
                                    <div class="carousel-inner" role="listbox" style="left: 0px; top: 0px">
                                       
                                        <div class="carousel-item active"> 
                                           <asp:Image ID="Image1" runat="server" class="img-responsive" alt="First slide"></asp:Image>

                                        </div>
                                        
                                        <div class="carousel-item"> 
                                            <asp:Image ID="Image2" runat="server" class="img-responsive" alt="Second slide" />
                                        </div>
                                        
                                        <div class="carousel-item"> 
                                            <asp:Image ID="Image3" runat="server" class="img-responsive" alt="Third slide" />
                                        </div>

                                        <div class="carousel-item"> 
                                            <asp:Image ID="Image4" runat="server" class="img-responsive" alt="Forth slide"/>
                                        </div>

                                        <div class="carousel-item"> 
                                            <asp:Image ID="Image5" runat="server" class="img-responsive" alt="Fifth slide"/>
                                        </div>

                                      
              
                            
                                          
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
                                </div>
                                
                            </div>
                        
                         </div>  
       

                        
                    </div>
               
                    <!-- Column -->
                   
                
     


        


        
      </form>

</asp:Content>

