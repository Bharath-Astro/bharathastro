<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="report-premium-gemstone-analysis.aspx.cs" Inherits="report_premium_gemstone_analysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_services_wrapper as_padderTop50 as_padderBottom80 bg_l_b">
        <div class="container">

            <div class="row pt-40">
                <div class="col-lg-10 offset-lg-1">

                    <div class="row pt-40">
                        <div class="col-md-8">
                            <h1 class="pt-30"> Find The Gemstone Your
                                Kundli Supports, <br> <span class="c_o"> Not Just Your Rashi </span> </h1>

                            <p class="pt-20">
                                Get gemstone suggestions based on your Lagna, current Dasha, and all 9 planets. Know
                                your right gemstone, the reason behind it, and the 4 stones you should avoid before
                                buying or wearing any gem.
                            </p>

                            <div class="pt-30">
                                <a href="#form" class="as_btn"> Get Your Free Gemstone Reading </a>
                            </div>
                            <p class="pt-40"> Free reading &nbsp; | &nbsp; No login needed &nbsp; | &nbsp; Based on full
                                birth chart </p>
                            <p class="pt-20"> Already wearing a gemstone? Check if your chart actually supports it. </p>
                        </div>
                        <div class="col-md-4">
                            <img src="../images/gemstone-main-image.jpg" alt="" class="img-fluid gs_img">
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">
            <div class="row">

                <div class="col-lg-10 offset-1">

                    <div class="row" id="form">
                        <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                            <div class="as_journal_box_wrapper mt-60">
                                <form>
                                    <h2 class="text-center"> Find The Gemstone Your
                                        Kundli Supports </h2>
                                    <div class="row pt-30">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <label>Enter Your Full Name </label>
                                            <div class="form-group">
                                                <input class="form-control" type="text"
                                                    placeholder="Enter Your Full Name ">
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
                                                <select class="form-control" name="day" autocomplete="off"
                                                    autocorrect="off" autocapitalize="none" spellcheck="false">
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
                                                <select class="form-control" name="month" autocomplete="off"
                                                    autocorrect="off" autocapitalize="none" spellcheck="false">
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
                                                <select class="form-control" name="year" autocomplete="off"
                                                    autocorrect="off" autocapitalize="none" spellcheck="false">
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
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <label>Birth Hour</label>
                                            <div class="form-group as_select_box">
                                                <select name="hour" class="form-control">
                                                    <option value="true">Birth Hour</option>
                                                    <option value="0">00 (12 midnight)</option>
                                                    <option value="1">01 (am)</option>
                                                    <option value="2">02 (am)</option>
                                                    <option value="3">03 (am)</option>
                                                    <option value="4">04 (am)</option>
                                                    <option value="5">05 (am)</option>
                                                    <option value="6">06 (am)</option>
                                                    <option value="7">07 (am)</option>
                                                    <option value="8">08 (am)</option>
                                                    <option value="9">09 (am)</option>
                                                    <option value="10">10 (am)</option>
                                                    <option value="11">11 (am)</option>
                                                    <option value="12">12 (noon)</option>
                                                    <option value="13">13 (1 pm)</option>
                                                    <option value="14">14 (2 pm)</option>
                                                    <option value="15">15 (3 pm)</option>
                                                    <option value="16">16 (4 pm)</option>
                                                    <option value="17">17 (5 pm)</option>
                                                    <option value="18">18 (6 pm)</option>
                                                    <option value="19">19 (7 pm)</option>
                                                    <option value="20">20 (8 pm)</option>
                                                    <option value="21">21 (9 pm)</option>
                                                    <option value="22">22 (10 pm)</option>
                                                    <option value="23">23 (11 pm)</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <label>Birth Minute</label>
                                            <div class="form-group as_select_box" data-placeholder="Birth Minute">
                                                <select class="form-control">
                                                    <option value="true">Birth Minute</option>
                                                    <option value="0">00</option>
                                                    <option value="1">01</option>
                                                    <option value="2">02</option>
                                                    <option value="3">03</option>
                                                    <option value="4">04</option>
                                                    <option value="5">05</option>
                                                    <option value="6">06</option>
                                                    <option value="7">07</option>
                                                    <option value="8">08</option>
                                                    <option value="9">09</option>
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
                                                    <option value="32">32</option>
                                                    <option value="33">33</option>
                                                    <option value="34">34</option>
                                                    <option value="35">35</option>
                                                    <option value="36">36</option>
                                                    <option value="37">37</option>
                                                    <option value="38">38</option>
                                                    <option value="39">39</option>
                                                    <option value="40">40</option>
                                                    <option value="41">41</option>
                                                    <option value="42">42</option>
                                                    <option value="43">43</option>
                                                    <option value="44">44</option>
                                                    <option value="45">45</option>
                                                    <option value="46">46</option>
                                                    <option value="47">47</option>
                                                    <option value="48">48</option>
                                                    <option value="49">49</option>
                                                    <option value="50">50</option>
                                                    <option value="51">51</option>
                                                    <option value="52">52</option>
                                                    <option value="53">53</option>
                                                    <option value="54">54</option>
                                                    <option value="55">55</option>
                                                    <option value="56">56</option>
                                                    <option value="57">57</option>
                                                    <option value="58">58</option>
                                                    <option value="59">59</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <label>Where were you born? </label>
                                            <div class="form-group">
                                                <input class="form-control" type="text"
                                                    placeholder="Telangana">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <label>Weight </label>
                                            <div class="form-group">
                                                <input class="form-control" type="number"
                                                    placeholder="68 kg's">
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center as_padderTop20">
                                            <a href="" class="as_btn"> Generate My Prescription → </a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>


    <section class="as_services_wrapper as_padderTop50 as_padderBottom80 bg_l_b">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-2">
                    <h1>Get the Correct Gemstone Suggestions, Not Just Based on Your Rashi</h1>
                    <p class="pt-20">Most online gemstone calculators give a gemstone based only on your Rashi.</p>
                    <p class="pt-10">
                        That is not enough. </p>

                    <div class="gem_box">
                        <p> Your Rashi is only one part of your birth chart. A correct gemstone suggestion should also
                            check your Lagna, house lords, planet strength, current Dasha, and the role of all 9
                            planets. </p>
                    </div>

                    <p class="pt-30">That is why gemstone suggestions by VedicRishii are based on your full birth chart,
                        not just your Moon sign.</p>
                    <p class="pt-10">You do not just get a gemstone name. You get the reason why it suits your chart.
                    </p>

                    <div class="pt-20">
                        <a href="#form" class="as_btn"> Get Your Free Gemstone Reading </a>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section class="as_services_wrapper as_padderTop50 as_padderBottom80 ">
        <div class="container">

            <div class="row pt-40">
                <div class="col-lg-10 offset-lg-1">

                    <div class="row">
                        <div class="col-md-4">
                            <div class="gem_stone_box">
                                <h3> Your right gemstone </h3>
                                <p class="pt-10"> Know the one gemstone your birth chart supports the most. </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="gem_stone_box">
                                <h3> Why does this gemstone suit you </h3>
                                <p class="pt-10"> See the chart for the reason behind the suggestion in simple words.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="gem_stone_box">
                                <h3> 4 gemstones to avoid </h3>
                                <p class="pt-10"> Some gemstones may strengthen planets that are not good for your
                                    chart. Your reading shows 4 stones you should avoid. </p>
                            </div>
                        </div>
                        <div class="col-md-4 offset-md-2">
                            <div class="gem_stone_box">
                                <h3> Your birth chart snapshot </h3>
                                <p class="pt-10"> See your Lagna, Rashi, Nakshatra, Lagna Lord, Nakshatra Lord,
                                    Mahadasha, and Antardasha. </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="gem_stone_box">
                                <h3> Rashi vs birth chart comparison </h3>
                                <p class="pt-10"> See the difference between a simple Rashi gemstone suggestion and your
                                    actual chart-based gemstone result. </p>
                            </div>
                        </div>
                    </div>

                    <div class="pt-40 text-center">
                        <a href="#form" class="as_btn"> Order Your Name Correction Report Now </a>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop80 as_padderBottom80 bg_l_b">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <h1 class="text-center"> Why Your Gemstone Should Not Be Chosen Only By Rashi </h1>
                    <p class="pt-20"> Many people are told: </p>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-2 offset-lg-1">
                    <div class="gems">
                        <img src="../images/ruby.png" alt="" class="img-fluid">
                        <p> Sun </p>
                        <h3> Ruby </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/pearl.png" alt="" class="img-fluid">
                        <p> Moon </p>
                        <h3> Pearl </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/coral.png" alt="" class="img-fluid">
                        <p> Mars </p>
                        <h3> Coral </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/emerald.png" alt="" class="img-fluid">
                        <p> Mercury </p>
                        <h3> Emerald </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/yellow-sapphire.png" alt="" class="img-fluid">
                        <p> Jupiter </p>
                        <h3> Yellow Sapphire </h3>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-2">
                    <div class="gems">
                        <img src="../images/diamond.png" alt="" class="img-fluid">
                        <p> Venus </p>
                        <h3> Diamond </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/blue-sapphire.png" alt="" class="img-fluid">
                        <p> Saturn </p>
                        <h3> Blue Sapphire </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/hessonite.png" alt="" class="img-fluid">
                        <p> Rahu </p>
                        <h3> Hessonite </h3>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="gems">
                        <img src="../images/cats-eye.png" alt="" class="img-fluid">
                        <p> Ketu </p>
                        <h3> Cat's Eye </h3>
                    </div>
                </div>
            </div>

            <div class="row pt-40">
                <div class="col-lg-12">
                    <h1 class="text-center">Should that planet be strengthened in your chart?</h1>
                </div>

                <div class="col-lg-5 offset-lg-1 pt-20">
                    <p> Every gemstone is linked to a planet. </p>
                    <p> Ruby strengthens Sun. Pearl strengthens Moon. Blue Sapphire strengthens Saturn. </p>
                    <p> But before wearing any stone, the important question is: is that planet good for your birth
                        chart? </p>
                    <p> If the planet supports your chart, its gemstone may help. </p>
                    <p> If the planet creates problems in your chart, wearing its gemstone may not be right for you.
                    </p>
                </div>
                <div class="col-md-5">
                    <div class="gem_box">
                        <p> This is why two people with the same Rashi can still need different gemstones. </p>
                        <p> Your <strong>Lagna, Dasha, and full birth chart</strong> decide the answer. </p>
                    </div>
                </div>

            </div>

        </div>
    </section>


    <section class="as_services_wrapper as_padderTop80 as_padderBottom80 ">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="gem_check">
                        <h1> Before You Buy a Gemstone, <br> <span class="c_o"> Check This First </span> </h1>
                        <div class="pt-10"></div>
                        <ul class="as_importance_list">
                            <li> A good gemstone can cost thousands of rupees. </li>
                            <li> Before you spend money on Neelam, Pukhraj, Ruby, Pearl, Emerald, Coral, Diamond,
                                Hessonite, or Cat's Eye first check if your chart supports it. </li>
                            <li> The wrong gemstone does not become right because it is costly. </li>
                            <li> The right gemstone should match your birth chart. </li>
                            <li> That is what this calculator helps you check. </li>
                        </ul>
                        <div class="pt-40">
                            <a href="#form" class="as_btn"> Get Your Free Gemstone Reading </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="as_services_wrapper as_padderTop80 as_padderBottom80 bg_l_b">
        <div class="container">

            <div class="row">
                <div class="col-lg-10 offset-lg-1">

                    <h1 class="heading"> How the Gemstone Suggestion Reading Actually Works </h1>
                    <p class="pt-20">A gemstone strengthens a planet. Whether that helps you or harms you depends on
                        whether that planet is benefic or malefic in your specific chart. The same Saturn that brings
                        career success to a Libra Lagna can wreck the health of an Aries Lagna. Same planet. Opposite
                        outcome. The same advice from a Rashi-based tool would harm one and help the other.
                        Vedicrishii's gemstone suggestion works through the Anukula method. It checks four things for
                        every planet:</p>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="gem_two">
                                <div class="gt_h"> 01 </div>
                                <div class="gt_text">
                                    <h3> Lordship </h3>
                                    <p> Which houses does this planet rule from your Lagna? Trikona houses (1, 5, 9) are
                                        auspicious. Maraka houses (2, 7) are dangerous. The same planet rules different
                                        houses for different Lagnas. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="gem_two">
                                <div class="gt_h"> 02 </div>
                                <div class="gt_text">
                                    <h3> Dignity </h3>
                                    <p> Is the planet exalted, debilitated, in its own sign, or in a friend or enemy
                                        sign? This decides how strong its effect will be.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="gem_two">
                                <div class="gt_h"> 03 </div>
                                <div class="gt_text">
                                    <h3> Aspects </h3>
                                    <p>Which other planets are looking at it? A benefic Saturn aspected by a malefic
                                        Mars behaves differently than one aspected by Jupiter.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="gem_two">
                                <div class="gt_h"> 04 </div>
                                <div class="gt_text">
                                    <h3> Dasha </h3>
                                    <p> Which planetary period are you running right now? A gem matters most when its
                                        planet is active in your timeline.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <p class="text-center pt-40"> This calculator runs all four checks across all 9 planets. 40+ factors
                        per chart. Every recommendation comes with the charted reason behind it. </p>

                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="gem_matters">
                        <div class="gm_svg">
                            <svg width="150" height="150" viewBox="0 0 100 100" class="svg-clock">
                                <circle cx="50" cy="50" r="45" fill="none" stroke="currentColor" stroke-width="2">
                                </circle>
                                <line x1="50" y1="50" x2="50" y2="25" stroke="currentColor" stroke-width="3"
                                    stroke-linecap="round" class="hand-hour"></line>
                                <line x1="50" y1="50" x2="70" y2="50" stroke="currentColor" stroke-width="2"
                                    stroke-linecap="round" class="hand-min"></line>
                                <circle cx="50" cy="50" r="3" fill="currentColor"></circle>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(0 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(30 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(60 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(90 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(120 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(150 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(180 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(210 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(240 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(270 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(300 50 50)"></line>
                                <line x1="50" y1="10" x2="50" y2="15" stroke="currentColor" stroke-width="1"
                                    transform="rotate(330 50 50)"></line>
                            </svg>
                        </div>
                        <div class="gm_text">
                            <h1> Why Lagna Matters The Most Gemstone Suggestion? </h1>
                            <p class="pt-10"> Your Rashi is your Moon sign. Your Lagna is your Ascendant. It changes
                                roughly every 2 hours. This is why your exact birth time matters. </p>
                            <p class="pt-10"> A person born at 8 AM and another person born at 11 AM on the same date
                                and in the same city may have different Lagnas. Their gemstone recommendation can also
                                be different. VedicRishii checks Lagna because gemstone advice should be personal to
                                your birth chart. </p>
                            <div class="pt-10">
                                <a href="#form" class="as_btn"> Get Your Free Gemstone Reading </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop80 as_padderBottom80 bg_l_b">
        <div class="container">

            <div class="row">
                <div class="col-lg-10 offset-lg-1">

                    <h1 class="heading"> Who Should Use This Find My Gemstone Calculator </h1>

                    <div class="row pt-40">
                        <div class="col-md-6">
                            <ul class="as_importance_list">
                                <li> You are planning to buy a gemstone </li>
                                <li> You were told different gemstones by different astrologers </li>
                                <li> You want gemstone suggestions by birth chart </li>
                                <li> You searched “which gemstone should I wear?” </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="as_importance_list">
                                <li> You are already wearing a gemstone </li>
                                <li> You want a gemstone recommendation by date of birth </li>
                                <li> You want to know which gemstone to avoid </li>
                                <li> You want a free gemstone reading before buying a gemstone </li>
                            </ul>
                        </div>
                    </div>

                    <div class="text-center pt-60">
                        <a href="#form" class="as_btn"> Get Your Free Gemstone Reading </a>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop80 as_padderBottom80 ">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12">

                    <h1 class="heading text-center"> Common questions about Vedic gemstones </h1>

                    <div class="as_faq_section pt-40">
                        <div class="accordion as_accordion" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingOne">
                                    <h2 class="mb-0">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                            aria-controls="panelsStayOpen-collapseOne">
                                            Which gemstone should I wear according to my date of birth?
                                        </button>
                                    </h2>
                                </div>

                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingOne">
                                    <div class="accordion-body">
                                        Date of birth alone is not enough. Your right gemstone needs your birth time and
                                        place too, because your Lagna depends on all three. This calculator uses all of
                                        them and shows your gem in 2 minutes.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingTwo">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                            Which gemstone is best for me based on my birth chart?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTwo">
                                    <div class="accordion-body">
                                        That is exactly what this calculator answers. It reads your Lagna, your current
                                        Dasha, your house lordships, and 40+ other factors to name the one stone most
                                        suited to your chart. Most users get an answer in 2 minutes.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingThree">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                            What is the difference between Lagna and Rashi for gemstones?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingThree">
                                    <div class="accordion-body">
                                        Rashi is your Moon sign and shifts every two and a half days. Lagna is your
                                        Ascendant and shifts every 2 hours. Lagna is far more personal and is the
                                        correct base for gemstone advice in classical Jyotish.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingFour">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
                                            How does a gemstone actually work?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingFour">
                                    <div class="accordion-body">
                                        In classical Jyotish, a gemstone is a transmitter for a planetary frequency.
                                        Each gem corresponds to a planet (Ruby for Sun, Pearl for Moon, Coral for Mars,
                                        Emerald for Mercury, Yellow Sapphire for Jupiter, Diamond for Venus, Blue
                                        Sapphire for Saturn, Hessonite for Rahu, Cat's Eye for Ketu). Wearing the gem
                                        strengthens that planet's influence in your life. Whether that helps or harms
                                        depends on whether the planet is benefic or malefic in your chart, which is what
                                        this calculator determines.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingFive">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
                                            Is wearing the wrong gemstone harmful?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingFive">
                                    <div class="accordion-body">
                                        According to Jyotish, yes. A gem strengthens a planet. If that planet is harmful
                                        in your chart, the gem amplifies the harm. The "gems to avoid" section in your
                                        free reading covers this for your specific chart.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingSix">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSix"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseSix">
                                            Is this gemstone calculator really free?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseSix" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingSix">
                                    <div class="accordion-body">
                                        Yes. Your full chart, your right gemstone, the gems to avoid, and your Dasha
                                        details are all free. There is a paid 9-gem master report at the end if you want
                                        every planet covered, but the main reading costs nothing.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingSeven">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseSeven"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseSeven">
                                            Is this a scientific gemstone recommendation?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseSeven" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingSeven">
                                    <div class="accordion-body">
                                        It is a chart-calculated recommendation, not an opinion. Every planet in your
                                        chart is scored on lordship, dignity, aspects, and Dasha activity. The output is
                                        fully traceable. You see the reasoning, not just the answer.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingEight">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseEight"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseEight">
                                            How is this different from a Rashi-based gemstone tool?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseEight" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingEight">
                                    <div class="accordion-body">
                                        Rashi-based tools use only your Moon sign, which crores of Indians share. This
                                        calculator uses your Lagna, your full chart, and your current Dasha. The Lagna
                                        alone changes the answer for most users.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingNine">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseNine"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseNine">
                                            Which finger and hand should I wear my gemstone on?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseNine" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingNine">
                                    <div class="accordion-body">
                                        This depends on the planet. Ruby and Pearl on the ring finger of the right hand.
                                        Yellow Sapphire on the index finger. Blue Sapphire on the middle finger. Your
                                        free reading covers this in the wearing instructions section, along with the day
                                        to start and the metal to set the stone in.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingTen">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTen"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseTen">
                                            What if I do not know my exact birth time?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseTen" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTen">
                                    <div class="accordion-body">
                                        Use the closest time you know. Even an approximate time gives a partial reading.
                                        For full accuracy, try your birth certificate or hospital record.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <section class="as_services_wrapper as_padderTop50 as_padderBottom80 bg_l_b">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="gem_btn">
                        <div class="gm_text">
                            <h1> Know Your Gemstone <br>
                                Before You Buy One! </h1>
                            <p class="pt-20"> Get gemstone suggestions by VedicRishii based on your full birth chart.
                                Know your right gemstone, the reason behind it, and 4 stones you should avoid. </p>
                            <div class="pt-10">
                                <a href="#form" class="as_btn"> Get Your Free Gemstone Reading </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

