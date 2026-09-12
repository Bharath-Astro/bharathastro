<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="calculator-ascendant.aspx.cs" Inherits="calculator_ascendant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

/* ========================================
   ASCENDANT PAGE - Custom CSS
   ======================================== */

/* Ascendant Form Specific */
.as_ascendant_form .as_form_header {
    text-align: center;
    margin-bottom: 30px;
}
.as_ascendant_form .as_form_header h3 {
    font-size: 22px;
    margin: 0 0 5px;
}
.as_ascendant_form .as_gender_group {
    display: flex;
    gap: 15px;
    margin-bottom: 15px;
}
.as_gender_option {
    flex: 1;
    position: relative;
}
.as_gender_option input[type="radio"] {
    position: absolute;
    opacity: 0;
    width: 0;
    height: 0;
}
.as_gender_option label {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    padding: 14px 20px;
    background-color: var(--dark-color1);
    border: 1px solid rgb(255 255 255 / 10%);
    border-radius: 8px;
    cursor: pointer;
    font-size: 14px;
    color: var(--primary-color);
    transition: all 0.3s linear;
    text-transform: capitalize;
}
.as_gender_option label svg {
    width: 18px;
    height: 18px;
    fill: var(--primary-color);
    transition: all 0.3s linear;
}
.as_gender_option input[type="radio"]:checked + label {
    background-color: var(--secondary-color);
    border-color: var(--secondary-color);
    color: var(--white-color);
}
.as_gender_option input[type="radio"]:checked + label svg {
    fill: var(--white-color);
}
.as_gender_option label:hover {
    border-color: var(--secondary-color);
}

/* Birth Date Group */
.as_birth_date_group {
    display: flex;
    gap: 10px;
}
.as_birth_date_group .form-group {
    flex: 1;
    margin-bottom: 0;
}
.as_birth_date_group .form-group:nth-child(3) {
    flex: 1.3;
}

/* Birth Time Group */
.as_birth_time_group {
    display: flex;
    gap: 10px;
}
.as_birth_time_group .form-group {
    flex: 1;
    margin-bottom: 0;
}

/* Place Select */
.as_place_select .form-group {
    margin-bottom: 0;
}
.as_place_select label {
    display: block;
    margin-bottom: 7px;
    font-size: 14px;
}

/* Submit Button */
.as_ascendant_form .as_btn {
    width: 100%;
    justify-content: center;
    margin-top: 20px;
    height: 55px;
    font-size: 15px;
}

/* Info Cards */
.as_info_card_section {
    background-image: url('../img/bg3.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_info_card {
    background-color: #07273c;
    border-radius: 10px;
    padding: 45px 35px;
    display: flex;
    gap: 30px;
    align-items: flex-start;
    margin: 15px 0;
}
.as_info_card_img {
    width: 200px;
    flex-shrink: 0;
}
.as_info_card_img img {
    width: 100%;
    border-radius: 10px;
}
.as_info_card_content h3 {
    font-size: 24px;
    margin: 0 0 15px;
}
.as_info_card_content p {
    margin-bottom: 15px;
}

/* Importance List */
.as_importance_list {
    margin: 0;
    padding: 0;
    list-style: none;
}
.as_importance_list li {
    padding: 12px 0 12px 35px;
    position: relative;
    font-size: 14px;
    line-height: 26px;
    border-bottom: 1px solid rgb(255 255 255 / 10%);
}
.as_importance_list li:last-child {
    border-bottom: none;
}
.as_importance_list li::before {
    content: '';
    position: absolute;
    left: 0;
    top: 18px;
    width: 18px;
    height: 18px;
    background-color: var(--secondary-color);
    border-radius: 100%;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='10' viewBox='0 0 24 24' fill='none' stroke='%23ffffff' stroke-width='3' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='20 6 9 17 4 12'%3E%3C/polyline%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: center;
}

/* Zodiac Signs Grid */
.as_zodiac_grid_wrapper {
    background-image: url('../img/bg5.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_zodiac_heading_section {
    text-align: center;
    margin-bottom: 40px;
}
.as_zodiac_grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}
.as_zodiac_card {
    background-color: #07273c;
    border-radius: 10px;
    overflow: hidden;
    transition: all 0.3s linear;
    border: 1px solid transparent;
}
.as_zodiac_card:hover {
    border-color: var(--secondary-color);
    transform: translateY(-5px);
}
.as_zodiac_card_header {
    background-color: var(--dark-color2);
    padding: 20px;
    text-align: center;
    position: relative;
}
.as_zodiac_card_header .as_zodiac_icon {
    width: 70px;
    height: 70px;
    background-color: #10334a;
    border-radius: 100%;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 12px;
    transition: all 0.3s linear;
    border: 2px solid transparent;
}
.as_zodiac_card:hover .as_zodiac_card_header .as_zodiac_icon {
    background-color: var(--secondary-color);
    border-color: var(--secondary-color);
}
.as_zodiac_card_header .as_zodiac_icon img {
    width: 40px;
    height: 40px;
    filter: brightness(0) invert(1);
    transition: all 0.3s linear;
}
.as_zodiac_card:hover .as_zodiac_card_header .as_zodiac_icon img {
    filter: none;
}
.as_zodiac_card_header h4 {
    font-size: 18px;
    margin: 0;
    text-transform: uppercase;
    transition: all 0.2s linear;
}
.as_zodiac_card:hover .as_zodiac_card_header h4 {
    color: var(--secondary-color);
}
.as_zodiac_card_body {
    padding: 20px;
}
.as_zodiac_card_body p {
    font-size: 13px;
    line-height: 22px;
    margin: 0;
    display: -webkit-box;
    -webkit-line-clamp: 5;
    -webkit-box-orient: vertical;
    overflow: hidden;
}

/* Bottom Note */
.as_bottom_note {
    background-color: #10334a;
    border-left: 4px solid var(--secondary-color);
    padding: 25px 30px;
    margin-top: 40px;
    border-radius: 0 10px 10px 0;
}
.as_bottom_note p {
    margin: 0;
    font-size: 14px;
    line-height: 26px;
}

/* Responsive */
@media (max-width:1199px) {
    .as_zodiac_grid {
        grid-template-columns: repeat(3, 1fr);
        gap: 15px;
    }
    .as_info_card_img {
        width: 170px;
    }
}
@media (max-width:991px) {
    .as_zodiac_grid {
        grid-template-columns: repeat(2, 1fr);
        gap: 15px;
    }
    .as_info_card {
        flex-direction: column;
    }
    .as_info_card_img {
        width: 100%;
        max-width: 300px;
        margin: 0 auto;
    }
}
@media (max-width:767px) {
    .as_birth_date_group {
        flex-wrap: wrap;
    }
    .as_birth_date_group .form-group {
        min-width: calc(50% - 5px);
    }
    .as_birth_time_group {
        flex-wrap: wrap;
    }
    .as_birth_time_group .form-group {
        min-width: calc(50% - 5px);
    }
    .as_gender_group {
        flex-direction: column;
        gap: 10px;
    }
}
@media (max-width:567px) {
    .as_zodiac_grid {
        grid-template-columns: 1fr;
        gap: 15px;
    }
    .as_zodiac_card_body p {
        -webkit-line-clamp: 4;
    }
    .as_info_card {
        padding: 30px 20px;
    }
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- ========================================
     SECTION 1: Hero + Ascendant Form
     ======================================== -->
<section class="as_about_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h1 class="as_heading as_heading_center">Get Your Ascendant or Rising Sign Analysis as per Vedic Astrology</h1>
                <p class="text-center as_padderTop10 as_padderBottom30">Get Your Free Ascendant Report Now</p>

                                <div class="row">
                                    <h3 class="text-center mb-3">Fill Your Birth Details</h3>
                                    <%--<label class="fw-bold text-center">Enter Birth Details</label>--%>


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
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 2: About Rising Sign Calculator
     ======================================== -->
<section class="as_info_card_section as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <div class="as_info_card">
                    <div class="as_info_card_img">
                        <img src="MediaData/accendent.svg" alt="Ascendant">
                    </div>
                    <div class="as_info_card_content">
                        <h3>Rising Sign Calculator</h3>
                        <p>The Rising Sign Calculator is another name for the Ascendant calculator. It is a tool that analyses and tells you the degree of your ascendant or rising sign. Through the Rising Sign Calculator, you will be able to determine how your life is being directed.</p>
                        <p>Vedic Rishi presents you with the Rising Sign Calculator, which exposes information about your ascendant or Lagna, as well as your personality, health, looks, temperament, and many other aspects of yourself. Exploration yourself and explain your potential in a suitable direction by using the rising sign calculator. According to Vedic Astrology, your rising sign is the most important component that determines your attitudes, behavior, and, as a result, your ability to advance and thrive in everyday life.</p>
                        <a href="javascript:;" class="as_btn">Get Your Free Ascendant Report Now</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 3: What is Ascendant
     ======================================== -->
<section class="as_about_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h1 class="as_heading as_heading_center">What is Ascendant?</h1>
                <div class="as_info_card">
                    <div class="as_info_card_img">
                        <img src="MediaData/ascendant.svg" alt="Ascendant">
                    </div>
                    <div class="as_info_card_content">
                        <p>An Ascendant, also known as The Rising Sign is a sign which is rising on the eastern horizon when you were born. This is also the first house in the Astrological Natal Birth Chart. Ascendant (Lagna) represents the presence of a person in a physical form.</p>
                        <p>The Ascendant symbolizes the personality; appearance; body type; mask; environment; surrounding and birth circumstances. It is the part of ourselves that is most readily shown to (and seen by) the outside world.</p>
                        <a href="javascript:;" class="as_btn">Get Your Free Ascendant Report Now</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 4: Importance of Rising Sign
     ======================================== -->
<section class="as_about_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h1 class="as_heading as_heading_center">The Importance of the Rising Sign / Ascendant</h1>
                <div class="as_padderTop30">
                    <ul class="as_importance_list">
                        <li>Ascendant depicts a person's general appearance, attitude, and character.</li>
                        <li>Ascendant informs you about the native's physical stature, colour, fame, and physical constitution.</li>
                        <li>Ascendant can provide vital information about your health, regardless of whether you are physically fit or not.</li>
                        <li>Rising Sign depicts the conflict or struggle of life, as well as the accomplishments and failures of one's life attempts.</li>
                        <li>Rising Sign tells about everyday life happenings, fortunes, and the native's rank.</li>
                        <li>Rising Sign determines to what extent a native's existence will be effective over his entire life span.</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 5: Twelve Rising Signs
     ======================================== -->
<section class="as_zodiac_grid_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="as_zodiac_heading_section">
            <h2 class="as_heading as_heading_center">Twelve Rising / Ascendants Signs</h2>
        </div>

        <div class="as_zodiac_grid">
            <!-- ARIES -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Aries">
                    </div>
                    <h4>Aries Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>If you're an Aries rising, you're likely to come across as brave, assertive, and self-sufficient. You have a commanding and imposing demeanor that can be scary. You are the ferocious warrior of the zodiac. Mars, the god of war, rules Aries. As the first sign, you command the cavalry.</p>
                </div>
            </div>

            <!-- TAURUS -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Taurus">
                    </div>
                    <h4>Taurus Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>If you're a Taurus rising, you're likely to exude fierce, dependable, and strong-willed energy. But you also have a tender side. You appreciate the finer things in life, such as gorgeous clothes, exquisite dining, and massages. Taurus is sometimes labeled as materialistic, and while you do enjoy surrounding yourself with beautiful finery, you're also hard-working enough to deserve a little luxury.</p>
                </div>
            </div>

            <!-- GEMINI -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Gemini">
                    </div>
                    <h4>Gemini Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>People will likely regard you as talkative, clever, and inquisitive if you are a Gemini rising. Your extremely creative mind can churn out ideas at a breakneck pace. However, the need to do everything all at once may cause you to become overwhelmed at times.</p>
                </div>
            </div>

            <!-- CANCER -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Cancer">
                    </div>
                    <h4>Cancer Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>If you're a Cancer, you're generally described as "traditional" and "nurturing." You enjoy your routine; after all, you've worked hard to establish yourself and make things precisely how you want them. Because your home life is highly important to you, you tend to be quite concerned about your personal space and the individuals who are allowed within.</p>
                </div>
            </div>

            <!-- LEO -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Leo">
                    </div>
                    <h4>Leo Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>People perceive you as confident, lively, and enjoyable if you're a Leo rising. You have a flair for the theatrical, which everyone notices when you enter the room. You are a highly creative person, whether you work in the arts or simply have an amazing Instagram feed. The fact that you are living your best life inspires others to do the same.</p>
                </div>
            </div>

            <!-- VIRGO -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Virgo">
                    </div>
                    <h4>Virgo Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>People who encounter you as a Virgo rising may characterize you as organised, well-put-together, and dependable. You may exude the impression of a perfectionist at times, which may be daunting. Mercury, the messenger planet, rules this sign, therefore Virgo's risings are communicative and inquisitive.</p>
                </div>
            </div>

            <!-- LIBRA -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Libra">
                    </div>
                    <h4>Libra Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>Those that come into contact with you as a Libra rising are likely to consider you as attractive, passionate, and sweet (though you may have a sharp tongue at times, even if it only means you're funny). You may have heard that Libras are indecisive, and while this is accurate, it is done with good intentions because you want everyone to be pleased.</p>
                </div>
            </div>

            <!-- SCORPIO -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Scorpio">
                    </div>
                    <h4>Scorpio Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>If you are a Scorpio rising, you may come across as mysterious, quiet, and attractive. It is not always a sexually charged charm, though it can be. Scorpios have a reputation for being the most sexual sign in the zodiac, thus your natural sensuality may startle others when they first meet you.</p>
                </div>
            </div>

            <!-- SAGITTARIUS -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Sagittarius">
                    </div>
                    <h4>Sagittarius Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>People may describe you as clever and a fantastic storyteller who is always the life of the party if you are a Sagittarius rising. You have a contagious passion for life and are recognized as the zodiac's optimist.</p>
                </div>
            </div>

            <!-- CAPRICORN -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Capricorn">
                    </div>
                    <h4>Capricorn Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>If you're a Capricorn rising, you're probably mature, structured, and driven. You are always well-dressed and prepared. People may perceive you as a capable businessperson who has little interest in gaming, both professionally and personally. You strive for greatness and have high expectations of yourself and others.</p>
                </div>
            </div>

            <!-- AQUARIUS -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Aquarius">
                    </div>
                    <h4>Aquarius Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>You may be seen as smart, innovative, and compassionate if you are an Aquarius rising. Some people believe that the "aqua" in Aquarius indicates that you are a water sign, however, Aquarius is the third air sign (along with Gemini and Libra) and a symbol of the water bearer.</p>
                </div>
            </div>

            <!-- PISCES -->
            <div class="as_zodiac_card">
                <div class="as_zodiac_card-header">
                    <div class="as_zodiac_icon">
                        <img src="https://dummyimage.com/40x40/ff7010/ffffff" alt="Pisces">
                    </div>
                    <h4>Pisces Ascendant</h4>
                </div>
                <div class="as_zodiac_card-body">
                    <p>People who are rising Pisces are likely to characterize you as dreamy and compassionate, and you may occasionally have your head in the clouds. This sign is known as the psyche of the zodiac, and because it is the final sign, it contains all of the other signs. As a result, you are inextricably tied to all of humanity.</p>
                </div>
            </div>
        </div>

        <!-- Bottom Note -->
        <div class="as_bottom_note">
            <p>Rising Sign is an important factor in the 12 Zodiac Signs. The Rising Sign represents the changes in a person's life. The power of the Lagna or Ascendant can be used to forecast any shift in one's life.</p>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 6: FAQ
     ======================================== -->
<section class="as_faq_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">FAQs about Ascendant</h2>
                <div class="as_padderTop40">
                    <div class="accordion as_faq_section" id="faqAscAccordion">

                        <!-- FAQ 1 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqAsc1">
                                    What does the Ascendant in astrology represent?
                                </button>
                            </h2>
                            <div id="faqAsc1" class="accordion-collapse collapse" data-bs-parent="#faqAscAccordion">
                                <div class="accordion-body">
                                    The Ascendant (or Rising Sign) represents your social personality, your physical body, and your outward appearance. It is the mask you wear in public and how others perceive you. It manifests in both your inner and outer worlds, defining the equilibrium of your seven dimensions.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 2 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqAsc2">
                                    How to calculate your Ascendant Sign?
                                </button>
                            </h2>
                            <div id="faqAsc2" class="accordion-collapse collapse" data-bs-parent="#faqAscAccordion">
                                <div class="accordion-body">
                                    Your Ascendant Sign is calculated based on your exact date, time, and place of birth. The sign that was rising on the eastern horizon at the precise moment of your birth becomes your Ascendant. Use our free Ascendant Calculator above by entering your birth details to find out your Rising Sign.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 3 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqAsc3">
                                    What is the difference between Ascendant, Rising Sign, and Lagna?
                                </button>
                            </h2>
                            <div id="faqAsc3" class="accordion-collapse collapse" data-bs-parent="#faqAscAccordion">
                                <div class="accordion-body">
                                    There is no difference! Ascendant, Rising Sign, and Lagna are three different names for the same astrological concept. "Lagna" is the Sanskrit term used in Vedic Astrology, while "Ascendant" and "Rising Sign" are commonly used in Western Astrology. All three refer to the zodiac sign rising on the eastern horizon at the time of your birth.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 4 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqAsc4">
                                    What is the significance of Ascendant in the Birth Chart?
                                </button>
                            </h2>
                            <div id="faqAsc4" class="accordion-collapse collapse" data-bs-parent="#faqAscAccordion">
                                <div class="accordion-body">
                                    Your social personality is represented by your rising sign (also known as your Ascendant). Your rising sign represents both your physical body and your outward appearance. It manifests in both your inner and outer worlds, which might define the equilibrium of your seven dimensions. The Ascendant also determines the placement of all 12 houses in your birth chart, making it the foundation of your entire astrological profile.
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>
</asp:Content>

