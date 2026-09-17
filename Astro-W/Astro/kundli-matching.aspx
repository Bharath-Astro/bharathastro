<%@ Page Title="Kundli Matching" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="kundli-matching.aspx.cs" Inherits="kundli_matching" %>

<%@ Register Src="~/Controls/MatchingBirthDetails.ascx" TagPrefix="astro" TagName="BirthDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><style>
    #matching-form { scroll-margin-top: 30px; }
    #matching-form .matching-help { font-size: 14px; line-height: 1.5; margin-top: 8px; }
    #matching-form .form-control { color-scheme: dark; }
    #matching-form select.form-control option { background: #193e50; color: white; }
    #matching-form .matching-table, #matching-form caption { color: inherit; }
    #matching-form .matching-score { font-size: 26px; margin: 20px 0; }
    #matching-form .matching-table th, #matching-form .matching-table td { border-color: #57707d; }
    #matching-form .matching-actions { display: flex; flex-wrap: wrap; gap: 15px; margin-top: 20px; }
    #matching-form .matching-step { margin-bottom: 20px; }
    #matching-form .matching-notice { padding: 15px; margin: 15px 0; border: 1px solid #f9a44a; border-radius: 6px; }
    #matching-form .matching-error { padding: 15px; margin: 15px 0; border: 1px solid #ff9797; border-radius: 6px; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h1 class="as_heading">KUNDLI MATCHING</h1>
                        <p>The most critical aspect that drives a healthy and happy relationship in any marriage is the ‘bond’ between the two people. A stronger bond cannot function without adequate compatibility. Kundali Matching is a Vedic compatibility analysis of a couple. From uncertainty to finding out the equation of a couple, matching Kundli assures that married life is happy, healthy, and blissful.</p>
                        <a href="#matching-form" class="as_btn">Get Your Match Horoscope Now</a>

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
                        <div class="as_about_slider">
                            <div>
                                <div class="">
                                    <img src="assets/images/matching-1.png" alt="" class="img-responsive">
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
                <div class="row">
<div class="col-lg-2 col-md-2"></div>
<div class="col-lg-8 col-md-8">
<div class="as_journal_box_wrapper">

                                <div class="row">
                                    <h3 class="text-center mb-3">Kundli Matching</h3>

                                    <div id="matching-form">
    <asp:UpdatePanel ID="updMatching" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Panel ID="pnlSandbox" runat="server" CssClass="matching-notice">
                <strong>Sandbox mode - test results only.</strong> Both birth dates must be January 1 (any past year).
                Actual birth dates require production Prokerala credentials. Dates are never changed automatically.
            </asp:Panel>
            <asp:Panel ID="pnlError" runat="server" Visible="false" CssClass="matching-error" role="alert">
                <asp:Literal ID="litError" runat="server" />
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlGroomDetails" DefaultButton="btnContinue">
                <h4 class="matching-step">Step 1 of 2: Groom's details</h4>
                <astro:BirthDetails ID="GroomDetails" runat="server" />
                <p>Continue to enter the bride's details.</p>
                <asp:Button runat="server" ID="btnContinue" CssClass="as_btn" Text="Continue" OnClick="Continue_Click" CausesValidation="false" />
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlBrideDetails" Visible="false" DefaultButton="btnMatch">
                <h4 class="matching-step">Step 2 of 2: Bride's details</h4>
                <p><strong>Groom:</strong> <asp:Literal ID="litGroomSummary" runat="server" /></p>
                <astro:BirthDetails ID="BrideDetails" runat="server" />
                <p>Get Matching Results sends both birth dates, times and coordinates to Prokerala for a detailed compatibility report.</p>
                <div class="matching-actions">
                    <asp:Button runat="server" ID="btnBack" CssClass="as_btn" Text="Back to Groom" OnClick="Back_Click" CausesValidation="false" />
                    <asp:Button runat="server" ID="btnMatch" CssClass="as_btn" Text="Get Matching Results" OnClick="Match_Click" CausesValidation="false" />
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlResults" Visible="false" role="region" aria-label="Matching results">
                <h3>Matching results</h3>
                <asp:Literal ID="litResults" runat="server" />
                <asp:Button runat="server" ID="btnEdit" CssClass="as_btn" Text="Edit Birth Details" OnClick="Edit_Click" CausesValidation="false" />
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="matchingProgress" runat="server" AssociatedUpdatePanelID="updMatching" DisplayAfter="100">
        <ProgressTemplate><p role="status" class="matching-notice">Please wait while we process your details...</p></ProgressTemplate>
    </asp:UpdateProgress>
</div>
<script>
    (function () {
        var manager = Sys.WebForms.PageRequestManager.getInstance();
        manager.add_initializeRequest(function (sender, args) {
            if (sender.get_isInAsyncPostBack()) args.set_cancel(true);
        });
        manager.add_beginRequest(function () {
            document.getElementById('matching-form').setAttribute('aria-busy', 'true');
        });
        manager.add_endRequest(function () {
            var form = document.getElementById('matching-form');
            form.removeAttribute('aria-busy');
            form.scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
    }());
</script>





                                </div>


</div>
</div>
<div class="col-lg-2 col-md-2"></div>
                </div>
                    </div>
                </div>
            </section>

        <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h1 class="as_heading">WHAT IS KUNDLI MATCHING</h1>
                        <p>Contemporary life that we are living is very different from what our ancestors lived in. Gender roles have evolved and people are more liberal and rational. At the same time, due to such fast lives we are losing virtues of patience and perseverance. This is why it becomes imperative to take precautionary actions and learn about possible outcomes when available. Kundali Matching gives you an idea of an astrological prediction of how much the couple’s married life will be happy, peaceful and prosperous.</p>
                        <a href="#matching-form" class="as_btn">Match Your Horoscope Now</a>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="as_about_slider1">
                            <div>
                                <div class="as_aboutimg text-right">
                                    <img src="assets/images/matching-2.png" alt="" class="img-responsive">
                                </div> 
                            </div>
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
                        <h1 class="as_heading">HOW KUNDLI MATCHING WORKS?</h1>
                        <p>Kundli Matching, also known as Guna Milan, is the most critical component of any Hindu marriage. To ensure a happy and long married life, Hindu astrology considers it is imperative to conduct a Janam Kundli Milan before a couple marry. Traditionally, Kundali matching was performed by a family priest or an Astrologer. However, Online Kundali Matching, is now a simple and quick tool to determine a couple's marriage compatibility.</p>

                        <h4>There are primarily two methods for matching a boy and girl's Horoscope:</h4>

                        <ol>
                            <li>Name-Based Kundali Matching</li>
                            <li>Kundali Matching based on Birth Date</li>
                        </ol>

                                            <div class="as_img">
                                                <img src="https://dummyimage.com/52x52" alt="">
                                            </div>
                        <p>Kundali Matching by Name is a compatibility check done with the names of the couple. This is also known as Guna Milan by Name since it involves a marriage compatibility analysis in which the Gunas of the Bride and Groom are checked by their names.</p>
<hr />
                                            <div class="as_img">
                                                <img src="https://dummyimage.com/52x52" alt="">
                                            </div>
                        <p>Kundli matching by date of birth, also known as Janam Patrika Matching, is based on the age-old Ashtakoota Method that evaluates the compatibility of two persons based on their birth details. Using a Love Compatibility calculator enables you to determine your Love Compatibility score which further helps in determining their emotional, mental and physical compatibility.</p>

                    </div>
                    <div class="col-lg-2 col-md-2">

                    </div>

                </div>
            </div>
        </section>

        <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-2">

                    </div>
                    <div class="col-lg-8 col-md-8">
                        <h1 class="as_heading">WHY KUNDLI MATCHING?</h1>

                        <div class="as_comment_section as_padderTop80">
                            <ul>
                                <li>
                                    <div class="as_comnt_img">
                                        <img src="https://dummyimage.com/81x81" alt="" class="img-responsive">
                                    </div>
                                    <div class="as_comnt_detail">
                                        <h4 class="as_subheading as_margin0">Compatibility</h4>
                                        <p class="as_font14">The key purpose of Kundli matching is to evaluate the level of compatibility between the couple basis a total of 36 attributes, called Gunas in astrology. Each Guna represents a distinct and critical aspect of life and is assigned a different value against which the couple’s score is stacked. As per Vedic Astrology, the higher the score the smoother the life of the couple.</p>
                                    </div>
                                </li>
                               
                                <li>
                                    <div class="as_comnt_img">
                                        <img src="https://dummyimage.com/81x81" alt="" class="img-responsive">
                                    </div>
                                    <div class="as_comnt_detail">
                                        <h4 class="as_subheading as_margin0">Stability</h4>
                                        <p class="as_font14">When two people marry each other, the planetary movements in their own horoscopes affect not only their lives but also the lives of their spouse. ‘Bhakoot’, the seventh of the eight Gunas, represents this joint impact. Kundli pairing allows us to check for important factors such as financial stability and career progression and overall comfort indicators.</p>
                                    </div>
                                </li>

                                <li>
                                    <div class="as_comnt_img">
                                        <img src="https://dummyimage.com/81x81" alt="" class="img-responsive">
                                    </div>
                                    <div class="as_comnt_detail">
                                        <h4 class="as_subheading as_margin0">Expert Guidance</h4>
                                        <p class="as_font14">At Vedic Astrology, we have our in-house Principal Astrologer, Pandit Rishiraj Tiwari who is a field-expert with over 30 years of extensive work in vedic astrology and vastu shastra. Panditji has vast experience in consulting and helping couples deal with difficult marital challenges and direct them towards a blissful married life.</p>
                                    </div>
                                </li>

                                <li>
                                    <div class="as_comnt_img">
                                        <img src="https://dummyimage.com/81x81" alt="" class="img-responsive">
                                    </div>
                                    <div class="as_comnt_detail">
                                        <h4 class="as_subheading as_margin0">Doshas</h4>
                                        <p class="as_font14">According to Vedic Astrology, the fate of a star is determined by the position of the stars in the sky at the time of its birth. When the stars are not aligned correctly, they cause Doshas such as Sarpa Dosha, Mangal Dosha, Shani Dosha, etc. These doshas can pose issues after marriage which Kundali Matching can help uncover.</p>
                                    </div>
                                </li>
                            </ul>

                            <a href="#matching-form" class="as_btn">Get Your Match Horoscope Now</a>
                        </div>

                    </div>
                    <div class="col-lg-2 col-md-2">

                    </div>

                </div>
            </div>
        </section>
</asp:Content>
