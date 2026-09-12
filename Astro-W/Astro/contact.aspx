<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>Contact</h1> 

                        <ul class="breadcrumb"> 
                            <li><a href="#">Home</a></li>
                            <li>Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="as_contact_section as_padderTop80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <div class="as_contact_info">
                            <h1 class="as_heading">Contact Information</h1>
                            <p class="as_font14 as_margin0">Consectetur adipiscing elit sed do eiusmod tr incididunt<br> ut labore et dolore magna aliquauis ipsum.</p>

                            <div class="row">
                                <div class="col-xl-6 col-lg-12 col-md-6 col-sm-6 col-xs-12">
                                    <div class="as_info_box">
                                        <span class="as_icon"><img src="assets/images/svg/call1.svg" alt=""></span>
                                        <div class="as_info">
                                            <h5>Call Us</h5>
                                            <p class="as_margin0 as_font14">+ (91) 800 808 8607</p>
                                            <%--<p class="as_margin0 as_font14">+ (91) 1800-326-324</p>--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-12 col-md-6 col-sm-6 col-xs-12">
                                    <div class="as_info_box">
                                        <span class="as_icon"><img src="assets/images/svg/mail.svg" alt=""></span>
                                        <div class="as_info">
                                            <h5>Mail Us</h5>
                                            <p class="as_margin0 as_font14"><a href="javascript:;">info@bharatastro.com</a></p>
                                            <p class="as_margin0 as_font14"><a href="javascript:;">support@bhartastro.com</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <div class="as_contact_form">
                            <h4 class="as_subheading">Have A Question?</h4>
                            <form action="">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" name="" id="" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <input type="text" name="" id="" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Message</label>
                                    <textarea name="" id="" class="form-control"></textarea>
                                </div>
                                <a href="javascript:;" class="as_btn">read more</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="as_map_section">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4078764.9924000916!2d-105.6681527148753!3d45.09540905234947!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited%20States!5e0!3m2!1sen!2sin!4v1614404007812!5m2!1sen!2sin" width="100%" height="743px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </section>
</asp:Content>