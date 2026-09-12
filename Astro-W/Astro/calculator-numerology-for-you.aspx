<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="calculator-numerology-for-you.aspx.cs" Inherits="calculator_numerology_for_you" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
        <div class="container">
            <div class="row as_verticle_center text-center">
                <div class="col-lg-12 col-md-12">
                    <h1 class="as_heading auto">Unlock Your Lucky, Destiny and Friendly Numbers through Numerology </h1>
                </div>
            </div>

            <div class="row" id="form">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_journal_box_wrapper mt-60">
                        <div>
                            <h3 class="text-center as_subheading">Get Your Free Numerology Report Now </h3>
                            <div class="row pt-30">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <label>Enter Your Full Name </label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Enter Your Full Name ">
                                    </div>
                                </div>
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
                                    <a href="" class="as_btn">Get Your Free Numerology Report Now</a>
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
                <div class="col-lg-3 col-md-3 offset-lg-1 offset-md-1">
                    <img src="images/numerology.svg" alt="" class="img-fluid">
                </div>
                <div class="col-lg-1 col-md-1 offset-lg-1 offset-md-1">
                </div>
                <div class="col-lg-6 col-md-6">
                    <p> An ancient technique of deriving significance from various numbers, number combinations,
                        letters, and symbols in your life. This art can assist us in tapping into the underlying
                        patterns of the universe and revealing new truths about ourselves. Numerology explains the
                        significance of the numbers concealed in our birth name and birth date. Numerology numbers are
                        utilized to gain an understanding of a person's personality, strengths, vulnerabilities,
                        emotions, abilities, aspirations, opportunities, difficulties, inner needs, and habits.
                        Numerology reveals information about our lives, our fate, and how we interact with others. </p>
                    <div class="pt-20"></div>
                    <a href="#form" class="as_btn">Get Your Free Numerology Report Now</a>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="as_service_box text-center">
                        <h2 class="subheading"> What is Numerology? </h2>
                        <p> The word, “numerology,” is the science of numbers. The Numerology word comes from the Latin
                            root, “numerus,” which means number and the Greek word, “logos,” which refers word or
                            thought. These number-thoughts, or numerology is an ancient method of divination where
                            numerical vibrations are charted in order to determine or predict the pattern of trends for
                            the future. </p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="as_service_box text-center">
                        <h2 class="subheading"> Why Numerology? </h2>
                        <p> Once you learn how to use numerology successfully and implement it in your daily life you
                            will soon see how it can guide you on a path to personal fulfillment and enjoyment.
                            Numerology can be used to find a compatible partner, choose a career, determine your destiny
                            and allows for full advantage of lucky days, events and years. </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-7 col-md-7 ">
                    <h1 class="heading"> How does Numerology Work? </h1>
                    <div class="as_padderTop30">
                        <p> Your ruling number can be calculated by adding the numbers from your birth date. In other
                            words, your ruling number is the sum of your birthdays. Your numerology number serves as a
                            road map for your life. </p>
                        <p> Using the Numerology Calculator, you can obtain detailed information about your parents,
                            partner, children, health, career, and job. Numerology provides a mathematical formula that
                            directs your Karmic Pathway based on your date of birth and name. As you move forward in
                            your life, the day of your birth indicates your chosen mission. </p>
                        <p> A Free Numerology Report will tell you anything, from discovering facts about a person to
                            learning about the world. Without a doubt, it is regarded as a universal language of
                            numbers, and a Free Vedic Numerology Calculator can assist you in comprehending that
                            language. Vedic Rishi presents you with a complete numerology report of the Astro Numerology
                            Calculator based on Vedic Principles, which allows us to better understand ourselves as
                            individuals and the world. </p>
                        <a href="#form" class="as_btn">Get Your Free Numerology Report Now</a>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 ">
                    <img src="images/numerology1.png" alt="" class="img-fluid">
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-7 col-md-7">
                    <h1 class="as_heading"> Get Your Free Numerology Report </h1>
                    <div class="as_padderTop30">
                        <p> Using your numerology number and name, the Numerology Calculator can help you decode your
                            mystical numbers, secret powers, personality traits, and life obstacles. Numerology, or the
                            study of numbers, is based on your given name and date of birth. The total of your values,
                            which becomes your governing number, reveals a correlation of energies that exist in the
                            cosmic plan. So, use the program to find your secret skill and what numbers hold for your
                            future. </p>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5">
                    <div class="as_journal_box_wrapper">
                        <div>
                            <h3 class="text-center as_subheading">Get Your Free Numerology Report Now </h3>
                            <div class="row pt-30">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <label>Enter Your Full Name </label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Enter Your Full Name ">
                                    </div>
                                </div>
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
                                    <a href="" class="as_btn">Get Your Free Numerology Report Now</a>
                                </div>
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
                <div class="col-lg-12 col-md-12">

                    <h1 class="heading text-center"> FAQs about Numerology </h1>

                    <div class="as_faq_section pt-40">
                        <div class="accordion as_accordion" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingOne">
                                    <h2 class="mb-0">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                            aria-controls="panelsStayOpen-collapseOne">
                                            How to find numerology numbers?
                                        </button>
                                    </h2>
                                </div>

                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingOne">
                                    <div class="accordion-body">
                                        The most straightforward way to begin working with numerology is to examine your
                                        date of birth. Take the numerical value of your date of birth, add all the
                                        digits together by category (year, month, day), and keep adding each digit until
                                        you reach a single digit.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingTwo">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                            How does numerology work?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTwo">
                                    <div class="accordion-body">
                                        The purpose of numerology is to discover the root number. Subtract digits until
                                        you get to a single digit, excluding 11 and 22. This single digit represents
                                        your Life Path Number. In astrology, your Life Path Number is similar to your
                                        Sun Sign: it reveals your identity, including your strengths, weaknesses,
                                        talents, and ambitions.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingThree">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                            Which is the most powerful number in numerology?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingThree">
                                    <div class="accordion-body">
                                        According to numerology experts, the number 22 is the most powerful in
                                        numerology. Most numerologists believe that the master numbers 11, 22, and 33
                                        are the pinnacle of numerology power. The three are thought to have the best
                                        chance of success. Remember that all multi-digit numbers in numerology are
                                        always reduced to a single digit.
                                        <br> <br>
                                        If the numerology number obtained from a chart is 11, 22, or 33, you will not be
                                        able to reduce it to a single digit because the three are master numbers, also
                                        known as the triangle of enlightenment.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingFour">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
                                            What is an enemy number in numerology?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingFour">
                                    <div class="accordion-body">
                                        Numbers become hostile in numerology when they are in vibration with one another
                                        in certain combinations. Each number has a friendly number, an enemy number, and
                                        a neutral number. Avoid the enemy number because it is bad when it appears in a
                                        dangerous combination. Using our Numerology Calculator, determine which number
                                        is your enemy's number.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingFive">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
                                            How do I find friendly numbers?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingFive">
                                    <div class="accordion-body">
                                        Numerology can be used to determine compatibility in a relationship between two
                                        people who have different numbers. The friendly numbers are those where
                                        compatibility is strong and fruitful. You can use our Numerology Calculator to
                                        find out which number is friendly to yours.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingSix">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
                                            Is numerology really effective?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingSix">
                                    <div class="accordion-body">
                                        Numerology can be helpful if you apply it to your daily life and live by it.
                                        Numbers are all around you. It has the potential to lead to personal fulfillment
                                        and enjoyment. By making a specific change in your life, you can reap all the
                                        benefits. You can make wiser decisions and make more meaningful choices as a
                                        result.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingSeven">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseASeven"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseSeven">
                                            Can numerology predict the future?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingSeven">
                                    <div class="accordion-body">
                                        Numerology predicts what your future may hold. Numerologists use these nine
                                        digits (0-9), as well as the date, time, and other relevant circumstances, to
                                        forecast one's future events. You can expect to learn more about the paths
                                        available to you and your destiny to take specific paths.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingEight">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseEight">
                                            Which numerology is more accurate?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingEight">
                                    <div class="accordion-body">
                                        Each numerology system is unique, whether it's Pythagorean numerology or
                                        Chaldean numerology. Chaldean is popular due to its accuracy. The algorithms and
                                        personalities of Chaldean Numerology are distinct and one-of-a-kind. This system
                                        is based on the numbers 1 through 8.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingNine">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseNine"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseNine">
                                            Are there different types of numerology?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseNine" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingNine">
                                    <div class="accordion-body">
                                        <p> There are different types of Numerology systems that exist, and people follow, like: </p>
                                        <p> 1. Chaldean Numerology </p>
                                        <p> 2. Kabbalah Numerology </p>
                                        <p> 3. Tamil Numerology </p>
                                        <p> 4. Western/Pythagorean Numerology </p>
                                        <p> Each style of Numerology has its own method of reading numbers and reaching conclusions. Every Numerology method expresses very different, specific, and unique information, allowing people to learn more about themselves. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingTen">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTen"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseTen">
                                            What is a numerology reading?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseTen" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTen">
                                    <div class="accordion-body">
                                        A numerology reading occurs when a numerologist analyses your number chart and predicts numerous life-changing numbers. A numerology reading entails a lot of calculation. These calculations can go into several layers of detail, with individual numbers and number combinations holding different meanings.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingEleven">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEleven"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseEleven">
                                            What is a master number in numerology?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseEleven" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingEleven">
                                    <div class="accordion-body">
                                        According to numerology, the master numbers are 11, 22, and 33. These three numbers are known as the "Triangle of Enlightenment." These two-digit numbers are thought to be incredibly powerful. They can be extremely positive or overall negative.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>
</asp:Content>

