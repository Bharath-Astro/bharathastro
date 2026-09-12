<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="chat-with-astrologer.aspx.cs" Inherits="chat_with_astrologer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
/* ========================================
   CHAT PAGE - Custom CSS
   ======================================== */

/* Hero Section */
.as_chat_hero {
    background-image: url('../img/bg2.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    text-align: center;
}
.as_chat_hero h1 {
    font-size: 48px;
    margin-bottom: 20px;
}
.as_chat_hero p {
    max-width: 620px;
    margin: 0 auto 30px;
}
.as_app_badges {
    margin-top: 35px;
    display: flex;
    justify-content: center;
    gap: 15px;
    align-items: center;
}
.as_app_badges > span {
    font-size: 14px;
    color: #97b0c1;
}
.as_app_badge {
    display: inline-flex;
    align-items: center;
    background-color: var(--dark-color2);
    padding: 12px 22px;
    border-radius: 8px;
    color: var(--white-color);
    font-size: 14px;
    transition: all 0.3s linear;
    border: 1px solid rgb(255 255 255 / 10%);
}
.as_app_badge:hover {
    background-color: var(--secondary-color);
    border-color: var(--secondary-color);
}
.as_app_badge svg {
    margin-right: 10px;
    fill: var(--white-color);
    flex-shrink: 0;
}

/* Astrologers Section */
.as_astrologers_wrapper {
    background-color: var(--dark-color1);
}
.as_astro_card {
    background-color: #07273c;
    border-radius: 10px;
    padding: 30px 20px 25px;
    text-align: center;
    margin: 15px 10px;
    transition: all 0.3s linear;
    border: 1px solid transparent;
}
.as_astro_card:hover {
    border-color: rgb(255 255 255 / 10%);
    transform: translateY(-5px);
}
.as_astro_img {
    width: 90px;
    height: 90px;
    border-radius: 100%;
    overflow: hidden;
    margin: 0 auto 15px;
    border: 2px solid var(--secondary-color);
    padding: 3px;
}
.as_astro_img img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 100%;
}
.as_astro_tag {
    display: inline-block;
    background-color: #10334a;
    color: var(--primary-color);
    font-size: 11px;
    padding: 4px 14px;
    border-radius: 20px;
    margin-bottom: 8px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}
.as_astro_rating {
    font-size: 13px;
    color: var(--primary-color);
    margin-bottom: 8px;
}
.as_astro_rating .as_star {
    color: #ffb800;
    margin-right: 2px;
}
.as_astro_card h4 {
    font-size: 18px;
    margin: 0 0 4px;
    transition: all 0.2s linear;
}
.as_astro_card:hover h4 {
    color: var(--secondary-color);
}
.as_astro_card .as_astro_role {
    font-size: 13px;
    color: #97b0c1;
    margin-bottom: 15px;
}
.as_astro_price {
    font-size: 14px;
    color: var(--secondary-color);
    font-weight: 600;
    margin-bottom: 18px;
}
.as_astro_card .as_btn {
    margin: 0;
    font-size: 12px;
    height: 40px;
    padding: 0 15px;
}
.as_view_more_wrapper {
    text-align: center;
    margin-top: 10px;
}
.as_view_more {
    display: inline-flex;
    align-items: center;
    font-size: 14px;
    text-transform: uppercase;
    color: var(--secondary-color);
    border-bottom: 1px solid var(--secondary-color);
    letter-spacing: 0.5px;
    padding-bottom: 2px;
    transition: all 0.2s linear;
}
.as_view_more:hover {
    color: var(--white-color);
    border-color: var(--white-color);
}
.as_view_more svg {
    margin-left: 6px;
    transition: all 0.2s linear;
}
.as_view_more:hover svg {
    transform: translateX(4px);
}

/* Slider arrow overrides for astrologers */
.as_astro_slider_wrap .slick-arrow.slick-prev {
    left: -45px;
}
.as_astro_slider_wrap .slick-arrow.slick-next {
    right: -45px;
}

/* Stats Bar */
.as_stats_bar {
    background-color: var(--secondary-color);
    padding: 55px 0;
}
.as_stats_bar h2 {
    font-size: 42px;
    font-weight: 700;
    color: var(--white-color);
    margin: 0 0 5px;
    font-family: 'Philosopher', sans-serif;
}
.as_stats_bar p {
    font-size: 14px;
    color: var(--white-color);
    margin: 0;
    opacity: 0.9;
}
.as_stat_item {
    text-align: center;
    position: relative;
}
.as_stat_item:not(:last-child)::after {
    content: '';
    position: absolute;
    right: 0;
    top: 15%;
    height: 70%;
    width: 1px;
    background-color: rgb(255 255 255 / 20%);
}

/* Testimonials */
.as_testimonials_wrapper {
    background-image: url('../img/bg4.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_testimonial_card {
    background-color: #10334a;
    padding: 40px 35px 35px;
    border-radius: 10px;
    margin: 15px 10px;
    position: relative;
}
.as_testimonial_card p.as_testi_text {
    font-size: 14px;
    line-height: 26px;
    margin-bottom: 25px;
    position: relative;
    z-index: 1;
}
.as_testimonial_card::before {
    content: '\201C';
    position: absolute;
    top: 15px;
    left: 25px;
    font-size: 60px;
    font-family: 'Philosopher', sans-serif;
    color: var(--secondary-color);
    opacity: 0.25;
    line-height: 1;
}
.as_testimonial_user {
    display: flex;
    align-items: center;
}
.as_testimonial_avatar {
    width: 55px;
    height: 55px;
    border-radius: 100%;
    overflow: hidden;
    margin-right: 15px;
    flex-shrink: 0;
    border: 2px solid var(--secondary-color);
    padding: 2px;
}
.as_testimonial_avatar img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 100%;
}
.as_testimonial_user h4 {
    font-size: 16px;
    margin: 0 0 3px;
}
.as_testimonial_user span {
    font-size: 13px;
    color: #97b0c1;
}

/* Slider arrow overrides for testimonials */
.as_testi_slider_wrap .slick-arrow.slick-prev {
    left: -45px;
}
.as_testi_slider_wrap .slick-arrow.slick-next {
    right: -45px;
}

/* CTA Section */
.as_cta_wrapper {
    background-image: url('../img/bg5.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    text-align: center;
}
.as_cta_wrapper .as_heading {
    max-width: 550px;
    margin-left: auto;
    margin-right: auto;
}
.as_cta_wrapper p {
    max-width: 580px;
    margin: 0 auto 30px;
}

/* Responsive */
@media (max-width:1199px) {
    .as_chat_hero h1 {
        font-size: 40px;
    }
    .as_stats_bar h2 {
        font-size: 34px;
    }
    .as_astro_slider_wrap .slick-arrow.slick-prev,
    .as_testi_slider_wrap .slick-arrow.slick-prev {
        left: -30px;
    }
    .as_astro_slider_wrap .slick-arrow.slick-next,
    .as_testi_slider_wrap .slick-arrow.slick-next {
        right: -30px;
    }
}
@media (max-width:991px) {
    .as_chat_hero h1 {
        font-size: 34px;
    }
    .as_stats_bar h2 {
        font-size: 28px;
    }
    .as_stat_item:not(:last-child)::after {
        display: none;
    }
    .as_stat_item {
        margin-bottom: 25px;
    }
    .as_stat_item:last-child {
        margin-bottom: 0;
    }
}
@media (max-width:767px) {
    .as_chat_hero h1 {
        font-size: 28px;
    }
    .as_app_badges {
        flex-direction: column;
        align-items: center;
    }
    .as_astro_slider_wrap .slick-arrow,
    .as_testi_slider_wrap .slick-arrow {
        display: none !important;
    }
    .as_testimonial_card {
        padding: 30px 20px 25px;
    }
    .as_testimonial_card::before {
        font-size: 45px;
        top: 10px;
        left: 15px;
    }
}
@media (max-width:567px) {
    .as_chat_hero h1 {
        font-size: 24px;
    }
    .as_stats_bar {
        padding: 35px 0;
    }
    .as_stats_bar h2 {
        font-size: 24px;
    }
    .as_astro_card {
        padding: 25px 15px 20px;
        margin: 10px 5px;
    }
}
@media (max-width:450px) {
    .as_app_badge {
        width: 100%;
        justify-content: center;
    }
    .as_app_badges > span {
        display: none;
    }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- ========================================
     SECTION 1: Hero - Get Your First Chat Free
     ======================================== -->
<section class="as_chat_hero as_padderTop80 as_padderBottom80">
    <div class="container">
        <h1 class="as_heading as_heading_center">Get Your First Chat Free</h1>
        <p>Got questions about marriage, promotion, or any life problems? Connect instantly with an Expert Astrologer. Ask what's on your mind, get instant clarity right away.</p>
        <a href="javascript:;" class="as_btn">Start Free Chat Now</a>
        <div class="as_app_badges">
            <span>App available on:</span>
            <a href="javascript:;" class="as_app_badge">
                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"><path d="M17.523 2.246a.625.625 0 0 0-.758-.024C14.404 3.965 12.798 5.5 11.062 5.5c-1.856 0-3.507-1.672-5.828-3.332A.625.625 0 0 0 4.5 2.7V15.5A4.5 4.5 0 0 0 9 20h6a4.5 4.5 0 0 0 4.5-4.5V2.7a.625.625 0 0 0-.477-.454zM9 18.5a3 3 0 0 1-3-3v-2h8v2a3 3 0 0 1-3 3H9z"/><path d="M0 9.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2A.5.5 0 0 1 0 9.5zM21.5 9a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/></svg>
                Android
            </a>
            <a href="javascript:;" class="as_app_badge">
                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24"><path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.8-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M13 3.5c.73-.83 1.94-1.46 2.94-1.5.13 1.17-.34 2.35-1.04 3.19-.69.85-1.83 1.51-2.95 1.42-.15-1.15.41-2.35 1.05-3.11z"/></svg>
                iOS
            </a>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 2: Astrologers Slider
     ======================================== -->
<section class="as_astrologers_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <h2 class="as_heading as_heading_center">Talk To Our Expert Astrologers</h2>

        <div class="as_astro_slider_wrap">
            <div class="as_astro_slider">
                <!-- Card 1 -->
                <div class="as_astro_card">
                    <div class="as_astro_img">
                        <img src="MediaData/ast1.png" alt="Pt. Rishiraj Tiwari">
                    </div>
                    <div class="as_astro_tag">Principal Astrologer</div>
                    <div class="as_astro_rating">
                        <span class="as_star">&#9733;</span> 4.9 (20+)
                    </div>
                    <h4>Pt. Rishiraj Tiwari</h4>
                    <p class="as_astro_role">Principal Vedic Astrologer</p>
                    <div class="as_astro_price">Starts &#8377;49/Q's</div>
                    <a href="javascript:;" class="as_btn">Chat now</a>
                </div>
                <!-- Card 2 -->
                <div class="as_astro_card">
                    <div class="as_astro_img">
                        <img src="MediaData/ast2.png" alt="Pt. Arvind Shastri">
                    </div>
                    <div class="as_astro_tag">Senior Vedic Astrologer</div>
                    <div class="as_astro_rating">
                        <span class="as_star">&#9733;</span> 4.8 (7k+)
                    </div>
                    <h4>Pt. Arvind Shastri</h4>
                    <p class="as_astro_role">Senior Vedic Astrologer</p>
                    <div class="as_astro_price">Starts &#8377;25/Q's</div>
                    <a href="javascript:;" class="as_btn">Chat now</a>
                </div>
                <!-- Card 3 -->
                <div class="as_astro_card">
                    <div class="as_astro_img">
                        <img src="MediaData/ast3.png" alt="Dr. Aarav Mehta">
                    </div>
                    <div class="as_astro_tag">Senior Numerologist</div>
                    <div class="as_astro_rating">
                        <span class="as_star">&#9733;</span> 4.8 (18k+)
                    </div>
                    <h4>Dr. Aarav Mehta</h4>
                    <p class="as_astro_role">Senior Numerologist</p>
                    <div class="as_astro_price">Starts &#8377;10/Q's</div>
                    <a href="javascript:;" class="as_btn">Chat now</a>
                </div>
                <!-- Card 4 -->
                <div class="as_astro_card">
                    <div class="as_astro_img">
                        <img src="MediaData/ast4.png" alt="Acharya Aditya Mehra">
                    </div>
                    <div class="as_astro_tag">Lal Kitab</div>
                    <div class="as_astro_rating">
                        <span class="as_star">&#9733;</span> 4.8 (15k+)
                    </div>
                    <h4>Acharya Aditya Mehra</h4>
                    <p class="as_astro_role">Lal Kitab Expert</p>
                    <div class="as_astro_price">Starts &#8377;25/Q's</div>
                    <a href="javascript:;" class="as_btn">Chat now</a>
                </div>
                <!-- Card 5 -->
                <div class="as_astro_card">
                    <div class="as_astro_img">
                        <img src="MediaData/ast5.png" alt="Acharya Neel Sharma">
                    </div>
                    <div class="as_astro_tag">Practical Astrology</div>
                    <div class="as_astro_rating">
                        <span class="as_star">&#9733;</span> 4.7 (20k+)
                    </div>
                    <h4>Acharya Neel "Neelu" Sharma</h4>
                    <p class="as_astro_role">Practical Astrology Consultant</p>
                    <div class="as_astro_price">Starts &#8377;25/Q's</div>
                    <a href="javascript:;" class="as_btn">Chat now</a>
                </div>
            </div>
        </div>

        <div class="as_view_more_wrapper">
            <a href="javascript:;" class="as_view_more">
                View more
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>
            </a>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 3: Stats Bar
     ======================================== -->
<section class="as_stats_bar">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                <div class="as_stat_item">
                    <h2>70,000+</h2>
                    <p>Downloads</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                <div class="as_stat_item">
                    <h2>10,000+</h2>
                    <p>Daily Logins</p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                <div class="as_stat_item">
                    <h2>4.7&#9733;</h2>
                    <p>Star App Rating</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 4: Testimonials
     ======================================== -->
<section class="as_testimonials_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <h2 class="as_heading as_heading_center">Hear Why 70K People Choose Vedic Rishii For Their Life Decisions!!</h2>

        <div class="as_testi_slider_wrap">
            <div class="as_testimonial_slider">
                <!-- Testimonial 1 -->
                <div class="as_testimonial_card">
                    <p class="as_testi_text">I've been using the Vedic Rishii app and it's been amazing! The daily forecasts are bang on, and the Kundli insights are incredibly accurate. The "Chat with the Astrologer" feature's predictions were astonishing! Another cool feature is the KARMA POINTS, offering simple, practical remedies and doable rituals. The app is user-friendly and easy to navigate. I highly recommend this app to anyone curious about what the stars have in store for them. I'm confident you'll be as impressed as I am!</p>
                    <div class="as_testimonial_user">
                        <div class="as_testimonial_avatar">
                            <img src="MediaData/p1.png" alt="Bhola K">
                        </div>
                        <div>
                            <h4>Bhola K</h4>
                            <span>Entrepreneur</span>
                        </div>
                    </div>
                </div>
                <!-- Testimonial 2 -->
                <div class="as_testimonial_card">
                    <p class="as_testi_text">The Vedic Rishi app is very user-friendly and has all the features you'd expect from a modern astrology tool. It's powerful and accurate, especially for matched reports and Kundli analysis. My favorite features are the Yes/No Tarot card, Tarot reading, and Ramcharitmanas Prashnaavali.</p>
                    <div class="as_testimonial_user">
                        <div class="as_testimonial_avatar">
                            <img src="MediaData/p2.png" alt="Samiksha Kirve">
                        </div>
                        <div>
                            <h4>Samiksha Kirve</h4>
                            <span>Product Manager</span>
                        </div>
                    </div>
                </div>
                <!-- Testimonial 3 -->
                <div class="as_testimonial_card">
                    <p class="as_testi_text">This app reads my mind! The search is so accurate it's scary good.... Searched 'why am I always anxious?' and it explained my Rahu placement perfectly.... Asked about my relationship with my loved ones, and the answers were 100% accurate!!!!! Also, the Karma system is genius! It studies my birth chart and predicts trouble spots, then gives protective rituals BEFORE problems hit.!!!! Also, my astrologer charges &#8377;2500 for remedies, but this app gives these personalized UPAAYS for free!!</p>
                    <div class="as_testimonial_user">
                        <div class="as_testimonial_avatar">
                            <img src="MediaData/p3.png" alt="Nupur Acharya">
                        </div>
                        <div>
                            <h4>Nupur Acharya</h4>
                            <span>Marketer</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center as_padderTop30">
            <ul class="slick-dots" id="testiDots"></ul>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 5: CTA
     ======================================== -->
<section class="as_cta_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <h2 class="as_heading as_heading_center">Join 70K+ Users Already Finding Clarity</h2>
        <p>Whether it's love, career, or life choices, your first chat is free, and your answers are waiting.</p>
        <a href="javascript:;" class="as_btn">Start Free Chat Now</a>
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
                <h2 class="as_heading as_heading_center">Frequently Asked Questions</h2>
                <div class="as_padderTop40">
                    <div class="accordion as_faq_section" id="faqChatAccordion">

                        <!-- FAQ 1 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat1">
                                    How can I start my first free astrology chat online?
                                </button>
                            </h2>
                            <div id="faqChat1" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Simply click the "Start Free Chat Now" button, fill in your basic details, and you'll be connected with an expert astrologer within seconds. No payment required for your first session.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 2 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat2">
                                    What type of questions can I ask an astrologer?
                                </button>
                            </h2>
                            <div id="faqChat2" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    You can ask about love &amp; relationships, career &amp; business, health, marriage compatibility, financial concerns, education, and any personal life decisions you need guidance on.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 3 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat3">
                                    Are online astrology chats accurate and safe?
                                </button>
                            </h2>
                            <div id="faqChat3" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Yes, our astrologers are verified experts with years of experience. All chats are private and encrypted. The predictions are based on authentic Vedic astrological principles.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 4 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat4">
                                    Can I talk to an astrologer in Hindi?
                                </button>
                            </h2>
                            <div id="faqChat4" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Absolutely! Our astrologers are fluent in both Hindi and English. You can choose your preferred language when starting a chat session.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 5 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat5">
                                    What happens after my free astrology chat ends?
                                </button>
                            </h2>
                            <div id="faqChat5" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    After your free chat, you can continue the consultation with affordable paid plans. You can also choose to chat with the same astrologer for continuity.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 6 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat6">
                                    Can I consult the same astrologer again later?
                                </button>
                            </h2>
                            <div id="faqChat6" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Yes, you can bookmark your favourite astrologer and reconnect with them anytime. Your chat history is saved for a seamless experience.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 7 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat7">
                                    Is there a limit on how many free chats I can get?
                                </button>
                            </h2>
                            <div id="faqChat7" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Usually, the first chat is free for new users. After that, paid consultation plans are available.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 8 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat8">
                                    Can astrology chat help with daily decisions?
                                </button>
                            </h2>
                            <div id="faqChat8" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Yes, our astrologers provide daily guidance based on planetary positions, helping you make better decisions about your day-to-day life and upcoming events.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 9 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqChat9">
                                    Do astrologers also provide remedies along with predictions?
                                </button>
                            </h2>
                            <div id="faqChat9" class="accordion-collapse collapse" data-bs-parent="#faqChatAccordion">
                                <div class="accordion-body">
                                    Yes, our astrologers provide personalised Vedic remedies, gemstone recommendations, mantras, and practical Upaays along with their predictions.
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

