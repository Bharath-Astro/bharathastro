<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="horoscope-daily.aspx.cs" Inherits="horoscope_daily" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_breadcrum_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1>YOUR HOROSCOPE</h1> 
                            <p>Choose your Sun Sign based on your date of birth and get to know your daily, monthly and yearly Sun sign based horoscopes.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="as_servicedetail_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
<div class="row">
    <div class="col-12">
        <div class="as_blog_box as_blog_single1 as_padderBottom80">
                            <div class="as_tag_wrapper">
                                <ul>
                                    <li><a href="#" class="as_btn active"><h5>Daily Horoscope</h5></a></li>
                                    <li><a href="horoscope-monthly.aspx" class="as_btn"><h5>May 2026 Horoscope</h5></a></li>
                                    <li><a href="horoscope-yearly.aspx" class="as_btn"><h5>Year 2026 Horoscope</h5></a></li>
                                </ul>
                            </div>
        </div>
    </div>
</div>


            <!-- Zodiac Grid -->
            <div class="row g-4 text-center">

                <!-- Aries -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/01.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Aries</h6>
                        <div>21 Mar - 19 Apr</div>
                        </a>
                    </div>
                </div>

                <!-- Taurus -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/02.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Taurus</h6>
                        <div>20 Apr - 20 May</div>
                        </a>
                    </div>
                </div>

                <!-- Gemini -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/03.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Gemini</h6>
                        <div>21 May - 20 Jun</div>
                        </a>
                    </div>
                </div>

                <!-- Cancer -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/04.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Cancer</h6>
                        <div>21 Jun - 22 Jul</div>
                        </a>
                    </div>
                </div>

                <!-- Leo -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/05.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Leo</h6>
                        <div>23 Jul - 22 Aug</div>
                        </a>
                    </div>
                </div>

                <!-- Virgo -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/06.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Virgo</h6>
                        <div>23 Aug - 22 Sep</div>
                        </a>
                    </div>
                </div>

                <!-- Libra -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/07.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Libra</h6>
                        <div>23 Sep - 22 Oct</div>
                        </a>
                    </div>
                </div>

                <!-- Scorpio -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/08.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Scorpio</h6>
                        <div>23 Oct - 21 Nov</div>
                        </a>
                    </div>
                </div>

                <!-- Sagittarius -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/09.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Sagittarius</h6>
                        <div>22 Nov - 21 Dec</div>
                        </a>
                    </div>
                </div>

                <!-- Capricorn -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/10.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Capricorn</h6>
                        <div>22 Dec - 19 Jan</div>
                        </a>
                    </div>
                </div>

                <!-- Aquarius -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/11.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Aquarius</h6>
                        <div>20 Jan - 18 Feb</div>
                        </a>
                    </div>
                </div>

                <!-- Pisces -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div>
                        <a href="horoscope.aspx">
                        <div class="p-3 rounded-circle mx-auto mb-2" style="background:#fff; width:120px; height:120px; display:flex; align-items:center; justify-content:center;">
                            <img src="assets/img/sun/12.png" class="img-fluid" style="max-height:80px;">
                        </div>
                        <h6 class="fw-semibold as_orange">Pisces</h6>
                        <div>19 Feb - 20 Mar</div>
                        </a>
                    </div>
                </div>

            </div>



<%--                        <div class="row">
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
                        </div>--%>


                    </div>
                    <div class="col-lg-4 col-md-4">


<div style="border:solid 2px #ff6a00; padding:32px; margin:0px 20px;">
                                <h4>Get your free personalised astrology life report now</h4>
<p>Join over 5 lakh + Vedic Rishi members</p>
<%--<ul>
    <li>High Level Accuracy.</li>
    <li>Highly Experienced Astrologer.</li>
    <li>Effective remedial suggestions.</li>
</ul>--%>
                                <%--<h5><u>Ask one question in ₹599 and two questions in just ₹899.</u></h5>--%>
<br /><br />
<a href="javascript:;" class="as_btn">Access Now</a>
    <br /><br />
    <p>Note: * This report is free for a limited period of time</p>
</div>



                    </div>

                </div>
            </div>
        </section>
</asp:Content>

