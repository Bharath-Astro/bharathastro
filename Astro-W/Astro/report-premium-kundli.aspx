<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="report-premium-kundli.aspx.cs" Inherits="report_premium_kundli" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
/* ========================================
   KUNDLI REPORT PAGE - Custom CSS
   ======================================== */

/* Hero Section */
.as_kundli_hero {
    background-image: url('../img/bg2.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    text-align: center;
}
.as_kundli_hero h1 {
    font-size: 42px;
    margin-bottom: 20px;
    line-height: 52px;
}
.as_kundli_hero p {
    max-width: 650px;
    margin: 0 auto 25px;
}
.as_trust_points {
    max-width: 500px;
    margin: 0 auto 30px;
}
.as_trust_points li {
    padding: 6px 0 6px 30px;
    position: relative;
    font-size: 14px;
    line-height: 24px;
    text-align: left;
}
.as_trust_points li::before {
    content: '';
    position: absolute;
    left: 0;
    top: 12px;
    width: 16px;
    height: 16px;
    background-color: var(--secondary-color);
    border-radius: 100%;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='9' height='9' viewBox='0 0 24 24' fill='none' stroke='%23ffffff' stroke-width='3' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='20 6 9 17 4 12'%3E%3C/polyline%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: center;
}

/* Pain Points Section */
.as_pain_section {
    background-color: var(--dark-color2);
}
.as_pain_text {
    max-width: 600px;
    margin: 0 auto;
}
.as_pain_text p {
    font-size: 15px;
    line-height: 28px;
    margin-bottom: 20px;
}
.as_pain_text p.as_highlight {
    font-size: 20px;
    font-family: 'Philosopher', sans-serif;
    color: var(--secondary-color);
    font-weight: 600;
}
.as_pain_text p.as_negative {
    color: #97b0c1;
    font-style: italic;
}
.as_pain_text p.as_positive {
    color: var(--secondary-color);
    font-weight: 600;
}

/* What is Kundli Section */
.as_what_kundli {
    background-image: url('../img/bg3.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_quote_block {
    background-color: #10334a;
    border-left: 4px solid var(--secondary-color);
    padding: 25px 30px;
    margin: 25px 0;
    border-radius: 0 10px 10px 0;
}
.as_quote_block p {
    margin: 0;
    font-size: 15px;
    line-height: 28px;
    font-style: italic;
}

/* Testimonials Section */
.as_testimonials_kundli {
    background-color: var(--dark-color1);
}
.as_testi_card_kundli {
    background-color: #07273c;
    border-radius: 10px;
    padding: 30px;
    margin: 20px 0;
    position: relative;
}
.as_testi_stars {
    color: #ffb800;
    font-size: 16px;
    margin-bottom: 15px;
    letter-spacing: 2px;
}
.as_testi_card_kundli p.as_testi_content {
    font-size: 14px;
    line-height: 26px;
    margin-bottom: 20px;
    position: relative;
}
.as_testi_card_kundli .as_testi_user {
    display: flex;
    align-items: center;
}
.as_testi_card_kundli .as_testi_avatar {
    width: 50px;
    height: 50px;
    border-radius: 100%;
    overflow: hidden;
    margin-right: 15px;
    flex-shrink: 0;
    background-color: var(--secondary-color);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    font-weight: 700;
    color: var(--white-color);
}
.as_testi_card_kundli .as_testi_user h4 {
    font-size: 16px;
    margin: 0 0 3px;
}
.as_testi_card_kundli .as_testi_user span {
    font-size: 13px;
    color: #97b0c1;
}

/* Astrologer Section */
.as_astrologer_section {
    background-image: url('../img/bg4.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_astrologer_box {
    display: flex;
    gap: 40px;
    align-items: center;
    background-color: #07273c;
    border-radius: 10px;
    padding: 40px;
}
.as_astrologer_img {
    width: 250px;
    flex-shrink: 0;
}
.as_astrologer_img img {
    width: 100%;
    border-radius: 10px;
}
.as_astrologer_points {
    margin: 0;
    padding: 0;
    list-style: none;
}
.as_astrologer_points li {
    padding: 10px 0 10px 30px;
    position: relative;
    font-size: 14px;
    line-height: 24px;
}
.as_astrologer_points li::before {
    content: '';
    position: absolute;
    left: 0;
    top: 14px;
    width: 18px;
    height: 18px;
    background-color: var(--secondary-color);
    border-radius: 100%;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='10' height='10' viewBox='0 0 24 24' fill='none' stroke='%23ffffff' stroke-width='3' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='20 6 9 17 4 12'%3E%3C/polyline%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: center;
}

/* Features Section */
.as_features_section {
    background-color: var(--dark-color1);
}
.as_feature_category {
    background-color: #07273c;
    border-radius: 10px;
    padding: 30px;
    margin: 20px 0;
    border-left: 4px solid var(--secondary-color);
}
.as_feature_category h4 {
    font-size: 20px;
    margin: 0 0 15px;
    color: var(--secondary-color);
}
.as_feature_list {
    margin: 0;
    padding: 0;
    list-style: none;
}
.as_feature_list li {
    padding: 8px 0 8px 25px;
    position: relative;
    font-size: 13px;
    line-height: 22px;
    color: #97b0c1;
}
.as_feature_list li::before {
    content: '✓';
    position: absolute;
    left: 0;
    top: 8px;
    color: var(--secondary-color);
    font-weight: 700;
}
.as_feature_list li strong {
    color: var(--white-color);
    display: block;
    margin-bottom: 2px;
}

/* Common Questions */
.as_questions_section {
    background-image: url('../img/bg5.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_question_item {
    background-color: #07273c;
    border-radius: 10px;
    padding: 25px 30px;
    margin: 15px 0;
    cursor: pointer;
    transition: all 0.3s linear;
    border: 1px solid transparent;
}
.as_question_item:hover,
.as_question_item.active {
    border-color: var(--secondary-color);
}
.as_question_item h4 {
    font-size: 18px;
    margin: 0 0 0;
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 15px;
    transition: all 0.2s linear;
}
.as_question_item:hover h4,
.as_question_item.active h4 {
    color: var(--secondary-color);
}
.as_question_item .as_q_icon {
    font-size: 24px;
    flex-shrink: 0;
    color: var(--secondary-color);
    transition: all 0.3s linear;
}
.as_question_item.active .as_q_icon {
    transform: rotate(45deg);
}
.as_question_item .as_q_answer {
    max-height: 0;
    overflow: hidden;
    transition: all 0.3s linear;
}
.as_question_item.active .as_q_answer {
    max-height: 300px;
    padding-top: 15px;
}
.as_question_item .as_q_answer p {
    font-size: 14px;
    line-height: 26px;
    margin: 0;
    color: #97b0c1;
}

/* CTA Before Pricing */
.as_cta_before_price {
    background-color: var(--dark-color2);
    text-align: center;
}
.as_cta_before_price p {
    max-width: 600px;
    margin: 0 auto 8px;
    font-size: 15px;
    line-height: 28px;
}
.as_cta_before_price p.as_cta_highlight {
    color: var(--secondary-color);
    font-weight: 600;
    font-size: 18px;
}

/* Pricing Section */
.as_pricing_section {
    background-image: url('../img/bg6.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}
.as_pricing_box {
    background-color: #07273c;
    border-radius: 15px;
    padding: 50px 40px;
    text-align: center;
    border: 2px solid var(--secondary-color);
    position: relative;
    overflow: hidden;
    max-width: 500px;
    margin: 0 auto;
}
.as_pricing_box::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 4px;
    background: linear-gradient(90deg, var(--secondary-color), #ff9f43, var(--secondary-color));
}
.as_pricing_label {
    display: inline-block;
    background-color: var(--secondary-color);
    color: var(--white-color);
    padding: 6px 20px;
    border-radius: 20px;
    font-size: 13px;
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-bottom: 20px;
}
.as_pricing_title {
    font-size: 28px;
    margin: 0 0 25px;
}
.as_pricing_price {
    margin-bottom: 20px;
}
.as_pricing_price .as_price_old {
    font-size: 24px;
    color: #5e7482;
    text-decoration: line-through;
}
.as_pricing_price .as_price_new {
    font-size: 52px;
    font-weight: 700;
    color: var(--secondary-color);
    font-family: 'Philosopher', sans-serif;
}
.as_pricing_price .as_price_new sup {
    font-size: 28px;
    top: -15px;
}
.as_pricing_price .as_price_new small {
    font-size: 16px;
    font-weight: 400;
    color: var(--primary-color);
}
.as_discount_badge {
    display: inline-block;
    background-color: #10334a;
    color: #22c55e;
    padding: 8px 20px;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 700;
    margin-bottom: 25px;
}
.as_countdown_wrap {
    margin: 25px 0;
}
.as_countdown_label {
    font-size: 14px;
    color: #97b0c1;
    margin-bottom: 10px;
}
.as_countdown_timer {
    display: flex;
    justify-content: center;
    gap: 15px;
}
.as_countdown_timer .as_time_box {
    background-color: var(--dark-color1);
    border-radius: 8px;
    padding: 15px 20px;
    min-width: 70px;
}
.as_countdown_timer .as_time_box .as_time_val {
    font-size: 32px;
    font-weight: 700;
    color: var(--secondary-color);
    font-family: 'Philosopher', sans-serif;
    display: block;
}
.as_countdown_timer .as_time_box .as_time_label {
    font-size: 12px;
    color: #97b0c1;
    text-transform: uppercase;
}
.as_pricing_box .as_btn {
    width: 100%;
    justify-content: center;
    height: 55px;
    font-size: 16px;
    margin-top: 10px;
}
.as_pricing_note {
    font-size: 13px;
    color: #97b0c1;
    margin-top: 20px;
}

/* Responsive */
@media (max-width:1199px) {
    .as_kundli_hero h1 {
        font-size: 36px;
        line-height: 46px;
    }
    .as_astrologer_img {
        width: 200px;
    }
}
@media (max-width:991px) {
    .as_kundli_hero h1 {
        font-size: 30px;
        line-height: 40px;
    }
    .as_astrologer_box {
        flex-direction: column;
        text-align: center;
    }
    .as_astrologer_img {
        width: 180px;
        margin: 0 auto;
    }
    .as_astrologer_points li {
        text-align: left;
    }
    .as_pricing_box {
        padding: 40px 25px;
    }
    .as_countdown_timer .as_time_box {
        min-width: 60px;
        padding: 12px 15px;
    }
    .as_countdown_timer .as_time_box .as_time_val {
        font-size: 26px;
    }
}
@media (max-width:767px) {
    .as_kundli_hero h1 {
        font-size: 26px;
        line-height: 36px;
    }
    .as_testi_card_kundli {
        padding: 25px 20px;
    }
    .as_astrologer_box {
        padding: 30px 20px;
    }
    .as_feature_category {
        padding: 25px 20px;
    }
    .as_question_item {
        padding: 20px;
    }
    .as_countdown_timer {
        gap: 10px;
    }
    .as_countdown_timer .as_time_box {
        min-width: 55px;
        padding: 10px 12px;
    }
    .as_countdown_timer .as_time_box .as_time_val {
        font-size: 22px;
    }
    .as_pricing_price .as_price_new {
        font-size: 42px;
    }
}
@media (max-width:567px) {
    .as_kundli_hero h1 {
        font-size: 22px;
        line-height: 32px;
    }
    .as_pain_text p {
        font-size: 14px;
        line-height: 26px;
    }
    .as_pain_text p.as_highlight {
        font-size: 17px;
    }
    .as_question_item h4 {
        font-size: 16px;
    }
    .as_pricing_title {
        font-size: 22px;
    }
    .as_pricing_price .as_price_new {
        font-size: 36px;
    }
    .as_pricing_price .as_price_new sup {
        font-size: 22px;
    }
    .as_countdown_timer .as_time_box .as_time_label {
        font-size: 10px;
    }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- ========================================
     SECTION 1: Hero
     ======================================== -->
<section class="as_kundli_hero as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h1 class="as_heading as_heading_center">Your Janam Kundli shows where you will succeed</h1>
                <p>We often act on instinct, but your Kundli shows what you should do to be successful. Get precise guidance on love, career, and health based on your birth chart.</p>
                <p class="as_font14" style="color: #97b0c1;">Trusted by Over 1.5 Lakh People for Accurate Insights. Receive your 140+ page Kundli report in an easy-to-read report within 2-3 working days.</p>
                <ul class="as_trust_points" style="list-style: none; margin: 0 auto 30px;">
                    <li>Accurate predictions</li>
                    <li>Actionable insights for success</li>
                    <li>Crafted by 35+ years experienced astrologer</li>
                </ul>
                <a href="javascript:;" class="as_btn">Get Your Kundli Report Now</a>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 2: Pain Points
     ======================================== -->
<section class="as_pain_section as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">Understanding yourself is tough</h2>
                <div class="as_pain_text as_padderTop30">
                    <p>You've likely spent hours reading generic horoscopes, browsing astrology websites, or watching YouTube videos you hoped would give you answers...</p>
                    <p class="as_negative">Maybe you've tried following popular astrologers and using their "proven techniques" and yet...</p>
                    <p class="as_negative">You're still feeling lost. Not knowing yourself is really frustrating.</p>
                    <p class="as_font14" style="color: #97b0c1;">It's not your fault though. The truth is most astrology advice is too general.</p>
                    <p class="as_highlight">What works for others won't work for you.</p>
                    <p class="as_positive">Your life is unique, right?</p>
                    <p class="as_positive">There is a better way...</p>
                    <div class="text-center as_padderTop20">
                        <a href="javascript:;" class="as_btn">Get Your Kundli Report Now</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 3: What is Kundli
     ======================================== -->
<section class="as_what_kundli as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">What is Kundli? Why Does Your Kundli Matter?</h2>
                <div class="as_padderTop30">
                    <p>A Kundli is your personalized life map, based on Vedic astrology. It shows the positions of the planets at the moment of your birth, revealing how they shape your life.</p>
                    <p>In life, we often make decisions under pressure or uncertainty, leading us to a path that may not work. We trust our instincts but sometimes find ourselves stuck, repeating the same mistakes.</p>
                    <p>Your Kundli matters because it removes the guesswork. It gives you a clear understanding of your strengths, challenges, and true potential. It's not about predicting your future, but about showing you the path where you can succeed—one that's aligned with your life journey.</p>
                    <div class="as_quote_block">
                        <p>We live in the self-knowledge era. If you can't understand yourself and your place in the world... you'll never reach your full potential.</p>
                    </div>
                    <div class="text-center as_padderTop20">
                        <a href="javascript:;" class="as_btn">Get Your Kundli Report Now</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 4: Results Header
     ======================================== -->
<section class="as_pain_section as_padderTop60 as_padderBottom40">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8 text-center">
                <h2 class="as_heading as_heading_center">The Results Speak for Themselves</h2>
                <p class="as_padderTop10">Over <span class="as_orange" style="font-weight: 700;">1.5 Lakh People</span> Can't Be Wrong!!</p>
                <p class="as_font14" style="color: #97b0c1;">Our Comprehensive Kundli Report unveils the secrets to living your best life, aligned with ancient Indian traditions.</p>
                <p class="as_positive">It's time to join them.</p>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 5: Testimonials
     ======================================== -->
<section class="as_testimonials_kundli as_padderTop40 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">

                <!-- Testimonial 1 -->
                <div class="as_testi_card_kundli">
                    <div class="as_testi_stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                    <p class="as_testi_content">"I was skeptical about getting my Kundli done, but this report surprised me &#128518;. It accurately highlighted aspects of my personality and life events. It's like the universe handed me a mirror reflecting my true self &#128512; Now, I'm making decisions that feel aligned with who I am."</p>
                    <div class="as_testi_user">
                        <div class="as_testi_avatar">AS</div>
                        <div>
                            <h4>Ananya Shrivastava</h4>
                            <span>C.A, Mumbai</span>
                        </div>
                    </div>
                </div>

                <!-- Testimonial 2 -->
                <div class="as_testi_card_kundli">
                    <div class="as_testi_stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                    <p class="as_testi_content">"I've always struggled with making decisions, especially career... My Kundli report gave such clear insights into my personality and suggested a practical remedy: writing one page with a red pen every morning to balance my energy. I was like what??? but it's worked wonders! I feel more focused and confident in my choices now. Sounds nuts, but this REALLY WORKED!!"</p>
                    <div class="as_testi_user">
                        <div class="as_testi_avatar">MT</div>
                        <div>
                            <h4>Manish Tiwari</h4>
                            <span>Marketing Manager, Mumbai</span>
                        </div>
                    </div>
                </div>

                <!-- Testimonial 3 -->
                <div class="as_testi_card_kundli">
                    <div class="as_testi_stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                    <p class="as_testi_content">"Tbh, I wasn't expecting much but this Kundli report helped me. The predictions were on point & the remedies were simple to follow (which I loved &#128588;). I also tried the Matching report for my partner and me.. nd it's been such a blessing! Now I'm seeing changes, especially in my relationship with my family!!!"</p>
                    <div class="as_testi_user">
                        <div class="as_testi_avatar">AD</div>
                        <div>
                            <h4>Amita Dasauni</h4>
                            <span>Software Engineer, Pune</span>
                        </div>
                    </div>
                </div>

                <!-- Testimonial 4 -->
                <div class="as_testi_card_kundli">
                    <div class="as_testi_stars">&#9733;&#9733;&#9733;&#9733;&#9733;</div>
                    <p class="as_testi_content">"I was jumping from one job to another without any direction.... My Kundli report suggested a major change... moving from Mumbai to Bangalore for better opportunities. At first, I was hesitant but decided to trust it, and wow, it made a huge difference! I've found more stability and growth in my career here. Thank you Pandit Rishiraj ji &#128588;&#10024;"</p>
                    <div class="as_testi_user">
                        <div class="as_testi_avatar">RN</div>
                        <div>
                            <h4>Rajesh Nair</h4>
                            <span>IT Professional, Bangalore</span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 6: Meet Astrologer
     ======================================== -->
<section class="as_astrologer_section as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">Meet Our Principal Astrologer Pt. Rishiraj Tiwariji</h2>
                <p class="text-center as_padderTop10 as_padderBottom30">Since 35+ years, he has transformed many lives. He'll craft your 140+ page life manual - packed with insights to help you win at work, love, and everything in between.</p>

                <div class="as_astrologer_box">
                    <div class="as_astrologer_img">
                        <img src="MediaData/pa1.png" alt="Pt. Rishiraj Tiwari">
                    </div>
                    <div class="as_astrologer_content">
                        <ul class="as_astrologer_points">
                            <li>Big shots from Bollywood to boardrooms trust him. But he'll treat you just the same.</li>
                            <li>He doesn't just read stars, he gives you a game plan.</li>
                            <li>He tells it like it is. No sugar-coating here.</li>
                        </ul>
                        <div class="as_padderTop20">
                            <a href="javascript:;" class="as_btn">Get Your Kundli Report Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 7: Features Included
     ======================================== -->
<section class="as_features_section as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">Here's what's included in your Vedic Rishi's Personalised 140+ Page Kundli Report</h2>

                <div class="as_padderTop40">
                    <!-- Feature 1 -->
                    <div class="as_feature_category">
                        <h4>Astrological Foundations</h4>
                        <ul class="as_feature_list">
                            <li><strong>Your Astro Details:</strong> Learn about your birth details and astrological meaning.</li>
                            <li><strong>Planetary Positions:</strong> See where the planets were at the time of your birth and how they influence your life.</li>
                            <li><strong>House Cusps and Sandhi:</strong> Understand how your 12 houses impact different areas of your life.</li>
                        </ul>
                    </div>

                    <!-- Feature 2 -->
                    <div class="as_feature_category">
                        <h4>In-Depth Analysis</h4>
                        <ul class="as_feature_list">
                            <li><strong>Your Kundli Chart:</strong> Visual representation of your birth chart with key planetary influences.</li>
                            <li><strong>Divisional Charts:</strong> Get detailed insights into specific aspects like marriage, career, and wealth.</li>
                            <li><strong>Composite Friendship Table:</strong> Discover which planets are beneficial, neutral, or challenging for you.</li>
                        </ul>
                    </div>

                    <!-- Feature 3 -->
                    <div class="as_feature_category">
                        <h4>Planetary Strengths & Dashas</h4>
                        <ul class="as_feature_list">
                            <li><strong>Ashtakvarga & Sarvashtak Varga:</strong> Learn the strengths and weaknesses of planets in your chart and their impact on your future.</li>
                            <li><strong>Vimshottari & Yogini Dasha:</strong> Understand the planetary periods that will affect important life events.</li>
                        </ul>
                    </div>

                    <!-- Feature 4 -->
                    <div class="as_feature_category">
                        <h4>Key Elements of Your Kundli</h4>
                        <ul class="as_feature_list">
                            <li><strong>Panchang:</strong> A deeper look at the astrological calendar of your birth.</li>
                            <li><strong>Nakshatra:</strong> Insights into your personality based on your birth star.</li>
                            <li><strong>Pancha Tattva:</strong> Explore how the five elements (Earth, Water, Fire, Air, Space) influence your life.</li>
                            <li><strong>Atmakaraka:</strong> Discover the planet that represents your soul's desires.</li>
                        </ul>
                    </div>

                    <!-- Feature 5 -->
                    <div class="as_feature_category">
                        <h4>Dosha Analysis & Remedies</h4>
                        <ul class="as_feature_list">
                            <li><strong>Manglik, Kalsarpa, & Pitra Dosha:</strong> Understand how doshas are affecting your relationships, finances, or health and the remedies to address them.</li>
                            <li><strong>Sade Sati Insights:</strong> Learn about Saturn's 7.5-year cycle and how it affects your life.</li>
                        </ul>
                    </div>

                    <!-- Feature 6 -->
                    <div class="as_feature_category">
                        <h4>Comprehensive Life Analysis</h4>
                        <ul class="as_feature_list">
                            <li><strong>Lagna (Ascendant) Analysis:</strong> Understand how your rising sign impacts your life.</li>
                            <li><strong>Mental & Inner Strength:</strong> Gain insights into your mental capabilities and emotional tendencies.</li>
                            <li><strong>Luck & Fortune:</strong> Discover how planets influence your luck.</li>
                            <li><strong>Career & Education:</strong> Explore your ideal career paths and academic prospects.</li>
                            <li><strong>Wealth & Finance:</strong> Get advice for long-term financial stability.</li>
                            <li><strong>Marriage & Relationships:</strong> Learn about your marriage prospects and compatibility.</li>
                            <li><strong>Health:</strong> Find out how planetary influences affect your physical and mental health.</li>
                        </ul>
                    </div>

                    <!-- Feature 7 -->
                    <div class="as_feature_category">
                        <h4>Future Predictions & Challenges</h4>
                        <ul class="as_feature_list">
                            <li><strong>Future Forecast:</strong> Get predictions for the next 6-8 years, including major life events.</li>
                            <li><strong>Challenges & Remedies:</strong> Identify the biggest challenges in your life and the remedies to overcome them.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 8: Common Questions
     ======================================== -->
<section class="as_questions_section as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">Bet these questions have kept you up way past your bedtime, haven't they?</h2>

                <div class="as_padderTop40">
                    <!-- Question 1 -->
                    <div class="as_question-item">
                        <h4>Why am I struggling in my career? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Kundli analyzes planetary positions that influence your career choices. It can point out obstacles and suggest the right timing or direction for career success, such as relocating or changing industries.</p>
                        </div>
                    </div>

                    <!-- Question 2 -->
                    <div class="as_question-item">
                        <h4>Will I have financial stability? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Your Kundli highlights periods when financial growth is most likely, as well as potential challenges. Remedies like gemstone recommendations can help improve financial situations.</p>
                        </div>
                    </div>

                    <!-- Question 3 -->
                    <div class="as_question-item">
                        <h4>When will I get married? Or will I get married? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>For those facing delays in marriage, our detailed Kundli can reveal planetary reasons such as Manglik Dosha or Saturn's influence (Sade Sati), and offer remedies to balance these effects.</p>
                        </div>
                    </div>

                    <!-- Question 4 -->
                    <div class="as_question-item">
                        <h4>Why do I keep facing relationship problems? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Relationship issues, especially repeated patterns of conflict, may be due to planetary positions. Vedic Rishi's Kundli can shed light on doshas affecting your love life and suggest remedies to restore harmony.</p>
                        </div>
                    </div>

                    <!-- Question 5 -->
                    <div class="as_question-item">
                        <h4>Am I affected by Sade Sati or any Doshas? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Your Janam Kundli shows whether you're currently under the influence of Sade Sati or Doshas like Kalsarpa or Manglik, and how they may be causing obstacles in your life.</p>
                        </div>
                    </div>

                    <!-- Question 6 -->
                    <div class="as_question-item">
                        <h4>How can I overcome health issues? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Planetary positions can indicate potential health risks, and our Kundli report offers guidance on maintaining balance through practical remedies, lifestyle adjustments, and spiritual practices.</p>
                        </div>
                    </div>

                    <!-- Question 7 -->
                    <div class="as_question-item">
                        <h4>What does my Kundli say about my education? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>A Kundli report can help you understand how planetary influences affect your education and provide practical guidance for academic success.</p>
                        </div>
                    </div>

                    <!-- Question 8 -->
                    <div class="as_question-item">
                        <h4>Am I Manglik? How does it affect my marriage? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Your Kundli can confirm if you have Manglik Dosha and offer remedies, such as conducting specific rituals, to mitigate its effects on relationships.</p>
                        </div>
                    </div>

                    <!-- Question 9 -->
                    <div class="as_question-item">
                        <h4>Why do I always feel anxious for no reason? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Your Kundli Report translates YOU to yourself. Express yourself clearly, build strong connections, and ditch the drama.</p>
                        </div>
                    </div>

                    <!-- Question 10 -->
                    <div class="as_question-item">
                        <h4>What is Yogini Dasha, and how does it affect my life? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Yogini Dasha is an 8-period cycle in Vedic astrology that lasts for 36 years. Each phase is ruled by a planet, influencing areas like health, career, relationships, and finances. The effects depend on the Yogini active in your chart. A Kundli report can show which Yogini Dasha you're in and its impact on your life.</p>
                        </div>
                    </div>

                    <!-- Question 11 -->
                    <div class="as_question-item">
                        <h4>What is Vimshottari Dasha, and why is it important? <span class="as_q-icon">+</span></h4>
                        <div class="as_q_answer">
                            <p>Vimshottari Dasha is a 120-year planetary cycle in Vedic astrology, based on the Moon's position at birth. Each planet's period affects key areas like health, wealth, and relationships. Our detailed Kundli report helps you understand which Dasha is active and how it shapes your future.</p>
                        </div>
                    </div>
                </div>

                <div class="text-center as_padderTop30">
                    <a href="javascript:;" class="as_btn">Get Your Kundli Report Now</a>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 9: CTA Before Pricing
     ======================================== -->
<section class="as_cta_before_price as_padderTop60 as_padderBottom60">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <p>If you've consulted multiple pandits about your kundli, hoping for a better explanation...</p>
                <p>If you've asked your family about your birth time to get a more accurate kundli reading!</p>
                <p>You've checked your daily horoscope religiously, hoping it would explain your bad day!</p>
                <p class="as_cta_highlight">THIS REPORT IS FOR YOU!!</p>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 10: Pricing
     ======================================== -->
<section class="as_pricing_section as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <div class="as_pricing_box">
                    <div class="as_pricing_label">Vedic Kundli</div>
                    <h3 class="as_pricing_title">At Just</h3>
                    <div class="as_pricing_price">
                        <span class="as_price_old">&#8377;1500</span>
                        <br>
                        <span class="as_price_new"><sup>&#8377;</sup>650<small>/- Only</small></span>
                    </div>
                    <div class="as_discount_badge">That's 57% OFF</div>
                    <div class="as_countdown_wrap">
                        <p class="as_countdown_label">Offers ends in :</p>
                        <div class="as_countdown_timer">
                            <div class="as_time_box">
                                <span class="as_time_val" id="countHours">7</span>
                                <span class="as_time_label">hr</span>
                            </div>
                            <div class="as_time_box">
                                <span class="as_time-val" id="countMins">9</span>
                                <span class="as_time_label">min</span>
                            </div>
                            <div class="as_time_box">
                                <span class="as_time_val" id="countSecs">31</span>
                                <span class="as_time_label">sec</span>
                            </div>
                        </div>
                    </div>
                    <a href="javascript:;" class="as_btn">Get Your Kundli Report Now</a>
                    <p class="as_pricing_note">Don't let uncertainty hold you back any longer.</p>
                </div>
            </div>
            <div class="col-lg-2 col-md-2"></div>
        </div>
    </div>
</section>

<!-- ========================================
     SECTION 11: FAQ
     ======================================== -->
<section class="as_faq_wrapper as_padderTop80 as_padderBottom80">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2"></div>
            <div class="col-lg-8 col-md-8">
                <h2 class="as_heading as_heading_center">FAQs on Premium Kundli Report</h2>
                <div class="as_padderTop40">
                    <div class="accordion as_faq_section" id="faqKundliAccordion">

                        <!-- FAQ 1 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqKundli1">
                                    What kind of information can I find in the Premium Kundli Report?
                                </button>
                            </h2>
                            <div id="faqKundli1" class="accordion-collapse collapse" data-bs-parent="#faqKundliAccordion">
                                <div class="accordion-body">
                                    Our Premium Kundli Report is a comprehensive 140+ page document that includes your birth chart analysis, planetary positions, divisional charts, Dasha predictions, Dosha analysis (Manglik, Kalsarpa, Pitra Dosha, Sade Sati), remedies, and detailed predictions for career, marriage, health, wealth, and education. It also covers Ashtakvarga, Panchang, Nakshatra analysis, and future forecasts for 6-8 years.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 2 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqKundli2">
                                    How many pages are included in the Premium Kundli Report?
                                </button>
                            </h2>
                            <div id="faqKundli2" class="accordion-collapse collapse" data-bs-parent="#faqKundliAccordion">
                                <div class="accordion-body">
                                    The Premium Kundli Report contains over 140 pages of detailed astrological analysis. Each section is carefully crafted by our Principal Astrologer Pt. Rishiraj Tiwari, ensuring thorough insights into every aspect of your life.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 3 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqKundli3">
                                    How can the Premium Kundli Report help me in my life?
                                </button>
                            </h2>
                            <div id="faqKundli3" class="accordion-collapse collapse" data-bs-parent="#faqKundliAccordion">
                                <div class="accordion-body">
                                    The Premium Kundli Report provides actionable insights for success in various life areas. It helps you understand your strengths and weaknesses, identify the right career path, improve relationships, achieve financial stability, and overcome health challenges. The personalized remedies suggested in the report can help you navigate difficult periods and make better life decisions.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 4 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqKundli4">
                                    Do I need exact birth times for a Kundli Report?
                                </button>
                            </h2>
                            <div id="faqKundli4" class="accordion-collapse collapse" data-bs-parent="#faqKundliAccordion">
                                <div class="accordion-body">
                                    While an exact birth time gives the most accurate results, we can still prepare a useful Kundli report with an approximate time. If you're unsure about your birth time, we recommend checking with family members or birth records. Our astrologers can also help rectify the birth time based on life events.
                                </div>
                            </div>
                        </div>

                        <!-- FAQ 5 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faqKundli5">
                                    How long does it take to receive my Kundli Report?
                                </button>
                            </h2>
                            <div id="faqKundli5" class="accordion-collapse collapse" data-bs-parent="#faqKundliAccordion">
                                <div class="accordion-body">
                                    Your Premium Kundli Report is prepared personally by our Principal Astrologer Pt. Rishiraj Tiwari and is delivered within 2-3 working days via email. Since each report is manually crafted and not auto-generated, this time ensures the highest quality and accuracy of insights.
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

