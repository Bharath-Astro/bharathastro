<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="free-kundli.aspx.cs" Inherits="free_kundli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--        <section class="as_breadcrum_wrapper">
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
        </section>--%>
        <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <h2 class="as_heading as_heading_center text-center">Kundli - Your Free Online Janam Kundali</h2>
                        <p class="as_font14 as_padderBottom10 text-center as_font14">Janam Kundli is your astrological chart that Bharat astrologers create based on your exact birth date, birth place and birth time.</p>
                        <p class="as_font14 as_padderBottom20 text-center as_font14">Bharat Rishi brings you the Free Kundli Calculator that provides you with 100% Original and Accurate Kundali Predictions in two Indian languages!</p> 



                        <div class="as_journal_box_wrapper">
                            <div>
                                <%--<h3 class="text-center as_subheading">Appointment Form</h3>--%>


                                
                                <div class="row">
                                    <h3 class="text-center mb-3">Kundli / Birth Chart</h3>
                                    <label class="fw-bold text-center">Enter Birth Details</label>


                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                <div class="col-12">
                                    <label>name</label>
                                    <div class="form-group">
<asp:TextBox ID="txtFirstName" runat="server" MaxLength="128" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <label>gender</label>
                                    <div class="form-group as_select_box">
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                <asp:ListItem Value="1">Male</asp:ListItem>
                <asp:ListItem Value="2">Female</asp:ListItem>
                <asp:ListItem Value="3">Other</asp:ListItem>
            </asp:DropDownList>
                                    </div> 
                                </div>
<%--                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>email</label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Email">
                                    </div>
                                </div>--%>
<%--                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>mobile number</label>
                                    
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Mobile Number">
                                    </div>
                                </div>--%>

<%--                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>time of day</label>
                                    <div class="form-group as_select_box" data-placeholder="Time of day">
                                        <select class="form-control">
                                            <option value="1"> Morning </option>
                                            <option value="2">Afternoon</option>
                                            <option value="3">Evening </option>
                                        </select>
                                    </div>
                                </div>--%>
<%--                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>way to reach</label>
                                    <div class="form-group as_select_box" data-placeholder="Way to reach">
                                        <select class="form-control">
                                            <option value="1">Phone </option>
                                            <option value="2">Email</option>
                                        </select>
                                    </div>
                                </div>--%>
                                <div class="col-12">
                                    <label>Birth Details</label>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
<asp:DropDownList ID="ddlDay" runat="server" CssClass="form-control p-2 text-center"></asp:DropDownList>
                                                
                                                <%--<input class="form-control" type="text" placeholder="Date">--%>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <%--<input class="form-control" type="text" placeholder="Month">--%>
<asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true"  CssClass="form-control p-2 text-center"></asp:DropDownList> 
                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <%--<input class="form-control" type="text" placeholder="Year">--%>
<asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true"  CssClass="form-control p-2 text-center"></asp:DropDownList>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <%--<label>Preferred Time</label>--%>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <%--<input class="form-control" type="text" placeholder="Hrs">--%>
<asp:DropDownList ID="ddlHour" runat="server" CssClass="form-control p-2 text-center"></asp:DropDownList>
                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <%--<input class="form-control" type="text" placeholder="Mins">--%>
<asp:DropDownList ID="ddlMinute" runat="server" CssClass="form-control p-2 text-center"></asp:DropDownList>
                                                
                                            </div>    
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <%--<input class="form-control" type="text" placeholder="Sec">--%>
<asp:DropDownList ID="ddlSecond" runat="server" CssClass="form-control p-2 text-center"></asp:DropDownList>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <label>Birth place</label>
                                    <div class="form-group">
                                        <%--<input class="form-control" type="text" placeholder="Enter your birth place">--%>
<asp:TextBox ID="txtBirthPlace" runat="server" MaxLength="128" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12 text-center as_padderTop20">
                                    <%--<a href="javascript:;" class="as_btn">make an appointment</a>--%>
                                    <asp:LinkButton runat="server" ID="lnkGenHoroscope" CssClass="as_btn" ValidationGroup="vg1">Generate Horoscope</asp:LinkButton>
                                </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>






                                </div>




                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
            </div>
        </section>

        <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h1 class="as_heading">What is Kundli?</h1>
                        <p>The word "kundli" is derived from the Sanskrit word "kundala," which means "coiled snake." In Vedic astrology, a kundli is a Birth Chart or a Horoscope. It is a graphical representation of a person's birth details, planetary positions, and other astrological aspects.</p>
                        <p>Based on ancient Vedic principles, Kundli has the power to reveal what you are truly destined for. An individual’s birthchart/ Kundali is divided into 12 houses, each depicting a specific sign and planet and these factors influence and control multiple aspects of your life such as your personality, characteristics, attributes, habits, strengths, weaknesses, & so on.</p>
                        <a href="javascript:;" class="as_btn">Create Your Free Kundli Now</a>

<%--                        <div class="as_contact_expert">
                            <span class="as_icon">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="20" height="20" viewBox="0 0 20 20"> <defs><style>.cls-1{fill:#fff;fill-rule:evenodd}</style></defs> <path d="M19.797,10.487 C19.668,10.616 19.493,10.689 19.310,10.689 C18.929,10.689 18.620,10.380 18.620,9.999 C18.615,5.241 14.759,1.385 10.000,1.379 C9.619,1.379 9.310,1.070 9.310,0.689 C9.310,0.308 9.619,-0.000 10.000,-0.000 C15.520,0.006 19.993,4.478 19.999,9.999 C19.999,10.183 19.927,10.358 19.797,10.487 ZM15.172,9.999 C15.169,7.144 12.855,4.830 10.000,4.827 C9.619,4.827 9.310,4.518 9.310,4.138 C9.310,3.757 9.619,3.448 10.000,3.448 C13.617,3.452 16.547,6.383 16.551,9.999 C16.551,10.380 16.243,10.689 15.862,10.689 C15.481,10.689 15.172,10.380 15.172,9.999 ZM12.864,14.155 C13.076,14.182 13.288,14.109 13.438,13.957 L14.982,12.413 C15.209,12.186 15.563,12.146 15.835,12.317 L19.655,14.775 C19.955,14.965 20.063,15.350 19.905,15.668 L18.045,19.616 C17.918,19.873 17.645,20.024 17.360,19.995 C15.394,19.789 10.563,18.932 5.815,14.183 C1.067,9.435 0.210,4.604 0.003,2.638 C-0.026,2.352 0.125,2.079 0.382,1.952 L4.331,0.093 C4.649,-0.067 5.036,0.043 5.224,0.344 L7.684,4.164 C7.854,4.436 7.814,4.790 7.586,5.017 L6.042,6.560 C5.890,6.711 5.818,6.924 5.845,7.135 C5.942,7.900 6.373,9.809 8.282,11.718 C10.191,13.627 12.099,14.057 12.864,14.155 Z" class="cls-1"/> </svg>
                            </span>
                            <div>
                                <h5 class="as_white">Contact Our Expert Astrologers</h5>
                                <h1 class="as_orange">+ (91) 1800-124-105</h1>
                            </div>
                        </div>--%>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="as_about_slider1">
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="assets/images/kundli.png" alt="" class="img-responsive">
                                </div> 
                            </div>
<%--                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="https://dummyimage.com/463x505" alt="" class="img-responsive">
                                </div> 
                            </div>
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="https://dummyimage.com/463x505" alt="" class="img-responsive">
                                </div> 
                            </div>
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="https://dummyimage.com/463x505" alt="" class="img-responsive">
                                </div> 
                            </div>--%>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2">

                    </div>
                    <div class="col-lg-6 col-md-6">
                        <h1 class="as_heading">How Our Online Kundli Calculator Helps?</h1>

<%--yes--%>
<h4 class="as_orange">Free Personalised Analysis</h4>
<p class="as_font14">Our Experienced Astrologers prepare customized Janampatri in addition to your Kundli, that is personalized and hence identifies your strengths and limitations. Such reports largely helps you improve as a person and also grow/ develop your personality.</p>
<%--yes--%>
<h4 class="as_orange">Future Insight</h4>
<p class="as_font14">Your Kundli provides an insight into future events that helps you stay prepared and plan in-advance. It gives a thorough understanding of different life factors like finance, love, marriage, career, family and relationships.</p>
<%--yes--%>
<h4 class="as_orange">Instant Solutions & Remedies</h4>
<p class="as_font14">Your Kundli prescribes solutions and remedies customized for you. It aids in reducing the impact of malefic planetary influences in your Natal Chart, allowing you to better utilize the benefits ruled by the favorable planets. For a more detailed analysis check out our Premium Kundli Page for an In-depth report.</p>


                    </div>
                    <div class="col-lg-2 col-md-2">

                    </div>

                </div>
            </div>
        </section>
</asp:Content>