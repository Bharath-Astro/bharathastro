<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
/* For a single button */
.btn-professional-blue {
    background-color: #0056b3;
    border-color: #0056b3;
}

.btn-professional-blue:hover {
    background-color: #004085;
    border-color: #004085;
}
.btn-astro-1 {
    background-color:#0d6efd;
    border-color:#FFFFFF;
    color:#FFFFFF;
}

.btn-astro-1:hover {
    background-color:#0d6efd;
    border-color: #004085;
    color:#ff7010;
}
a.astro-lnk{color:#FFFFFF;background:#0d6efd; border-radius:10px;}
a.astro-lnk:hover{color:#FF7010;}
h1:hover{color:#FF7010;}
h2:hover{color:#FF7010;}
h3:hover{color:#FF7010;}
.btn-btm-align{
      position: absolute;
  bottom: 0;
}
.btn-btm-align-2 {
margin-top: auto; margin-bottom:0px;
}
    .ddmp { padding:0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">AI Astrologers</h1>
                <p class="as_font14 as_margin0 as_padderBottom50">
                    Our advanced AI astrologers provide instant predictions and personalized guidance.
                </p>




            </div>
        </div>
    </div>
</section>--%>

        <section class="as_banner_wrapper">
            <div class="container-fluid">
                <div class="row as_verticle_center">
                    <div class="col-lg-6 order-lg-1 col-md-6 order-md-1 col-sm-12 order-sm-1 col-12 order-2">
                        <div class="as_banner_slider">
                            <div class="as_banner_detail">
                                <h5 class="as_orange">What’s Your Sign ?</h5>
                                <h1>Read Your Daily <br> Horoscope</h1>
<%--                                <p>Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore etesde dolore magna aliquapspendisse and the gravida.</p>--%>
                                <asp:LinkButton runat="server" ID="lnkRM1" OnClick="lnkRM1_Click" CssClass="as_btn">read more</asp:LinkButton>
                            </div>
                            <div class="as_banner_detail">
                                <h5 class="as_orange">What's Numerology Number?</h5>
                                <h1>Check Your <br>Numerology Number</h1>
                                <%--<p>Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore etesde dolore magna aliquapspendisse and the gravida.</p>--%>
                                <asp:LinkButton runat="server" ID="lnkRM2" CssClass="as_btn" OnClick="lnkRM2_Click">read more</asp:LinkButton>
                            </div>
                            <div class="as_banner_detail">
                                <h5 class="as_orange">Looking for Free Kundali?</h5>
                                <%--<h1>Read Your Daily <br> Horoscope</h1>--%>
                                <h1>Online—fast,<br /> accurate, and absolutely free.</h1>
                                <asp:LinkButton runat="server" ID="lnkRM3" CssClass="as_btn" OnClick="lnkRM3_Click">read more</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 order-lg-2 col-md-6 order-md-2 col-sm-12 order-sm-2 col-12 order-1">
                        <div class="as_banner_img text-center">
                            <img src="assets/img/banner_image.png" alt="" class="img-responsive" />
                        </div>
                    </div>
                </div>
            </div>
        </section> 

 
    <!-- ===== AI Astrologers Carousel ===== -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">Astrologers</h1>
                <p class="as_font14 as_margin0 as_padderBottom50">
                    Our advanced AI astrologers provide instant predictions and personalized guidance.
                </p>

                <div class="">
                    <div class="">
                        <div class="row">
                            <!-- astrologer box -->
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-01.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Arjun Pandit</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-02.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Mr. Krishnam</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-03.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Love Guru</h4>
                                </div>
                                </a>
                            </div>

                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-09.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Ananya</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-05.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Mr. Anil</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-06.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Joshi</h4>
                                </div>
                                </a>
                            </div>

                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-07.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Love Guru</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-08.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Love Oracle</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-04.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Mr. Krishnam</h4>
                                </div>
                                </a>
                            </div>

                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-10.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Raman</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-11.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Joshi</h4>
                                </div>
                                </a>
                            </div>
                            <div class="col-lg-1 col-md-2 col-3">
                                <a href="connect-astro.aspx">
                                <div class="as_whychoose_box text-center">
                                    <img src="assets/profile/ai-12.jpg" class="rounded-circle" width="80" height="80" alt="">
                                    <h4>Mr. Anil</h4>
                                </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


        <section class="as_blog_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-12 col-12">




                        <div class="as_journal_box_wrapper">
                            <div>
                                
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
<asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true"  CssClass="form-control p-2 text-center"
    OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged"></asp:DropDownList> 
                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <div class="form-group">
                                                <%--<input class="form-control" type="text" placeholder="Year">--%>
<asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true"  CssClass="form-control p-2 text-center"
    OnSelectedIndexChanged="ddlYear_SelectedIndexChanged"></asp:DropDownList>
                                                
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
                                    <asp:LinkButton runat="server" ID="lnkGenHoroscope" CssClass="as_btn" OnClick="lnkGenHoroscope_Click" ValidationGroup="vg1">Generate Horoscope</asp:LinkButton>
                                </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>






                                </div>
                            </div>
                        </div>




                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12 col-12">



                        <div class="as_journal_box_wrapper h-100">

                                
                                <div class="row">
                                    <h3 class="text-center mb-3">Kundli Matching</h3>

                                    <asp:UpdatePanel ID="updNewsletter" runat="server">
                                        <ContentTemplate>

                                            <asp:Panel runat="server" ID="pnlGroomDetails">
                                                <label class="fw-bold text-center">Enter Groom's Details</label>
                                                <div class="col-12">
                                                    <label>name</label>
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Name">
                                                    </div>
                                                </div>
                                                <%--                                <div class="col-12">
                                    <label>gender</label>
                                    <div class="form-group as_select_box">
                                        <select class="form-control" data-placeholder="Gender">
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div> 
                                </div>--%>
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
                                                                <%--<asp:TextBox runat="server" ID="TextBox1" CssClass="form-control p-3 text-center" placeholder="DD" MaxLength="2"></asp:TextBox>--%>
                                                                <%--<input class="form-control" type="text" placeholder="Date">--%>
                                                                <asp:TextBox runat="server" ID="txtKdd" CssClass="form-control p-3 text-center" placeholder="DD" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Month">--%>
                                                                <asp:TextBox runat="server" ID="txtKmm" CssClass="form-control p-3 text-center" placeholder="MM" MaxLength="2"></asp:TextBox>
                                                                <%--<asp:TextBox runat="server" ID="TextBox2" CssClass="form-control p-3 text-center" placeholder="MM" MaxLength="2"></asp:TextBox>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Year">--%>
                                                                <asp:TextBox runat="server" ID="txtKyyyy" CssClass="form-control p-3 text-center" placeholder="YYYY" MaxLength="4"></asp:TextBox>
                                                                <%--<asp:TextBox runat="server" ID="TextBox3" CssClass="form-control p-3 text-center" placeholder="YYYY" MaxLength="4"></asp:TextBox>--%>
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
                                                                <%--<asp:TextBox runat="server" ID="TextBox4" CssClass="form-control p-3 text-center" placeholder="hh" MaxLength="2"></asp:TextBox>--%>
                                                                <asp:TextBox runat="server" ID="txtKhh" CssClass="form-control p-3 text-center" placeholder="hh" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Mins">--%>
                                                                <%--<asp:TextBox runat="server" ID="TextBox5" CssClass="form-control p-3 text-center" placeholder="mm" MaxLength="2"></asp:TextBox>--%>
                                                                <asp:TextBox runat="server" ID="txtKmin" CssClass="form-control p-3 text-center" placeholder="mm" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Sec">--%>
                                                                <%--<asp:TextBox runat="server" ID="TextBox6" CssClass="form-control p-3 text-center" placeholder="ss" MaxLength="2"></asp:TextBox>--%>
                                                                <asp:TextBox runat="server" ID="txtKss" CssClass="form-control p-3 text-center" placeholder="ss" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-12">
                                                    <label>Birth place</label>
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Enter your birth place">
                                                    </div>
                                                </div>
                                                <label class="fw-bold text-center">Enter Bride's detail on next page</label>


                                                <div class="btn-btm-align-2">
                                                    <div class="row2">
                                                        <div class="col-12 text-center">
                                                            <asp:LinkButton runat="server" ID="LinkButton1" CssClass="as_btn" OnClick="LinkButton1_Click">Continue</asp:LinkButton>
                                                        </div>

                                                    </div>

                                                </div>

                                            </asp:Panel>
                                            <asp:Panel runat="server" ID="pnlBrideDetails" Visible="false">
                                                <label class="fw-bold text-center">Enter Bride's Details</label>

                                                <div class="col-12">
                                                    <label>name</label>
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Name">
                                                    </div>
                                                </div>
                                                <%--                                <div class="col-12">
                                    <label>gender</label>
                                    <div class="form-group as_select_box">
                                        <select class="form-control" data-placeholder="Gender">
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div> 
                                </div>--%>
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
                                                                <%--<asp:TextBox runat="server" ID="TextBox1" CssClass="form-control p-3 text-center" placeholder="DD" MaxLength="2"></asp:TextBox>--%>
                                                                <%--<input class="form-control" type="text" placeholder="Date">--%>
                                                                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control p-3 text-center" placeholder="DD" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Month">--%>
                                                                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control p-3 text-center" placeholder="MM" MaxLength="2"></asp:TextBox>
                                                                <%--<asp:TextBox runat="server" ID="TextBox2" CssClass="form-control p-3 text-center" placeholder="MM" MaxLength="2"></asp:TextBox>--%>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Year">--%>
                                                                <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control p-3 text-center" placeholder="YYYY" MaxLength="4"></asp:TextBox>
                                                                <%--<asp:TextBox runat="server" ID="TextBox3" CssClass="form-control p-3 text-center" placeholder="YYYY" MaxLength="4"></asp:TextBox>--%>
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
                                                                <%--<asp:TextBox runat="server" ID="TextBox4" CssClass="form-control p-3 text-center" placeholder="hh" MaxLength="2"></asp:TextBox>--%>
                                                                <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control p-3 text-center" placeholder="hh" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Mins">--%>
                                                                <%--<asp:TextBox runat="server" ID="TextBox5" CssClass="form-control p-3 text-center" placeholder="mm" MaxLength="2"></asp:TextBox>--%>
                                                                <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control p-3 text-center" placeholder="mm" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <div class="form-group">
                                                                <%--<input class="form-control" type="text" placeholder="Sec">--%>
                                                                <%--<asp:TextBox runat="server" ID="TextBox6" CssClass="form-control p-3 text-center" placeholder="ss" MaxLength="2"></asp:TextBox>--%>
                                                                <asp:TextBox runat="server" ID="TextBox6" CssClass="form-control p-3 text-center" placeholder="ss" MaxLength="2"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-12">
                                                    <label>Birth place</label>
                                                    <div class="form-group">
                                                        <input class="form-control" type="text" placeholder="Enter your birth place">
                                                    </div>
                                                </div>

                                                <div class="btn-btm-align-2">
                                                    <div class="row2">
                                                        <div class="col-12 text-center">
                                                            <asp:LinkButton runat="server" ID="LinkButton2" CssClass="as_btn" OnClick="LinkButton2_Click" ValidationGroup="vg2">Continue</asp:LinkButton>
                                                        </div>

                                                    </div>

                                                </div>

                                            </asp:Panel>

                                        </ContentTemplate>
                                    </asp:UpdatePanel>





                                </div>



                        </div>


                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-12 col-12">
<div class="as_journal_box_wrapper h-100">
                                    <div class="row">
                                    <h3 class="text-center mb-3">Panchang</h3>
                                    <label class="fw-bold text-center">New Delhi, India (<asp:Label runat="server" ID="lblTodayDate"></asp:Label> )</label>

<div>

<asp:Label ID="lblSunrise" runat="server" /><br />
<asp:Label ID="lblSunset" runat="server" /><br />
<asp:Label ID="lblMoonrise" runat="server" /><br />
<asp:Label ID="lblMoonset" runat="server" /><br />
</div>


                <div class="mt-3">
                    <p><strong>Tithi:</strong> <span class="text-primary"><asp:Label ID="lblTithi" runat="server" /></span> upto <span class="text-danger"><asp:Label runat="server" ID="lblTithiUpto"></asp:Label></span></p>

                    <p><strong>Month Amanta:</strong> <asp:Label ID="lblMonthAmanta" runat="server" /></p>
                    <p><strong>Month Purnimanta:</strong> <asp:Label ID="lblMonthPurnimanta" runat="server" /></p>

                    <p><strong>Day:</strong> <asp:Label ID="lblDay" runat="server" /> | <strong>Samvat:</strong> <asp:Label ID="lblSamvat" runat="server" /></p>

                    <p><strong>Nakshatra:</strong> <span class="text-primary"><asp:Label ID="lblNakshatra" runat="server" /></span> upto <span class="text-danger"><asp:Label runat="server" ID="lblNakshatraUpto"></asp:Label></span></p>

                    <p><strong>Yoga:</strong> <span class="text-primary"><asp:Label ID="lblYoga" runat="server" /></span> upto <span class="text-danger"><asp:Label runat="server" ID="lblYogaUpto"></asp:Label></span></p>

                    <p>
                        <strong>Karan:</strong> <span class="text-primary"><asp:Label ID="lblKarana" runat="server" /></span> <%--upto--%> <span class="text-danger"><asp:Label runat="server" ID="lblKaranaUpto"></asp:Label></span>
                    </p>
                </div>

<div class="btn-btm-align-2">
                                <div class="col-12 text-center as_padderTop20">
    <asp:LinkButton runat="server" ID="lnkTodayPanchang" CssClass="as_btn" OnClick="lnkTodayPanchang_Click">Today Panchang</asp:LinkButton>
</div>
                                    
                                </div>
                                        </div>
</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    <!-- ========== SPECIAL ASTROLOGY SERVICES SECTION ========== -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">Special Astrology Services</h1>
        <!-- Services Grid -->
        <div class="row g-4">

            <!-- Single Service Box -->
            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="free-astrology-services.aspx">
                    <img src="assets/img/sas/free-astrologer-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Free Astrologer</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="sun-sign-horoscope.aspx">
                    <img src="assets/img/sas/sun-signs-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Sun Signs</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="love-astro-service.aspx">
                    <img src="assets/img/sas/love-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Love</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="marriage-astro-service.aspx">
                    <img src="assets/img/sas/marriage-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Marriage</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="career-astro-service.aspx">
                    <img src="assets/img/sas/career-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Career</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="finance-astro-service.aspx">
                    <img src="assets/img/sas/finance-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Finance</div>
                        </a>
                </div>
            </div>

            <!-- Row 2 -->
            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="child-astro-service.aspx">
                    <img src="assets/img/sas/name-astro-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Name Astro</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="education-astro-service.aspx">
                    <img src="assets/img/sas/education-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Education</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="health-astro-service.aspx">
                    <img src="assets/img/sas/health-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;" />
                    <div class="p-2 fw-semibold as_orange">Health</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="remedies-astro-services.aspx">
                    <img src="assets/img/sas/remedies-1n-min.jpeg" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Remedies</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="astro-reports.aspx">
                    <img src="assets/img/sas/astro-report-1n-min.png" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Astro Reports</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0">
                    <a href="blog.aspx">
                    <img src="assets/img/sas/blog-1n-min.png" class="card-img-top" style="border-radius:10px 10px 0 0;">
                    <div class="p-2 fw-semibold as_orange">Blog</div>
                        </a>
                </div>
            </div>

        </div>
            </div>
        </div>
    </div>
</section>


    <!-- ========== FREE ASTROLOGY SERVICES SECTION ========== -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">Free Astrology Services</h1>
        <!-- Services Grid -->
        <div class="row g-4">

            <!-- Single Card -->
            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-horoscope.aspx">
                    <img src="assets/img/fas/horoscope-1n-min.jpeg" class="img-fluid mb-2" height="80">
                    <div class="fw-semibold as_orange">Horoscope</div>
                        </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-gun-milan.aspx">
                    <img src="assets/img/fas/gun-milan-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">GunMilan</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-manglik.aspx">
                    <img src="assets/img/fas/manglic-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Manglik</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-kalsarp.aspx">
                    <img src="assets/img/fas/kal-sarp-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">KalSarp</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="#">
                    <img src="assets/img/fas/rahu-pooja-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Rahu Pooja</div>
                    </a>
                </div>
            </div>


            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="#">
                    <img src="assets/img/fas/kethu-pooja-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Kethu Pooja</div>
                    </a>
                </div>
            </div>

            <!-- Row 2 -->

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-sade-sati-check.aspx">
                    <img src="assets/img/fas/shani-dev-pooja-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Shani Dev Pooja</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-matching-compatibility.aspx">
                    <img src="assets/img/fas/love-matching-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Love Matching</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="#">
                    <img src="assets/img/fas/pujas-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Pujas</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-yantra-suggestion.aspx">
                    <img src="assets/img/fas/yantra-1n.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Yantra</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-mantra-suggestion.aspx">
                    <img src="assets/img/fas/mantra-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">Mantra</div>
                    </a>
                </div>
            </div>

            <div class="col-6 col-md-4 col-lg-2">
                <div class="card shadow-sm text-center border-0 p-3">
                    <a href="free-astrology-services.aspx">
                    <img src="assets/img/fas/more-1n-min.jpeg" class="img-fluid mb-2">
                    <div class="fw-semibold as_orange">More</div>
                    </a>
                </div>
            </div>

        </div>
            </div>
        </div>
    </div>
</section>

    <!-- ================= SUNSIGNS HOROSCOPE SECTION ================= -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">Sunsigns Horoscope</h1>
            <!-- Zodiac Grid -->
            <div class="row g-4 text-center">

                <!-- Aries -->
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
                <div class="col-6 col-md-4 col-lg-2">
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
            </div>
        </div>
    </div>
</section>

    <!-- =============== ONE READING CAN CHANGE YOUR LIFE =============== -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">One Reading Can Change Your Life</h1>
                <p class="as_font14 as_margin0 as_padderBottom50">
Whether you’re seeking career advice, marriage compatibility, or spiritual insight, the Best Indian astrologer in USA is here to help you.
                </p>


        <div class="container">
            <!-- First Row -->
            <div class="row g-4 mb-4">

                <!-- Card 1 -->
                <div class="col-md-6">
                    <div class="card p-4 rounded-4 h-100 text-white">
                        <h4 class="text-center fw-bold mb-3">
                            COMPREHENSIVE LIFE READING, 360° Clarity
                        </h4>

                        <p class="text-center" style="line-height:1.6;">
                            Meet with me 1on1 for a 1-Hour private reading over Zoom,
                            and leave with answers to your biggest life questions and
                            clarity on exactly what to do next and powerful remedies based on your chart.
                            Remember: One Reading Will Change Your Life.
                        </p>

                        <div class="text-center mt-3">
                            <asp:LinkButton runat="server" ID="lnk11" CssClass="as_btn" OnClick="lnk11_Click">Book now</asp:LinkButton>
<%--                            <a href="#" class="btn px-4 py-2 fw-semibold astro-lnk">
                                Book now
                            </a>--%>
                        </div>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="col-md-6">
                    <div class="card p-4 rounded-4 h-100 text-white">
                        <h4 class="text-center fw-bold mb-3">
                            FAMILY READING PACKAGE
                        </h4>

                        <p class="text-center" style="line-height:1.6;">
                            Comprehensive Life Reading for up to 4 members of family.
                            You get 3 Hours of private 1on1 with me over Zoom.
                            Get answers for whole family: Career, Finances, Health,
                            Purpose of Life etc. Walk away with clarity on path forward.
                        </p>

                        <div class="text-center mt-3">
<%--                            <a href="#" class="btn px-4 py-2 fw-semibold astro-lnk">
                                Book now
                            </a>--%>
                            <asp:LinkButton runat="server" ID="lnk22" CssClass="as_btn">Book now</asp:LinkButton>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Second Row -->
            <div class="row g-4">

                <!-- Card 3 -->
                <div class="col-md-3">
                    <div class="card p-4 rounded-4 h-100 text-white">
                        <h5 class="text-center fw-bold mb-3">
                            Naming of your<br> CHILD
                        </h5>

                        <p class="text-center">
                            A name is a sacred sound<br>
                            that shapes your child’s destiny
                        </p>

                        <div class="text-center mt-3">
<%--                            <a href="#" class="btn px-4 py-2 fw-semibold astro-lnk">
                                Book now
                            </a>--%>
<asp:LinkButton runat="server" ID="lnk33" CssClass="as_btn">Book now</asp:LinkButton>
                        </div>
                    </div>
                </div>


                <!-- Card 4 -->
                <div class="col-md-3">
                    <div class="card p-4 rounded-4 h-100 text-white">
                        <h5 class="text-center fw-bold mb-3">
                            Naming or Renaming of<br> your BUSINESS
                        </h5>

                        <p class="text-center">
                            Your business name holds a<br>
                            vibration that can attract or<br>
                            block success.
                        </p>

                        <div class="text-center mt-3">
<asp:LinkButton runat="server" ID="lnk44" CssClass="as_btn">Book now</asp:LinkButton>
                        </div>
                    </div>
                </div>

                <!-- Card 5 -->
                <div class="col-md-3">
                    <div class="card p-4 rounded-4 h-100 text-white">
                        <h5 class="text-center fw-bold mb-3">
                            Relationship<br> COMPATIBILITY
                        </h5>

                        <p class="text-center">
                            How compatible are you?<br>
                            And Remedies to improve<br>
                            Relationship.
                        </p>

                        <div class="text-center mt-3">
<asp:LinkButton runat="server" ID="lnk55" CssClass="as_btn">Book now</asp:LinkButton>
                        </div>
                    </div>
                </div>

                <!-- Card 6 -->
                <div class="col-md-3">
                    <div class="card p-4 rounded-4 h-100 text-white">
                        <h5 class="text-center fw-bold mb-3">
                            The Best Cities / Countries<br> for you
                        </h5>

                        <p class="text-center">
                            Not all places are created<br>
                            equal — especially for you.
                        </p>

                        <div class="text-center mt-3">
<asp:LinkButton runat="server" ID="lnk66" CssClass="as_btn">Book now</asp:LinkButton>
                        </div>
                    </div>
                </div>

            </div>

        </div>



            </div>
        </div>
    </div>
</section>


    <!-- Online Astrologers Section -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">Online Astrologers</h1>




        <div class="container">
            <h2 class="fw-bold mb-4"></h2>
            <div class="row g-4">


                <!-- Card Template Start -->
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 rounded-4 p-3 position-relative">
                        <div class="d-flex align-items-center">
                            <img src="assets/profile/ai-01.jpg" class="rounded-circle me-3" width="70" height="70" alt="Astrologer Image">
                            <div>
                                <h5 class="fw-bold mb-1">Astrologer Name</h5>
                                <p class="text-muted mb-0 small">Speciality</p>
                                <p class="text-success fw-bold mb-0">FREE <span class="text-decoration-line-through text-danger">₹XX / min</span></p>
                            </div>
                        </div>
                        <div class="mt-2 text-warning">
                            ★★★★☆
                        </div>
                        <div class="position-absolute" style="bottom:15px; right:15px;">
                            <button class="btn btn-sm btn-primary rounded-circle me-2">💬</button>
                            <button class="btn btn-sm btn-warning rounded-circle">📞</button>
                        </div>
                    </div>
                </div>
                <!-- Card Template End -->
                <!-- Duplicate cards as needed -->
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 rounded-4 p-3 position-relative">
                        <div class="d-flex align-items-center">
                            <img src="assets/profile/ai-02.jpg" class="rounded-circle me-3" width="70" height="70" alt="Astrologer Image">
                            <div>
                                <h5 class="fw-bold mb-1">Astrologer Name</h5>
                                <p class="text-muted mb-0 small">Speciality</p>
                                <p class="text-success fw-bold mb-0">FREE <span class="text-decoration-line-through text-danger">₹XX / min</span></p>
                            </div>
                        </div>
                        <div class="mt-2 text-warning">
                            ★★★★☆
                        </div>
                        <div class="position-absolute" style="bottom:15px; right:15px;">
                            <button class="btn btn-sm btn-primary rounded-circle me-2">💬</button>
                            <button class="btn btn-sm btn-warning rounded-circle">📞</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 rounded-4 p-3 position-relative">
                        <div class="d-flex align-items-center">
                            <img src="assets/profile/ai-03.jpg" class="rounded-circle me-3" width="70" height="70" alt="Astrologer Image">
                            <div>
                                <h5 class="fw-bold mb-1">Astrologer Name</h5>
                                <p class="text-muted mb-0 small">Speciality</p>
                                <p class="text-success fw-bold mb-0">FREE <span class="text-decoration-line-through text-danger">₹XX / min</span></p>
                            </div>
                        </div>
                        <div class="mt-2 text-warning">
                            ★★★★☆
                        </div>
                        <div class="position-absolute" style="bottom:15px; right:15px;">
                            <button class="btn btn-sm btn-primary rounded-circle me-2">💬</button>
                            <button class="btn btn-sm btn-warning rounded-circle">📞</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 rounded-4 p-3 position-relative">
                        <div class="d-flex align-items-center">
                            <img src="assets/profile/ai-07.jpg" class="rounded-circle me-3" width="70" height="70" alt="Astrologer Image">
                            <div>
                                <h5 class="fw-bold mb-1">Astrologer Name</h5>
                                <p class="text-muted mb-0 small">Speciality</p>
                                <p class="text-success fw-bold mb-0">FREE <span class="text-decoration-line-through text-danger">₹XX / min</span></p>
                            </div>
                        </div>
                        <div class="mt-2 text-warning">
                            ★★★★☆
                        </div>
                        <div class="position-absolute" style="bottom:15px; right:15px;">
                            <button class="btn btn-sm btn-primary rounded-circle me-2">💬</button>
                            <button class="btn btn-sm btn-warning rounded-circle">📞</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 rounded-4 p-3 position-relative">
                        <div class="d-flex align-items-center">
                            <img src="assets/profile/ai-10.jpg" class="rounded-circle me-3" width="70" height="70" alt="Astrologer Image">
                            <div>
                                <h5 class="fw-bold mb-1">Astrologer Name</h5>
                                <p class="text-muted mb-0 small">Speciality</p>
                                <p class="text-success fw-bold mb-0">FREE <span class="text-decoration-line-through text-danger">₹XX / min</span></p>
                            </div>
                        </div>
                        <div class="mt-2 text-warning">
                            ★★★★☆
                        </div>
                        <div class="position-absolute" style="bottom:15px; right:15px;">
                            <button class="btn btn-sm btn-primary rounded-circle me-2">💬</button>
                            <button class="btn btn-sm btn-warning rounded-circle">📞</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm border-0 rounded-4 p-3 position-relative">
                        <div class="d-flex align-items-center">
                            <img src="assets/profile/ai-12.jpg" class="rounded-circle me-3" width="70" height="70" alt="Astrologer Image">
                            <div>
                                <h5 class="fw-bold mb-1">Astrologer Name</h5>
                                <p class="text-muted mb-0 small">Speciality</p>
                                <p class="text-success fw-bold mb-0">FREE <span class="text-decoration-line-through text-danger">₹XX / min</span></p>
                            </div>
                        </div>
                        <div class="mt-2 text-warning">
                            ★★★★☆
                        </div>
                        <div class="position-absolute" style="bottom:15px; right:15px;">
                            <button class="btn btn-sm btn-primary rounded-circle me-2">💬</button>
                            <button class="btn btn-sm btn-warning rounded-circle">📞</button>
                        </div>
                    </div>
                </div>


            </div>
        </div>


            </div>
        </div>
    </div>
</section>


    <!-- Customer Stories Section -->
<%--<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">Customer Stories</h1>





            </div>
        </div>
    </div>
</section>--%>
    <section class="py-5 customer-stories-section" style="position:relative; overflow:hidden;" runat="server" id="jkjk" visible="false">
        <div class="container">
            <div class="row align-items-center">


                <!-- Left Content -->
                <div class="col-lg-6 mb-4">
                    <div class="mb-3">
                        <span style="display:inline-block; width:60px; height:3px; background:#D4AF37; margin-bottom:8px;"></span>
                    </div>
                    <h2 class="fw-bold mb-4"></h2>


                    <!-- Profile Images -->
                    <div class="d-flex mb-4">
                        <img src="assets/img/astro-img2.png" class="rounded-circle me-2" width="55" height="55" />
                        <img src="assets/img/astro-img2.png" class="rounded-circle me-2" width="55" height="55" />
                        <img src="assets/img/astro-img2.png" class="rounded-circle me-2" width="55" height="55" />
                        <img src="assets/img/astro-img2.png" class="rounded-circle me-2" width="55" height="55" />
                        <img src="assets/img/astro-img2.png" class="rounded-circle me-2" width="55" height="55" />
                        <img src="assets/img/astro-img2.png" class="rounded-circle" width="55" height="55" />
                    </div>


                    <!-- Main Testimonial -->
                    <p class="text-muted" style="font-size:18px; line-height:1.7;">
                        I didn't believe in astrology at first, but Astrology's astrologer changed my mind.
                        They helped me get a job at my dream company w...
                    </p>


                    <div class="d-flex align-items-center mt-4">
                        <div class="me-3" style="font-size:34px; color:#2D1F85; font-weight:bold;">❝</div>
                        <div>
                            <h5 class="fw-semibold mb-1">Nishi</h5>
                            <small class="text-muted">Amritsar</small>
                        </div>
                    </div>


                    <!-- Navigation Buttons -->
                    <div class="d-flex mt-4">
                        <button class="btn btn-success rounded-circle me-3" style="width:45px; height:45px;">
                            ←
                        </button>
                        <button class="btn btn-success rounded-circle" style="width:45px; height:45px;">
                            →
                        </button>
                    </div>
                </div>


                <!-- Right Image (Astrology Wheel) -->
                <div class="col-lg-6 text-center">
                    <img src="assets/img/astro-img2.png" class="img-fluid" style="max-width:480px;" />
                </div>


            </div>
        </div>


        <!-- Yellow Background Strip -->
        <div style="position:absolute; right:0; top:40%; width:60%; height:120px; background:#E3B311; z-index:-1;"></div>
    </section>


    <!-- =======================
         FEATURES STRIP
    =========================== -->
    <section class="py-5" style="background: #e6e1d8;" runat="server" id="ddfwef" visible="false">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div style="
                    background: #D9B015;
                    border-radius: 30px;
                    padding: 40px 20px;
                    display: flex;
                    justify-content: space-around;
                    align-items: center;
                    position: relative;
                ">
                        <!-- Left Red Curve -->
                        <div style="
                        width: 160px;
                        height: 160px;
                        background: #A80E11;
                        border-bottom-right-radius: 150px;
                        position: absolute;
                        left: 0;
                        top: 0;
                    "></div>

                        <!-- Right Red Curve -->
                        <div style="
                        width: 160px;
                        height: 160px;
                        background: #A80E11;
                        border-bottom-left-radius: 150px;
                        position: absolute;
                        right: 0;
                        bottom: 0;
                    "></div>

                        <!-- ITEM 1 -->
                        <div class="text-center" style="z-index: 2;">
                            <img src="icons/secure.svg" width="60" class="mb-2">
                            <h5 class="fw-bold mt-2">Private & Confidential</h5>
                        </div>

                        <!-- ITEM 2 -->
                        <div class="text-center" style="z-index: 2;">
                            <img src="icons/verified.svg" width="60" class="mb-2">
                            <h5 class="fw-bold mt-2">Verified Astrologers</h5>
                        </div>

                        <!-- ITEM 3 -->
                        <div class="text-center" style="z-index: 2;">
                            <img src="icons/payment.svg" width="60" class="mb-2">
                            <h5 class="fw-bold mt-2">Secure Payments</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- =======================
         CTA BUTTON STRIP
    =========================== -->
    <section style="background: #e6e1d8; padding-bottom: 40px;" runat="server" id="ddff" visible="false">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">

                    <div style="
                    background: #111;
                    padding: 20px;
                    border-radius: 40px;
                    display: flex;
                    justify-content: space-around;
                    align-items: center;
                ">

                        <button class="btn px-4 py-2"
                                style="background: #D9B015; color: #000; font-size: 18px; border-radius: 30px; display: flex; align-items: center;">
                            <img src="icons/chat-green.svg" width="24" class="me-2"> Chat with Astrologer
                        </button>

                        <button class="btn px-4 py-2"
                                style="background: #D9B015; color: #000; font-size: 18px; border-radius: 30px; display: flex; align-items: center;">
                            <img src="icons/call-green.svg" width="24" class="me-2"> Talk to Astrologer
                        </button>

                    </div>

                </div>
            </div>
        </div>
    </section>


    <!-- =======================
         ABOUT Astrology
    =========================== -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80" runat="server" id="aboutX" visible="false">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">About Astrology</h1>

            <p class="as_font14 as_margin0 as_padderBottom50">
                Astrology is the best astrology website for
                <a href="#" style="color:#000; text-decoration: underline;">online astrology consultation</a>
                and predictions, connecting you with the best astrologers from India to gain insights into your future
                through Kundli predictions, all from the comfort of your home. Whether you're concerned about marriage,
                love life, career, or health, our expert astrologers are here to guide you.
            </p>

            <p class="as_font14 as_margin0 as_padderBottom50">
                You can talk directly to astrologers on call, chat, or submit a query to get answers to all your worries
                and see what the future holds. Explore your future possibilities with accurate predictions about marriage,
                love life, career advancements, and health, unlocking the secrets of your destiny with detailed Kundli
                predictions that offer profound insights into your life.
            </p>

            <p class="as_font14 as_margin0 as_padderBottom50">
                Receive comprehensive reports addressing specific areas of your life, providing clarity and guidance.
                Astrology offers a seamless experience for those seeking guidance and clarity in life's journey, so
                trust our expert astrologers to navigate life's uncertainties and make informed decisions for a
                brighter tomorrow.
            </p>



            </div>
        </div>
    </div>
</section>


    <%--Not requested--%>
        <section class="as_about_wrapper as_padderTop80 as_padderBottom80" runat="server" id="section1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                        <div class="as_about_slider">
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="assets/img/about1.jpg" alt="" class="img-responsive" />
                                </div> 
                            </div>
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="assets/img/about2.jpg" alt="" class="img-responsive" />
                                </div> 
                            </div>
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="assets/img/about3.jpg" alt="" class="img-responsive" />
                                </div> 
                            </div>
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="assets/img/about4.jpg" alt="" class="img-responsive" />
                                </div> 
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                        <h1 class="as_heading">know about Astrology</h1>
<p>
Astro Bharat is a premier online destination dedicated to bridging the gap between ancient Indian wisdom and modern life. We provide a trusted platform where individuals can connect with certified, experienced experts in Vedic Astrology, Vastu Shastra, Numerology, and plam reading.
</p>
<p>
Our mission is to empower people to navigate life’s complexities with clarity and confidence. Whether you are facing challenges in your career, seeking harmony in relationships, or looking for spiritual growth, Astro Bharat offers personalized, data-backed guidance tailored to your unique cosmic blueprint.
</p>
                        <a href="javascript:;" class="as_btn">read more</a>

                        <div class="as_contact_expert">
                            <span class="as_icon">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="20" height="20" viewBox="0 0 20 20"> <defs><style>.cls-1{fill:#fff;fill-rule:evenodd}</style></defs> <path d="M19.797,10.487 C19.668,10.616 19.493,10.689 19.310,10.689 C18.929,10.689 18.620,10.380 18.620,9.999 C18.615,5.241 14.759,1.385 10.000,1.379 C9.619,1.379 9.310,1.070 9.310,0.689 C9.310,0.308 9.619,-0.000 10.000,-0.000 C15.520,0.006 19.993,4.478 19.999,9.999 C19.999,10.183 19.927,10.358 19.797,10.487 ZM15.172,9.999 C15.169,7.144 12.855,4.830 10.000,4.827 C9.619,4.827 9.310,4.518 9.310,4.138 C9.310,3.757 9.619,3.448 10.000,3.448 C13.617,3.452 16.547,6.383 16.551,9.999 C16.551,10.380 16.243,10.689 15.862,10.689 C15.481,10.689 15.172,10.380 15.172,9.999 ZM12.864,14.155 C13.076,14.182 13.288,14.109 13.438,13.957 L14.982,12.413 C15.209,12.186 15.563,12.146 15.835,12.317 L19.655,14.775 C19.955,14.965 20.063,15.350 19.905,15.668 L18.045,19.616 C17.918,19.873 17.645,20.024 17.360,19.995 C15.394,19.789 10.563,18.932 5.815,14.183 C1.067,9.435 0.210,4.604 0.003,2.638 C-0.026,2.352 0.125,2.079 0.382,1.952 L4.331,0.093 C4.649,-0.067 5.036,0.043 5.224,0.344 L7.684,4.164 C7.854,4.436 7.814,4.790 7.586,5.017 L6.042,6.560 C5.890,6.711 5.818,6.924 5.845,7.135 C5.942,7.900 6.373,9.809 8.282,11.718 C10.191,13.627 12.099,14.057 12.864,14.155 Z" class="cls-1"/> </svg>
                            </span>
                            <div>
                                <h5 class="as_white">Contact Our Expert Astrologers</h5>
                                <h1 class="as_orange">+ (91) 800 808 8607</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="as_know_sign_wrapper as_padderTop80 as_padderBottom80" runat="server" id="section3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">choose zodiac sign</h1>
                        <p class="as_font14 as_margin0">Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore <br>etesde dolore magna aliquapspendisse and the gravida.</p>


                        <div class="as_zodiac_inner text-left">
                            <div class="row as_verticle_center">
                                <div class="col-lg-3 col-md-12 col-sm-12 col-12">
                                    <ul class="as_sign_ul">
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign1.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Aries</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign2.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Taurus </h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign3.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Gemini</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign4.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Cancer</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign5.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Leo</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign6.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Virgo</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 col-12">
                                    <div class="as_sign_img text-center">
                                        <%--<img src="assets/img/zodiac.png" alt="" class="img-responsive">--%>
<video autoplay loop muted playsinline class="img-responsive col-12">
    <source src="assets/main/rolast.mp4" type="video/mp4" class="img-responsive w-100" />
    Your browser does not support the video tag.
</video>

                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-12 col-sm-12 col-12">
                                    <ul class="as_sign_ul as_sign_ul_right">
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign7.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Libra</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign8.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Scorpio</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign9.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Sagittarius</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign10.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Capricorn</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign11.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Capricorn</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li class="as_sign_box">
                                            <a href="#zodiac_single.aspx">
                                                <span class="as_sign">
                                                <img src="assets/images/svg/sign12.svg" alt="">
                                                </span>
                                                <div>
                                                    <h5>Pisces</h5>
                                                    <p>Mar 21 - Apr 19</p>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="as_zodiac_sign_wrapper as_padderBottom80 as_padderTop80" runat="server" id="section4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">Know Your Zodiac Sign</h1>
                        <p class="as_font14 as_margin0 as_padderBottom50">Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore <br>etesde dolore magna aliquapspendisse and the gravida.</p>
                 
                 
                        <div class="as_sign_form text-left">
                            <ul> 
                                <li class="as_form_box">
                                    <h3 class="as_subheading">Date Of Birth</h3>
                                    <div class="as_input_feild">
                                        <input type="text" name="" class="form-control as_datepicker" placeholder="DD/MM/YYYY" id="">
                                        <span><img src="assets/images/svg/date.svg" alt=""></span>
                                    </div>
                                </li>
                                <li class="as_form_box">
                                    <h3 class="as_subheading">Time Of Birth</h3>
                                    <div class="as_input_feild">
                                        <input type="text" name="" class="form-control as_timepicker" placeholder="08:00" id="">
                                        <span><img src="assets/images/svg/time.svg" alt=""></span>
                                    </div>
                                </li>
                                <li class="as_form_box">
                                    <h3 class="as_subheading">Place Of Birth</h3>
                                    <div class="as_input_feild"> 
                                        <input type="text" name="" class="form-control" placeholder="Enter City Name...." id="">
                                        <span><img src="assets/images/svg/map1.svg" alt=""></span>
                                    </div> 
                                </li>
                                <li class="as_form_box">
                                   <a href="javascript:;" class="as_btn">find zodiac</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="as_customer_wrapper as_padderBottom80 as_padderTop80" runat="server" id="section5" visible="false">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">What Our Customers Say</h1>
                        <p class="as_font14 as_margin0 as_padderBottom50">Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore <br>etesde dolore magna aliquapspendisse and the gravida.</p>
                    </div>

                        <div class="row as_customer_slider">
                            <div class="col-lg-6 col-md-6">
                                <div class="as_customer_box text-center">
                                    <span class="as_customer_img">
                                        <img src="assets/img/customer1.jpg" alt="">
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
                                        <img src="assets/img/customer2.jpg" alt="">
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
                                        <img src="assets/img/customer1.jpg" alt="">
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
                                        <img src="assets/img/customer2.jpg" alt="">
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
            <%--</div>--%>
        </section>
        <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50" runat="server" id="section6" visible="false">
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

        <section class="as_overview_wrapper as_padderBottom80 as_padderTop80" runat="server" id="section10" visible="false">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">Daily Planetary Overview</h1>
                        <p class="as_font14 as_margin0 as_padderBottom50">Consectetur adipiscing elit, sed do eiusmod tempor incididuesdeentiut labore <br>etesde dolore magna aliquapspendisse and the gravida.</p>



                        <div class="as_overview_slider">
                            <div class="as_overview_inner">
                                <h4 class="as_orange">Mercury in Aries square Mars in Capricorn </h4>
                                <p class="as_font14">Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum It has survived not only five rinter took a galley of type and scrambled it centuries, but also the passages,</p>
                                <span class="as_btn"><img src="assets/images/svg/calender.svg" alt=""> July 29, 2020</span> 
                            </div>
                            <div class="as_overview_inner">
                                <h4 class="as_orange">Mercury in Aries square Mars in Capricorn </h4>
                                <p class="as_font14">Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum It has survived not only five rinter took a galley of type and scrambled it centuries, but also the passages,</p>
                                <span class="as_btn"><img src="assets/images/svg/calender.svg" alt=""> July 29, 2020</span> 
                            </div>
                            <div class="as_overview_inner">
                                <h4 class="as_orange">Mercury in Aries square Mars in Capricorn </h4>
                                <p class="as_font14">Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum It has survived not only five rinter took a galley of type and scrambled it centuries, but also the passages,</p>
                                <span class="as_btn"><img src="assets/images/svg/calender.svg" alt=""> July 29, 2020</span> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">COMPLIMENTARY ASTROLOGY SERVICES</h1>


        <div class="container">

            <div class="row align-items-center">

                <!-- Left Arrow -->
<%--                <div class="col-1 text-center d-flex justify-content-center">
                    <button class="btn btn-light shadow-sm rounded-circle">
                        <i class="bi bi-chevron-left fs-4"></i>
                    </button>
                </div>--%>

                <!-- Cards Wrapper -->
                <div class="col-12">
                    <div class="row g-4 justify-content-center">

                        <!-- Card 1 -->
                        <div class="col-md-3">
                            <div class="card shadow-sm border-0 h-100">
                                <div class="card-body text-center">
                                    <a href="#">
                                    <div class="mb-3">
                                        <img src="assets/img/fas/daily-astro-min.png" width="80">
                                    </div>
                                    <h6 class="fw-bold">Today’s Horoscope</h6>
                                    <p class="small mt-2">
                                        Unsure about how your day will unfold? Get free Aries horoscope online prediction from top astrologer.
                                    </p>
                                    </a>
                                </div>
                                <div class="card-footer border-0" style="background:#ff7010; height:7px;"></div>
                            </div>
                        </div>

                        <!-- Card 2 -->
                        <div class="col-md-3">
                            <div class="card shadow-sm border-0 h-100">
                                <div class="card-body text-center">
                                    <a href="#">
                                    <div class="mb-3">
                                        <img src="assets/img/fas/kundli-min.png" width="80">
                                    </div>
                                    <h6 class="fw-bold">Free Kundli</h6>
                                    <p class="small mt-2">
                                        Generate your free online kundli report. Our software predicts your future using your birth chart.
                                    </p>
                                    </a>
                                </div>
                                <div class="card-footer border-0" style="background:#ff7010; height:7px;"></div>
                            </div>
                        </div>

                        <!-- Card 3 -->
                        <div class="col-md-3">
                            <div class="card shadow-sm border-0 h-100">
                                <div class="card-body text-center">
                                    <a href="compatibility.aspx">
                                    <div class="mb-3">
                                        <img src="assets/img/fas/compatibility-min.png" width="80">
                                    </div>
                                    <h6 class="fw-bold">Compatibility</h6>
                                    <p class="small mt-2">
                                        Confused by love? Check compatibility with your partner and ignite a love that lasts forever.
                                    </p>
                                    </a>
                                </div>
                                <div class="card-footer border-0" style="background:#ff7010; height:7px;"></div>
                            </div>
                        </div>

                        <!-- Card 4 -->
                        <div class="col-md-3">
                            <div class="card shadow-sm border-0 h-100">
                                <div class="card-body text-center">
                                    <a href="2026-festivals.aspx">
                                    <div class="mb-3">
                                        <img src="assets/img/fas/festiwals-min.png" width="80">
                                    </div>
                                    <h6 class="fw-bold">Festival 2026</h6>
                                    <p class="small mt-2">
                                        Explore the diverse world of festivals — a realm of celebration and joy.
                                    </p>
                                    </a>
                                </div>
                                <div class="card-footer border-0" style="background:#ff7010; height:7px;"></div>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Right Arrow -->
<%--                <div class="col-1 text-center d-flex justify-content-center">
                    <button class="btn btn-light shadow-sm rounded-circle">
                        <i class="bi bi-chevron-right fs-4"></i>
                    </button>
                </div>--%>

            </div>

        </div>




            </div>
        </div>
    </div>
</section>



<%--<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
                <h1 class="as_heading as_heading_center">AI Astrologers</h1>
                <p class="as_font14 as_margin0 as_padderBottom50">
                    Our advanced AI astrologers provide instant predictions and personalized guidance.
                </p>




            </div>
        </div>
    </div>
</section>--%>


        <section class="as_faq_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                        <h1 class="as_heading as_heading_center">Frequently Asked Questions</h1>
                <p class="as_font14 as_margin0 as_padderBottom50">Have a different question? Feel free to reach out to us.</p>
                </div>
            </div>
                <div class="row">
                    <div class="col-lg-10 col-md-12 col-sm-12 col-xs-12 offset-lg-1">
                        <div class="as_faq_section">
                              <div class="accordion as_accordion" id="accordionPanelsStayOpenExample">
                                    <div class="accordion-item">
                                      <div class="accordion-header" id="panelsStayOpen-headingOne">
                                        <h2 class="mb-0">
                                          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
<span class="as_orange">What is 'the zodiac'</span>
                                          </button>
                                        </h2>
                                      </div>
                                  
                                      <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                                        <div class="accordion-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </div>
                                      </div>
                                    </div>
                                    <div class="accordion-item">
                                      <div class="accordion-header" id="panelsStayOpen-headingTwo">
                                        <h2 class="mb-0">
                                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                            <span class="as_orange">Why are interpretations by various astrologers so different for the same forecast period?</span>
                                          </button>
                                        </h2>
                                      </div>
                                      <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                                        <div class="accordion-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </div>
                                      </div>
                                    </div>
                                    <div class="accordion-item">
                                      <div class="accordion-header" id="panelsStayOpen-headingThree">
                                        <h2 class="mb-0">
                                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                            <span class="as_orange">What is a Rising Sign or Ascendant?</span>
                                          </button>
                                        </h2>
                                      </div>
                                      <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
                                        <div class="accordion-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </div>
                                      </div>
                                    </div>
                                    <div class="accordion-item">
                                      <div class="accordion-header" id="panelsStayOpen-headingFour">
                                        <h2 class="mb-0">
                                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
                                            <span class="as_orange">What is a Ascendant?</span>
                                          </button>
                                        </h2>
                                      </div>
                                      <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFour">
                                        <div class="accordion-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </div>
                                      </div>
                                    </div>

                                    <div class="accordion-item">
                                      <div class="accordion-header" id="panelsStayOpen-headingFive">
                                        <h2 class="mb-0">
                                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
                                            <span class="as_orange">What is a Ascendant?</span>
                                          </button>
                                        </h2>
                                      </div>
                                      <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingFive">
                                        <div class="accordion-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </div>
                                      </div>
                                    </div>

                                    <div class="accordion-item">
                                      <div class="accordion-header" id="panelsStayOpen-headingSix">
                                        <h2 class="mb-0">
                                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix" aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
                                            <span class="as_orange">What is a Ascendant?</span>
                                          </button>
                                        </h2>
                                      </div>
                                      <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingSix">
                                        <div class="accordion-body">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    <!-- ===================== STATISTICS SECTION ===================== -->
<section class="as_ai_astrologers_wrapper as_padderTop80 as_padderBottom80 as_galaxy_wrapper" runat="server" id="StatsX" visible="false">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                
        <div class="container">
            <div class="row text-center g-4">

                <!-- Item 1 -->
                <div class="col-md-3">
                    <div class="border rounded-4 py-4">
                        <h2 class="fw-bold">15+</h2>
                        <p class="mb-0">Years Experience</p>
                    </div>
                </div>

                <!-- Item 2 -->
                <div class="col-md-3">
                    <div class="border rounded-4 py-4">
                        <h2 class="fw-bold">2,100+</h2>
                        <p class="mb-0">Happy Clients Worldwide</p>
                    </div>
                </div>

                <!-- Item 3 -->
                <div class="col-md-3">
                    <div class="border rounded-4 py-4">
                        <h2 class="fw-bold">40,000+</h2>
                        <p class="mb-0">YouTube Subscribers</p>
                    </div>
                </div>

                <!-- Item 4 -->
                <div class="col-md-3">
                    <div class="border rounded-4 py-4">
                        <h2 class="fw-bold">27,500+</h2>
                        <p class="mb-0">Instagram Followers</p>
                    </div>
                </div>

            </div>
        </div>




            </div>
        </div>
    </div>
</section>
</asp:Content>