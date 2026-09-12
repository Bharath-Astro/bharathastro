<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>Appointment</h1> 

                        <ul class="breadcrumb"> 
                            <li><a href="#">Home</a></li>
                            <li>Appointment</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <section class="as_appointment_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="as_heading as_heading_center text-center">Make Your Appointment To Discuss Any Problem.</h2>
                        <p class="as_font14 as_padderBottom10 text-center">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                        <p class="as_font14 as_padderBottom20 text-center">It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p> 



                        <div class="as_journal_box_wrapper">
                            <form>
                                <h3 class="text-center as_subheading">Appointment Form</h3>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>name</label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>email</label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>mobile number</label>
                                    
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Mobile Number">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>gender</label>
                                    <div class="form-group as_select_box">
                                        <select class="form-control" data-placeholder="Gender">
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div> 
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>time of day</label>
                                    <div class="form-group as_select_box" data-placeholder="Time of day">
                                        <select class="form-control">
                                            <option value="1"> Morning </option>
                                            <option value="2">Afternoon</option>
                                            <option value="3">Evening </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>way to reach</label>
                                    <div class="form-group as_select_box" data-placeholder="Way to reach">
                                        <select class="form-control">
                                            <option value="1">Phone </option>
                                            <option value="2">Email</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Preferred  Date</label>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Date">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Month">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Year">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Preferred Time</label>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Hrs">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Mins">
                                            </div>    
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <input class="form-control" type="text" placeholder="Sec">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>address</label>
                                    <div class="form-group">
                                        <textarea placeholder="Address" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Reason for appointment</label>
                                    <div class="form-group">
                                        <textarea placeholder="Message" class="form-control"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center as_padderTop20">
                                    <a href="javascript:;" class="as_btn">make an appointment</a>
                                </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
            <div class="container">
                <div class="row as_verticle_center">
                    <div class="col-lg-3 col-md-12">
                        <h1 class="as_heading">Why Choose Us</h1>
                        <p class="as_font14 as_margin0">Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut.</p>
                    </div>
                    <div class="col-lg-9 col-md-12">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="as_whychoose_box text-center">
                                    <span class="as_number"><span><span data-from="0" data-to="512"
                                        data-speed="5000">512</span>+</span><img src="assets/images/svg/shape.svg" alt=""></span>
                                    <h4>Qualified Astrologers</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="as_whychoose_box text-center">
                                    <span class="as_number"><span><span data-from="0" data-to="62"
                                        data-speed="5000">62</span>+</span><img src="assets/images/svg/shape.svg" alt=""></span>
                                    <h4>Success Horoscope</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="as_whychoose_box text-center">
                                    <span class="as_number"><span><span data-from="0" data-to="94"
                                        data-speed="5000">94</span>+</span><img src="assets/images/svg/shape.svg" alt=""></span>
                                    <h4>Offices Worldwide</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="as_whychoose_box text-center">
                                    <span class="as_number"><span><span data-from="0" data-to="452"
                                        data-speed="5000">452+</span>+</span><img src="assets/images/svg/shape.svg" alt=""></span>
                                    <h4>Trust by million clients</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="as_whychoose_box text-center">
                                    <span class="as_number"><span><span data-from="0" data-to="12"
                                        data-speed="5000">12</span>+</span><img src="assets/images/svg/shape.svg" alt=""></span>
                                    <h4>Year experience</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                <div class="as_whychoose_box text-center">
                                    <span class="as_number"><span><span data-from="0" data-to="652"
                                        data-speed="5000">652+</span>+</span><img src="assets/images/svg/shape.svg" alt=""></span>
                                    <h4>Type of horoscopes</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="as_customer_wrapper as_padderBottom80 as_padderTop80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">What Our Customers Say</h1>
                        <p class="as_font14 as_margin0 as_padderBottom50">Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore <br>etesde dolore magna aliquapspendisse and the gravida.</p>

                        <div class="row as_customer_slider">
                            <div class="col-lg-6 col-md-6">
                                <div class="as_customer_box text-center">
                                    <span class="as_customer_img">
                                        <img src="https://dummyimage.com/91x91" alt="">
                                        <span><img src="assets/images/svg/quote1.svg" alt=""></span>
                                    </span>
                                    <p class="as_margin0">Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravidaesdisus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                                    <h3 >David Parker</h3>
                                    <p class="as_margin0">Astrologer</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="as_customer_box text-center">
                                    <span class="as_customer_img">
                                        <img src="https://dummyimage.com/91x91" alt="">
                                        <span><img src="assets/images/svg/quote1.svg" alt=""></span>
                                    </span>
                                    <p class="as_margin0">Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravidaesdisus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                                    <h3 >John Parker</h3>
                                    <p class="as_margin0">Astrologer</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="as_customer_box text-center">
                                    <span class="as_customer_img">
                                        <img src="https://dummyimage.com/91x91" alt="">
                                        <span><img src="assets/images/svg/quote1.svg" alt=""></span>
                                    </span>
                                    <p class="as_margin0">Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravidaesdisus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                                    <h3 >John Parker</h3>
                                    <p class="as_margin0">Astrologer</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="as_customer_box text-center">
                                    <span class="as_customer_img">
                                        <img src="https://dummyimage.com/91x91" alt="">
                                        <span><img src="assets/images/svg/quote1.svg" alt=""></span>
                                    </span>
                                    <p class="as_margin0">Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravidaesdisus commodo viverra maecenas accumsan lacus vel facilisis. </p>
                                    <h3 >John Parker</h3>
                                    <p class="as_margin0">Astrologer</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
</asp:Content>