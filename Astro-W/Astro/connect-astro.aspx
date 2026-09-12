<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="connect-astro.aspx.cs" Inherits="connect_astro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_shopsingle_wrapper as_padderBottom80 as_padderTop80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-12">
                        <div class="as_shopsingle_slider">
                            <div class="as_shopsingle_for">
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/270x320" alt="" class="img-responsive">
                                </div>
<%--                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/270x320" alt="" class="img-responsive">
                                </div>
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/270x320" alt="" class="img-responsive">
                                </div>
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/270x320" alt="" class="img-responsive">
                                </div>--%>
                            </div>
<%--                            <div class="as_shopsingle_nav">
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/67x79" alt="" class="img-responsive">
                                </div>
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/67x79" alt="" class="img-responsive">
                                </div>
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/67x79" alt="" class="img-responsive">
                                </div>
                                <div class="as_prod_img">
                                    <img src="https://dummyimage.com/67x79" alt="" class="img-responsive">
                                </div>
                            </div>--%>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 col-sm-12">
                        <div class="as_product_description">
                            
                            <h2 class="as_price">Mr Astrologer</h2>
                            <h3 class="as_subheading as_margin0 as_padderBottom10"></h3>
                            <div class="product_rating as_padderBottom10">
                                <span class="ref_number as_font14 as_orange">Expertise:</span> 
                                <span class="rating_star">Kp</span>
                                <br /><br />
                                <span class="ref_number as_font14 as_orange">Experience:</span> 
                                <span class="rating_star">15 + Years of Experience</span>
                                <br /><br />
                                <span class="ref_number as_font14 as_orange">Language:</span> 
                                <span class="rating_star">English, Hindi</span>
                            </div>

 

 

 
                            <div class="product_buy">
                                <a href="#" class="buy_btn as_btn">Chat</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="as_tab_wrapper as_padderTop80">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="Today" data-bs-toggle="tab" data-bs-target="#today" type="button" role="tab" aria-controls="today" aria-selected="true">Descriptions</button>
                                  </li>
                                  <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="Tomorrow" data-bs-toggle="tab" data-bs-target="#tomorrow" type="button" role="tab" aria-controls="tomorrow" aria-selected="false">Review</button>
                                  </li>
                            </ul>
                              
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="today" role="tabpanel" aria-labelledby="Today"> 
                                   <h3 class="as_subheading as_orange">About Astrologer</h3>
                                   <p class="as_font14 as_padderBottom20">Consectetur adipisicing elit, sed do eiusmod tempor incididunt uest labore et dolore magna aliqua. Ut enim ad minim veniam, sequis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duiess aute irure dolor in reprehenderit in volupisitate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat noeseiin proident.</p>

                                   <h3 class="as_subheading as_orange">Specialist in</h3>
                                   <p class="as_font14 as_padderBottom20">Consectetur adipisicing elit, sed do eiusmod tempor incididunt uest labore et dolore magna aliqua. Ut enim ad minim veniam, sequis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duiess aute irure dolor in reprehenderit in volupsitate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat noeseiin proident, sunt isden culpa quesdei officia deserunt mollit anim id est laborumc ommodo consequat. Duiess aute irure.</p>
                                </div>
                                <div class="tab-pane fade" id="tomorrow" role="tabpanel" aria-labelledby="Tomorrow"> 
                                   <h3 class="as_subheading as_orange">Review</h3>
                                   <p class="as_font14 as_padderBottom20">There are no review yet</p>

                                   <h3 class="as_subheading as_orange">Add A Review</h3>
                                   <p class="as_font14 as_padderBottom20">Your email address will not be published.</p>

                                   <form action="">
                                       <div class="form-group">
                                           <textarea name="" id="" placeholder="Your Review" class="form-control"></textarea>
                                       </div>

                                       <div class="row">
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <input type="text" name="" class="form-control" placeholder="Your Name" class="form-control" id="">
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <input type="text" name="" class="form-control" placeholder="Your Email" class="form-control" id="">
                                                </div>
                                            </div>
                                       </div>

                                       <button class="as_btn">submit</button>
                                   </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>