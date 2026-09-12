<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="calculator-detailed-numerology.aspx.cs" Inherits="calculator_detailed_numerology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
        <div class="container">
            <div class="row as_verticle_center text-center">
                <div class="col-lg-12 col-md-12">
                    <h1 class="as_heading auto"> Your Free Numerology Report & Monthly Forecasts </h1>
                    <p> Everything in the universe has an energy vibration, including numbers. Each number and letter
                        has a unique vibration that influences your life. Numerology studies this relationship to reveal
                        your destiny, life purpose, and life lessons. This information is valuable for making the most
                        of your journey. </p>
                    <p> Now let's take a look at your numerical journey and see what your numbers tell about you!! </p>
                </div>
            </div>

            <div class="row" id="form">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_journal_box_wrapper mt-60">
                        <div>
                            <h3 class="text-center as_subheading">Get Your Free Manglik Report Now </h3>
                            <div class="row pt-30">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Enter Your Full Name </label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Enter Your Full Name ">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Gender</label>
                                    <div class="form-group">
                                        <select class="form-control" data-placeholder="Gender">
                                            <option value="male">Male</option>
                                            <option value="female">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <label>Select Your Birth Date </label>
                                </div>
                                <div class="pt-10"></div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <label>Date</label>
                                    <div class="form-group as_select_box">
                                        <select class="form-control" name="day" autocomplete="off" autocorrect="off"
                                            autocapitalize="none" spellcheck="false">
                                            <option value="true">DD</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                            <option value="16">16</option>
                                            <option value="17">17</option>
                                            <option value="18">18</option>
                                            <option value="19">19</option>
                                            <option value="20">20</option>
                                            <option value="21">21</option>
                                            <option value="22">22</option>
                                            <option value="23">23</option>
                                            <option value="24">24</option>
                                            <option value="25">25</option>
                                            <option value="26">26</option>
                                            <option value="27">27</option>
                                            <option value="28">28</option>
                                            <option value="29">29</option>
                                            <option value="30">30</option>
                                            <option value="31">31</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <label>Month</label>
                                    <div class="form-group as_select_box">
                                        <select class="form-control" name="month" autocomplete="off" autocorrect="off"
                                            autocapitalize="none" spellcheck="false">
                                            <option value="true">MM</option>
                                            <option value="1">January</option>
                                            <option value="2">February</option>
                                            <option value="3">March</option>
                                            <option value="4">April</option>
                                            <option value="5">May</option>
                                            <option value="6">June</option>
                                            <option value="7">July</option>
                                            <option value="8">August</option>
                                            <option value="9">September</option>
                                            <option value="10">October</option>
                                            <option value="11">November</option>
                                            <option value="12">December</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <label>Year </label>
                                    <div class="form-group as_select_box">
                                        <select class="form-control" name="year" autocomplete="off" autocorrect="off"
                                            autocapitalize="none" spellcheck="false">
                                            <option value="true">YY</option>
                                            <option value="1940">1940</option>
                                            <option value="1941">1941</option>
                                            <option value="1942">1942</option>
                                            <option value="1943">1943</option>
                                            <option value="1944">1944</option>
                                            <option value="1945">1945</option>
                                            <option value="1946">1946</option>
                                            <option value="1947">1947</option>
                                            <option value="1948">1948</option>
                                            <option value="1949">1949</option>
                                            <option value="1950">1950</option>
                                            <option value="1951">1951</option>
                                            <option value="1952">1952</option>
                                            <option value="1953">1953</option>
                                            <option value="1954">1954</option>
                                            <option value="1955">1955</option>
                                            <option value="1956">1956</option>
                                            <option value="1957">1957</option>
                                            <option value="1958">1958</option>
                                            <option value="1959">1959</option>
                                            <option value="1960">1960</option>
                                            <option value="1961">1961</option>
                                            <option value="1962">1962</option>
                                            <option value="1963">1963</option>
                                            <option value="1964">1964</option>
                                            <option value="1965">1965</option>
                                            <option value="1966">1966</option>
                                            <option value="1967">1967</option>
                                            <option value="1968">1968</option>
                                            <option value="1969">1969</option>
                                            <option value="1970">1970</option>
                                            <option value="1971">1971</option>
                                            <option value="1972">1972</option>
                                            <option value="1973">1973</option>
                                            <option value="1974">1974</option>
                                            <option value="1975">1975</option>
                                            <option value="1976">1976</option>
                                            <option value="1977">1977</option>
                                            <option value="1978">1978</option>
                                            <option value="1979">1979</option>
                                            <option value="1980">1980</option>
                                            <option value="1981">1981</option>
                                            <option value="1982">1982</option>
                                            <option value="1983">1983</option>
                                            <option value="1984">1984</option>
                                            <option value="1985">1985</option>
                                            <option value="1986">1986</option>
                                            <option value="1987">1987</option>
                                            <option value="1988">1988</option>
                                            <option value="1989">1989</option>
                                            <option value="1990">1990</option>
                                            <option value="1991">1991</option>
                                            <option value="1992">1992</option>
                                            <option value="1993">1993</option>
                                            <option value="1994">1994</option>
                                            <option value="1995">1995</option>
                                            <option value="1996">1996</option>
                                            <option value="1997">1997</option>
                                            <option value="1998">1998</option>
                                            <option value="1999">1999</option>
                                            <option value="2000">2000</option>
                                            <option value="2001">2001</option>
                                            <option value="2002">2002</option>
                                            <option value="2003">2003</option>
                                            <option value="2004">2004</option>
                                            <option value="2005">2005</option>
                                            <option value="2006">2006</option>
                                            <option value="2007">2007</option>
                                            <option value="2008">2008</option>
                                            <option value="2009">2009</option>
                                            <option value="2010">2010</option>
                                            <option value="2011">2011</option>
                                            <option value="2012">2012</option>
                                            <option value="2013">2013</option>
                                            <option value="2014">2014</option>
                                            <option value="2015">2015</option>
                                            <option value="2016">2016</option>
                                            <option value="2017">2017</option>
                                            <option value="2018">2018</option>
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                            <option value="2022">2022</option>
                                            <option value="2023">2023</option>
                                            <option value="2024">2024</option>
                                            <option value="2025">2025</option>
                                            <option value="2026">2026</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center as_padderTop20">
                                    <a href="" class="as_btn"> Submit </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h2 class="heading"> Hey asasas, </h2>
                    <p class="pt-20"> Welcome to your personalized numerology report! Here, we'll look at the special
                        meanings behind your numbers. Numerology can give you helpful info about your personality,
                        strong points, weak points, and life path. </p>
                    <p class="pt-20"> Numerology is best used as a guide to help you in life, along with your intuition,
                        good choices, and common sense. It should be a tool to help you live your life better, not the
                        only thing you depend on. </p>
                    <p class="pt-20"> We cover the following points in your numerology report: </p>
                    <ul class="as_importance_list">
                        <li> Your core numbers (life path, destiny, name, subconscious, and more) </li>
                        <li> Your personality, strengths and weaknesses </li>
                        <li> Magical Grid - Lo'Shu Square </li>
                        <li> What's your name number? </li>
                        <li> How is your current month and upcoming year? </li>
                    </ul>
                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> see your core numbers, which are the most important in numerology. </p>
                    </div>

                    <h2 class="heading pt-40"> Your Core Numbers </h2>
                    <p> Your core numbers in numerology are like pieces of a puzzle that make up who you are. There are
                        main numbers that create your personality profile. To really understand yourself, you need to
                        look at how all these numbers work together. </p>

                    <div class="cdn_bg_box bg_l_yellow">
                        <p class="cdn_p"> Your Life Path Number </p>
                        <span class="bg_d_yellow"> 22 </span>
                    </div>
                    <div class="cdn_bg_box bg_l_green">
                        <p class="cdn_p"> Your Destiny Number </p>
                        <span class="bg_d_green"> 6 </span>
                    </div>
                    <div class="cdn_bg_box bg_l_blue">
                        <p class="cdn_p"> Your Personality Number </p>
                        <span class="bg_d_blue"> 3 </span>
                    </div>
                    <div class="cdn_bg_box bg_l_gold">
                        <p class="cdn_p"> Your Expression Number </p>
                        <span class="bg_d_gold"> 6 </span>
                    </div>
                    <div class="cdn_bg_box bg_l_brown">
                        <p class="cdn_p"> Your Soul Urge Number </p>
                        <span class="bg_d_brown"> 3 </span>
                    </div>
                    <div class="cdn_bg_box bg_l_grey">
                        <p class="cdn_p"> Your Subconscious Self Number </p>
                        <span class="bg_d_grey"> 1 </span>
                    </div>
                    <div class="cdn_bg_box bg_l_violet">
                        <p class="cdn_p"> Your Challenge Numbers </p>
                        <div class="inner_span">
                            <span class="bg_d_violet"> 1 </span>
                            <span class="bg_d_violet"> 4 </span>
                            <span class="bg_d_violet"> 3 </span>
                            <span class="bg_d_violet"> 3 </span>
                        </div>
                    </div>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> Get Your <strong>Complete Numerology Report</strong> for Just ₹999 ₹399! </p>
                                <p> Your <strong>detailed Numerology report</strong> with personal insights is ready. It
                                    is 90+ pages long, with an in-depth analysis of <strong>core numbers, life path
                                        guidance</strong>, and <strong>predictions</strong> based on your birth numbers
                                </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Let's check out your life path number. </p>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h2 class="heading"> What is a Life Path Number? </h2>
                    <p class="pt-20"> Your Life Path Number reveals the most about your personality and the kind of life
                        you might lead. It indicates your life's purpose and the direction you are likely to take. </p>
                    <p> It also provides insight into the experiences you may encounter and the lessons you might learn
                        as you journey through life. </p>
                    <p> Some people also call the Life Path Number the Ruling Number, Birth Number, Birth Path, or Birth
                        Force Number. In Chaldean numerology, it's known as the Destiny Number. </p>
                    <p> <strong>Take your birth date (day/month/year).</strong> </p>
                    <div class="cdn_numbers">
                        <div class="cdnn_inner">
                            <span class="cdn_nh"> DD </span>
                            <div class="cdn_n"> 27 </div>
                        </div>
                        <div class="cdnn_inner">
                            <span class="cdn_nh"> MM </span>
                            <div class="cdn_n"> 8 </div>
                        </div>
                        <div class="cdnn_inner">
                            <span class="cdn_nh"> YYYY </span>
                            <div class="cdn_n"> 1994 </div>
                        </div>
                    </div>
                    <p class="pt-30"> <strong>Step 1</strong> Add all birthdate numbers. If result is two digits, add
                        those too. </p>
                    <div class="cdn_numbers">
                        <div class="cdnn_inner">
                            <div class="cdn_n"> 9 </div>
                        </div>
                        <div class="cdnn_inner">
                            <span>+</span>
                        </div>
                        <div class="cdnn_inner">
                            <div class="cdn_n"> 8 </div>
                        </div>
                        <div class="cdnn_inner">
                            <span>+</span>
                        </div>
                        <div class="cdnn_inner">
                            <div class="cdn_n"> 23 </div>
                        </div>
                    </div>
                    <p class="pt-30"> <strong>Step 2</strong> Add all birthdate numbers. If result is two digits, add
                        those too. </p>
                    <div class="cdn_numbers">
                        <div class="cdnn_inner">
                            <div class="cdn_n"> 40 => 4 </div>
                        </div>
                    </div>
                    <p class="pt-30"> <strong>Step 3</strong> Add digits to get a single number, unless it's master
                        numbers (11, 22, or 33). </p>
                    <div class="cdn_numbers">
                        <div class="cdnn_inner">
                            <div class="cdn_main"> 22 </div>
                        </div>
                    </div>
                    <h4 class="pt-30 text-center"> Your Life Path Number </h4>
                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Let's keep going and find out your Life Path Number. We'll also look at what it says about
                            your personality, strengths, and weaknesses. </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="flex_hl">
                        <h2 class="heading"> Your Life Path Number </h2>
                        <div class="cdn_numbers">
                            <div class="cdnn_inner">
                                <div class="cdn_main"> 22 </div>
                            </div>
                        </div>
                    </div>
                    <p class="pt-20"> Your special path will lead you to tum dreams into reality. The 22 Life Path
                        Number, like the 4, is seen as one who builds and manifests-but with a larger purpose. Once
                        you've mastered this lesson, you'll move on to the next phase-becoming a Master Builder. </p>
                    <p> You're a born creator of activities that benefit all of humanity, and you're viewed by others as
                        extraordi nary. You back up your word with deeds, again and again, and others know that your
                        word is as good as gold-or even better. With a 22 Life Path Number, good management principles
                        are behind what you do-and what you do is for the lasting good of humankind. Lucky us! </p>
                    <p> With a 22 your career/vocation options could include a planner, organizer, states man, diplomat,
                        ambassador, president, business executive for a large organization (national or international),
                        or promoter, because you'll thrive in any line of work that allows you to utilize your
                        considerable talent for organizing, being efficient, and applying your practical know-how to
                        build a dream. You command respect and are seen as an expert in your field. You're destined to
                        be a leader who is both practical and inspirational and who understands that success comes not
                        only from cooperation, but from being of service to humankind. </p>
                    <p> Your <strong>Strengths</strong> and <strong>Challenges</strong> as a Life Path Number 22 </p>
                    <h4 class="heading">Top 5 Strengths</h4>
                    <div class="cdn_numbers">
                        <div class="cdn_top"> Visionary </div>
                    </div>
                    <h4 class="heading pt-40">Top 5 Challenges</h4>
                    <div class="cdn_inner_top">
                        <div class="cdn_top"> Inflexible </div>
                        <div class="cdn_top"> Workaholic </div>
                        <div class="cdn_top"> Stubborn </div>
                        <div class="cdn_top"> Controlling </div>
                        <div class="cdn_top"> Perfectionist </div>
                    </div>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> That was just a quick overview of your <strong>life path number</strong>. If you
                                    want to learn more details, click the link below to get your <strong>full numerology
                                        report</strong>. </p>
                                <p> Get your report now for &nbsp; <s>₹999</s> &nbsp; ₹399 </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Now let's look at your second main or most important number, which will be your name number.
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h2 class="heading"> Your Name/ Destiny Number </h2>
                    <p class="pt-20"> Your <strong>Name/ Destiny Number</strong>, also called your <strong>Minor
                            Expression Number</strong>, comes from the first and last name you use every day. It might
                        be a shorter version of your birth name or a new name if you got married, or changed it for
                        another reason. </p>
                    <p> This number shows the energy you put out into the world when you use that name. It's like your
                        <strong>"energetic signature"</strong> that adds to your personality, strengths, lessons,
                        experiences, and opportunities based on your other numbers. </p>
                    <h4 class="heading">Your Full Name</h4>
                    <div class="cdn_numbers">
                        <div class="cdn_top"> A + S + A + S + A + S </div>
                    </div>
                    <p class="pt-30"> <strong>Step 1</strong> Give each letter a number based on its place in the
                        alphabet </p>
                    <div class="cdn_numbers">
                        <div class="cdn_top"> 1 + 1 + 1 + 1 + 1 + 1 </div>
                    </div>
                    <p class="pt-30"> <strong>Step 2</strong> Find total for first, middle(s), and last name separately.
                    </p>
                    <div class="cdn_numbers">
                        <div class="cdn_top"> 6 </div>
                    </div>
                    <p class="pt-30"> <strong>Step 3</strong> If multiple digits, keep adding until a single digit </p>
                    <div class="cdn_numbers">
                        <div class="cdnn_inner">
                            <div class="cdn_main"> 6 </div>
                        </div>
                    </div>

                    <h3 class="heading text-center pt-20"> Your Name Number </h3>

                    <div class="cdn_img_box">
                        <p> Your name number is 6, you give off the vibe of a "Responsible Caregiver" each time you use
                            this name. This means people view you as someone who is caring and dependable. You're seen
                            as a person who naturally takes on responsibilities, especially in looking after others.
                            Your reliable and nurturing nature makes you a pillar of support for those around you, often
                            turning to you in times of need. </p>
                    </div>


                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> That was just a quick overview of your <strong>life path number</strong>. If you
                                    want to learn more details, click the link below to get your <strong>full numerology
                                        report</strong>. </p>
                                <p> Get your report now for &nbsp; <s>₹999</s> &nbsp; ₹399 </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Let's proceed to magical grid of numerology </p>
                    </div>
                </div>
            </div>

        </div>
    </section>


    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">

                    <div class="double_box">
                        <div class="db_inner">
                            <h4 class="heading">Here We Have Prepared Your In-Depth Personalized Numerology Report</h4>
                            <p class="pt-20"> Your Personal Numerology Report Is Here </p>
                            <p class="pt-20"> Know your life path, destiny, and core numbers that define you. See your
                                strengths, challenges, and opportunities for growth and success. Plus, get a peek at
                                what the next months and year hold for you. </p>
                        </div>
                        <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                    </div>

                    <h3 class="heading pt-30">What You'll Find Inside -</h3>
                    <div class="double_box bg_l_yellow t_b">
                        <div class="db_inner">
                            <h4 class="heading">Your Core Numbers</h4>
                            <p class="pt-20"> Learn which numbers impact you most, such as your <strong>Life Path,
                                    Destiny, Soul Urge, </strong> and <strong>Expression numbers</strong>. Understand
                                how they influence who you are and your potential. </p>
                        </div>
                        <img src="images/core_number.png" alt="" class="img-responsive">
                    </div>

                    <div class="double_box bg_l_blue t_b">
                        <div class="db_inner">
                            <h4 class="heading">Your Life Path Number</h4>
                            <p class="pt-20"> This number reveals your primary purpose. It comes from your birth date.
                            </p>
                        </div>
                        <img src="images/life_path.png" alt="" class="img-responsive">
                    </div>

                    <div class="double_box bg_l_grey t_b">
                        <div class="db_inner">
                            <h4 class="heading">The Day You Were Born</h4>
                            <p class="pt-20"> See what your birthday shows about your true self, work, traits, and love
                                life. Gain insight into your inborn qualities. </p>
                        </div>
                        <img src="images/day.png" alt="" class="img-responsive">
                    </div>

                    <div class="double_box bg_l_gold t_b">
                        <div class="db_inner">
                            <h4 class="heading">The Magical Lo Shu Grid</h4>
                            <p class="pt-20"> A traditional number patternenergy in your life. Discover your personal
                                Chinese Lo Shu Grid. Also, find out how Western numerology interprets this Eastern idea.
                                Get predictions based on both Chinese and Western Lo Shu Grids. </p>
                        </div>
                        <img src="images/loshu_grid.png" alt="" class="img-responsive">
                    </div>

                    <div class="double_box bg_l_violet t_b">
                        <div class="db_inner">
                            <h4 class="heading">Analysis of Your Core Numbers</h4>
                            <p class="pt-20"> Explore the significance of your core numbers, like Life Path, Destiny,
                                Challenge, Personality, Expression, Soul Urge, Subconscious Self numbers. Grasp how they
                                interconnect in your life. </p>
                        </div>
                        <img src="images/numbers.png" alt="" class="img-responsive">
                    </div>

                    <div class="double_box bg_l_green t_b">
                        <div class="db_inner">
                            <h4 class="heading">Your Future Predictions</h4>
                            <p class="pt-20"> Your personal months and years ahead say a lot. Get detailed forecasts and
                                advice month-by-month for the coming months and years. </p>
                        </div>
                        <img src="images/forecast.png" alt="" class="img-responsive">
                    </div>

                    <div class="text-center pt-30">
                        <a href="#"
                            target="_blank" class="as_btn">Get Your Numerology Report Now</a>
                    </div>

                </div>
            </div>

        </div>
    </section>


    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <img src="images/Loshu_grid_story.png" alt="" class="img-fluid ">
                    <p class="pt-20"> In China around 4000 years ago, <strong>Emperor Wu</strong> found a tortoise shell
                        with strange markings on its back. The markings formed a <strong>3x3 grid</strong>, which was
                        later called <strong>the Lo Shu Magic Square</strong> or Grid. </p>
                    <p> In this grid, every row, column, and diagonal added up to 15. The number 5 was in the center,
                        which was seen as very important. </p>
                    <p> Wu and his followers were amazed by this discovery. They believed it helped Wu figure out how to
                        stop the flooding that happened every year. The people saw this as a sign that the problem was
                        solved. </p>
                    <p> Because of this, Wu was made the emperor of China. The discovery of the Lo Shu Grid also showed
                        how <strong>Chinese Numerology</strong> was related to other practices like <strong>Feng Shui
                            and Trigram Therapy</strong>. </p>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> Get Your Complete Numerology Report for Just <s>₹999</s> ₹399! </p>
                                <p> Your <strong>detailed Numerology report</strong> with personal insights is ready. It
                                    is 90+ pages long, with an in-depth analysis of <strong>core numbers, life path
                                        guidance, and predictions</strong> based on your birth numbers </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Let's move forward and take a look at your personal Loshu grid. Simply click on NEXT </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h2 class="heading"> Your Lo Shu Grid </h2>

                    <div class="grid_box">
                        <div class="gb_inner bg_l_blue">
                            <div class="shape_cross"></div>
                            <h1 class="gbi_h bg_d_blue"> 3 </h1>
                        </div>
                        <div class="gb_inner bg_l_brown">
                            <div class="shape_cross"></div>
                            <h1 class="gbi_h bg_d_brown"> 6 </h1>
                        </div>
                        <div class="gb_inner bg_l_green">
                            <h1 class="gbi_h bg_d_green"> 9 </h1>
                            <h1 class="gbi_h bg_d_green"> 9 </h1>
                        </div>
                        <div class="gb_inner bg_l_violet">
                            <h1 class="gbi_h bg_d_violet"> 2 </h1>
                        </div>
                        <div class="gb_inner bg_l_gold">
                            <div class="shape_cross"></div>
                            <h1 class="gbi_h bg_d_gold"> 5 </h1>
                        </div>
                        <div class="gb_inner bg_l_grey">
                            <h1 class="gbi_h bg_d_grey"> 8 </h1>
                        </div>
                        <div class="gb_inner bg_l_yellow">
                            <h1 class="gbi_h bg_d_yellow"> 1 </h1>
                        </div>
                        <div class="gb_inner bg_l_red">
                            <h1 class="gbi_h bg_d_red"> 4 </h1>
                        </div>
                        <div class="gb_inner bg_l_orange">
                            <h1 class="gbi_h bg_d_orange"> 7 </h1>
                        </div>
                    </div>

                    <h4 class="heading pt-40">Arrow of Strength</h4>
                    <div class="cdn_inner_top">
                        <div class="cdn_top"> Practicality </div>
                        <div class="cdn_top"> Activity </div>
                    </div>

                    <h4 class="heading pt-30">Arrow of Weakness</h4>
                    <div class="cdn_inner_top">
                        <div class="cdn_top"> None </div>
                    </div>

                    <h4 class="heading pt-30">Strong Plane</h4>
                    <div class="cdn_inner_top">
                        <div class="cdn_top"> Practical </div>
                        <div class="cdn_top"> Action </div>
                    </div>

                    <h4 class="heading pt-30">Missing Numbers</h4>
                    <div class="cdn_inner_top">
                        <div class="cdn_top"> Practical </div>
                        <div class="cdn_top"> Action </div>
                    </div>

                    <h4 class="heading pt-30">Missing Numbers</h4>
                    <div class="cdn_inner_top">
                        <div class="cdn_n"> 3 </div>
                        <div class="cdn_n"> 5 </div>
                        <div class="cdn_n"> 6 </div>
                    </div>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> That was just a quick overview of your <strong>life path number</strong>. If you
                                    want to learn more details, click the link below to get your <strong>full numerology
                                        report</strong>. </p>
                                <p> Get your report now for &nbsp; <s>₹999</s> &nbsp; ₹399 </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Next, find out what each box in the Loshu Grid means. </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h2 class="heading"> Significance of the Loshu Grid </h2>

                    <div class="loshu_boxes bg_l_blue">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_blue"> 3 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is missing in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Health, Planning, Imagination, Family, Wisdom, Past </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Hard Wood 🪵 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Health, Family </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Jupiter </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_red">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_red"> 6 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is missing in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Friends, Travelling, New beginnings, Spirituality, Father </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Hard Metal 🔩 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Friends </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Venus </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_green">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_green"> 9 </h3>
                            <h3 class="lb_sh bg_d_green"> 9 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is present in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Prosperity, Humanity, Social life, Fame, Reputation </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Fire 🔥 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Fame </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Mars </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_violet">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_violet"> 2 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is present in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Marriage, Love, Relationship, Sensitivity, Intuition, Mother </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Earth 🌎 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Marriage and Relation </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Moon </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_gold">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_gold"> 5 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is missing in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Balance, Stability, Fortune, Mental health, Freedom </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Earth 🌎 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Work Energy </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Mercury </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_grey">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_grey"> 8 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is present in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Knowledge, Motivation, Intuition, Organized, Spirituality, Study </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Earth 🌎 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Knowledge </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Saturn </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_orange">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_orange"> 1 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is present in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Career, Success, Job, Business, Communication, Individuality </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Water 💧 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Career </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Sun </p>
                        </div>
                    </div>

                    <div class="loshu_boxes bg_l_red">
                        <div class="lb_h">
                            <h3 class="lb_sh bg_d_red"> 7 </h3>
                            <h3 class="lb_sh bg_d_grey"> This number is present in your Lo Shu grid. </h3>
                        </div>
                        <p class="t_b pt-20"> Children, Creativity, Disappointments, Entertainment, Future </p>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Element </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Soft Metal 🔩 </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Merit </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Children </p>
                        </div>
                        <div class="lb_grid t_b">
                            <p class="bgg_s"> Planet </p>
                            <p class="bgg_s"> → </p>
                            <p class="bgg_s"> Ketu </p>
                        </div>
                    </div>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> That was just a quick overview of your <strong>life path number</strong>. If you
                                    want to learn more details, click the link below to get your <strong>full numerology
                                        report</strong>. </p>
                                <p> Get your report now for &nbsp; <s>₹999</s> &nbsp; ₹399 </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> Now, explore your strengths and weaknesses as revealed by your loshu grid. </p>
                    </div>
                </div>
            </div>

        </div>
    </section>


    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h2 class="heading"> Analysis of Loshu Grid </h2>

                    <div class="cdn_img_box">
                        Your Lo Shu Grid reveals the presence of Practicality, which is one of your Arrows of Strength.
                    </div>

                    <div class="box_img pt-40">
                        <img src="images/Practicality.png" alt="" class="img-fluid">
                        <div class="">
                            <p> The arrow of practicality is made up of the numbers 1,4, and 7 on the Practical Plane.
                                Not surprisingly, people with this arrow in their charts are capable with their hands. </p>
                            <p> They need to be busy, either physically or mentally. They dislike confined spaces and prefer being outdoors with plenty of room around them. </p>
                            <p> They have a tendency to be nervous and express themselves well with words on paper. </p>
                        </div>
                    </div>

                    <div class="cdn_img_box">
                        Your Lo Shu Grid reveals the presence of Activity, which is one of your Arrows of Strength.
                    </div>

                    <div class="box_img pt-40">
                        <img src="images/Activity.png" alt="" class="img-fluid">
                        <div class="">
                            <p> The arrow of activity comprises the numbers 7, 8, and 9. People with this arrow in their charts need to express themselves through action.</p>
                            <p> This may simply mean they work hard, but they can also express it as some form of
                                creativity. </p>
                            <p> These people are usually the "salt of the earth," being down to earth, capable, practical, and easy to get along with. This arrow usually relates to physical talents, but it can also be related to mental dexterity as well. </p>
                            <p> These people are prepared to work long and hard for anything that they believe in. </p>
                        </div>
                    </div>


                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> That was just a quick overview of your <strong>life path number</strong>. If you
                                    want to learn more details, click the link below to get your <strong>full numerology
                                        report</strong>. </p>
                                <p> Get your report now for &nbsp; <s>₹999</s> &nbsp; ₹399 </p>
                                <button class="cdn_btn"> Download Your Report Now </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> After discovering your insights, let's move forward to see how this month will be for you </p>
                    </div>
                </div>
            </div>

        </div>
    </section>


    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                   
                    <div class="flex_hl">
                        <h2 class="heading"> How's your May month? </h2>
                        <div class="cdn_numbers">
                            <div class="cdnn_inner">
                                <div class="cdn_main"> 5 </div>
                                <p class="pt-10">Personal Month Number</p>
                            </div>
                        </div>
                    </div>

                    <div class="as_service_box text-center">
                        <h3>Keywords for this month</h3>
                        <p> <strong>Adventure, Progress, Movement, Change</strong> </p>
                    </div>

                    <p class="pt-40">This is a month when it's good to step out of your comfort zone - to be adventurous and try new things. Be flexible and adaptable and prepare yourself for change. If there are changes you need to make in your life, now is the time to make them. This is a dynamic and fast-paced month so focus and prioritize your time, and don't have your finger in too many pies. Be social and promote yourself.</p>


                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_violet">
                            <div class="">
                                <p> <strong>Want to know more about your future?</strong> Get your full numerology report now. It has a lot more details about what's coming up in your life. We look at your <strong>personal month</strong> and <strong>year numbers</strong> to see what they say about your future. The full report gives you predictions and <strong>tips for each month and year ahead</strong>. </p>
                                <p> Get your report now for &nbsp; <s>₹999</s> &nbsp; ₹399 </p>
                                <button class="cdn_btn"> Get Your Personal Numerology Report Today </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <div class="cdn_img_box">
                        <img src="images/cicon.png" alt="" class="img-fluid">
                        <p> After discovering your insights, let's move forward to see how this month will be for you </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                   
                    <h2 class="heading"> Here is what we have prepared for you. </h2>

                    <p class="pt-40">Check Out These Personalized Reports For You</p>
                    <p>Our Principal Astrologer has prepared two unique reports specifically for you: <strong>The Personalized Numerology Report and The Premium Kundli Report.</strong> hese reports provide valuable, personalized guidance to help you navigate your future.</p>


                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_l_yellow">
                            <div class="">
                                <h4>Your Personalized Numerology Report</h4>
                                <p> Your personalised numerology report is here to show you important things about your life. We looked at the numbers in your birth date and name to find out your special strengths, problems, and things you need to learn. It's like a guide book for your life, helping you know yourself better and make good choices. </p>
                                <button class="cdn_btn"> Get this report for <s>₹999</s> ₹399 <br> (Save ₹600 - 60% OFF) </button>
                            </div>
                            <img src="images/numerology-report-book.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_l_blue">
                            <div class="">
                                <h4>Exclusive Best Combo Offer for You</h4>
                                <p> We've put together a special Best Combo Offer designed just for you. This offer includes both The <strong>Personalized Numerology Report</strong>, which provides insights into your unique numbers and their influence on your life, and <strong>The Premium Kundli Report</strong>, offering in-depth predictions and guidance for your future. </p>
                                <button class="cdn_btn bg_d_blue"> Get this report for <s>₹1500</s> ₹650 <br> (Save ₹850 - 57% OFF) </button>
                            </div>
                            <img src="images/Kundli.png" alt="" class="img-responsive">
                        </div>
                    </a>

                    <a href="#"
                        target="_blank">
                        <div class="cdn_package bg_l_red">
                            <div class="">
                                <h4>Exclusive Best Combo Offer for You</h4>
                                <p> We've put together a special Best Combo Offer designed just for you. This offer includes both The <strong>Personalized Numerology Report</strong>, which provides insights into your unique numbers and their influence on your life, and The <strong>Premium Kundli Report</strong>, offering in-depth predictions and guidance for your future. </p>
                                <button class="cdn_btn bg_d_red"> Get this report for <s>₹2499</s> ₹749 <br> (Save ₹1750 - 70% OFF) </button>
                            </div>
                            <img src="images/combo.png" alt="" class="img-responsive">
                        </div>
                    </a>

                </div>
            </div>

        </div>
    </section>
</asp:Content>

