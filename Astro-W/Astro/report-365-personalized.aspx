<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="report-365-personalized.aspx.cs" Inherits="report_365_personalized" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
        <div class="container">
            <div class="row as_verticle_center">
                <div class="col-lg-12 col-md-12">
                    <h1 class="heading text-center"> 365-Day Personalized Prediction Report </h1>
                    <h2 class="heading text-center pt-20"> Get predictions, advice, and remedies to plan your days
                        better and be prepared for what's coming in the <span class="c_o">next 365 days</span> </h2>
                    <p class="p_365 pt-30 text-center"> Our expert astrologers carefully study your birth chart and
                        identify the planetary positions for the next 365 days to give you a personalized forecast along
                        with effective remedies So know how your <span class="c_o">health</span>, <span
                            class="c_g">career</span>, <span class="c_r">relationships</span>, <span
                            class="c_b">finances</span>, and other areas of your life will evolve. </p>
                </div>
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_service_box">
                        <h2> See how the next 365 days could be the most important for you in your life </h2>
                        <p class="pt-20"> <strong>365-Day Prediction Report is Best for You if You Want to:</strong>
                        </p>
                        <ul class="as_importance_list">
                            <li> Improve your health, </li>
                            <li> Avoid conflicts in your relationships, </li>
                            <li> Be safe from financial setbacks, </li>
                            <li> Excel in learning, skill development </li>
                        </ul>
                        <p class="pt-20 c_o"> Make your next 365 days more positive, productive, and profitable</p>
                    </div>
                    <div class="pt-30 text-center">
                        <a href="#form" class="as_btn"> Order My 365-Day Report Now </a>
                    </div>
                    <p class="pt-20 text-center"> We deliver this report within 5-7 working days </p>
                </div>
            </div>

            <div class="row" id="form">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_journal_box_wrapper mt-60">
                        <form>
                            <h3 class="text-center as_subheading"> Your Premium Varshphal Report Only For
                                <s>₹999</s> <span class="c_o">₹499</span> </h3>
                            <p class="c_g text-center pt-10"> You save ₹600 (60%) </p>
                            <p class="text-center"> <span class="c_o">25899</span> People bought this report </p>
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
                                    <label>Select Your Birth Place </label>
                                    <div class="form-group as_select_box" data-placeholder="Country">
                                        <select class="form-control">
                                            <option value="Afghanistan">Afghanistan</option>
                                            <option value="Akrotiri">Akrotiri</option>
                                            <option value="Albania">Albania</option>
                                            <option value="Algeria">Algeria</option>
                                            <option value="American Samoa">American Samoa</option>
                                            <option value="Andorra">Andorra</option>
                                            <option value="Angola">Angola</option>
                                            <option value="Anguilla">Anguilla</option>
                                            <option value="Antigua And Barbuda">Antigua And Barbuda</option>
                                            <option value="Argentina">Argentina</option>
                                            <option value="Armenia">Armenia</option>
                                            <option value="Aruba">Aruba</option>
                                            <option value="Australia">Australia</option>
                                            <option value="Austria">Austria</option>
                                            <option value="Azerbaijan">Azerbaijan</option>
                                            <option value="Bahamas, The">Bahamas, The</option>
                                            <option value="Bahrain">Bahrain</option>
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option value="Barbados">Barbados</option>
                                            <option value="Belarus">Belarus</option>
                                            <option value="Belgium">Belgium</option>
                                            <option value="Belize">Belize</option>
                                            <option value="Benin">Benin</option>
                                            <option value="Bermuda">Bermuda</option>
                                            <option value="Bhutan">Bhutan</option>
                                            <option value="Bolivia">Bolivia</option>
                                            <option value="Bosnia And Herzegovina">Bosnia And Herzegovina</option>
                                            <option value="Botswana">Botswana</option>
                                            <option value="Brazil">Brazil</option>
                                            <option value="British Indian Ocean Territory">British Indian Ocean
                                                Territory</option>
                                            <option value="Brunei">Brunei</option>
                                            <option value="Bulgaria">Bulgaria</option>
                                            <option value="Burkina Faso">Burkina Faso</option>
                                            <option value="Burma">Burma</option>
                                            <option value="Burundi">Burundi</option>
                                            <option value="Cabo Verde">Cabo Verde</option>
                                            <option value="Cambodia">Cambodia</option>
                                            <option value="Cameroon">Cameroon</option>
                                            <option value="Canada">Canada</option>
                                            <option value="Cayman cyans">Cayman cyans</option>
                                            <option value="Central African Republic">Central African Republic
                                            </option>
                                            <option value="Chad">Chad</option>
                                            <option value="Chile">Chile</option>
                                            <option value="China">China</option>
                                            <option value="Christmas cyan">Christmas cyan</option>
                                            <option value="Cocos (Keeling) cyans">Cocos (Keeling) cyans</option>
                                            <option value="Colombia">Colombia</option>
                                            <option value="Comoros">Comoros</option>
                                            <option value="Congo (Brazzaville)">Congo (Brazzaville)</option>
                                            <option value="Congo (Kinshasa)">Congo (Kinshasa)</option>
                                            <option value="Cook cyans">Cook cyans</option>
                                            <option value="Costa Rica">Costa Rica</option>
                                            <option value="Croatia">Croatia</option>
                                            <option value="Cuba">Cuba</option>
                                            <option value="Curaçao">Curaçao</option>
                                            <option value="Cyprus">Cyprus</option>
                                            <option value="Czechia">Czechia</option>
                                            <option value="Côte D’Ivoire">Côte D’Ivoire</option>
                                            <option value="Denmark">Denmark</option>
                                            <option value="Dhekelia">Dhekelia</option>
                                            <option value="Djibouti">Djibouti</option>
                                            <option value="Dominica">Dominica</option>
                                            <option value="Dominican Republic">Dominican Republic</option>
                                            <option value="Ecuador">Ecuador</option>
                                            <option value="Egypt">Egypt</option>
                                            <option value="El Salvador">El Salvador</option>
                                            <option value="Equatorial Guinea">Equatorial Guinea</option>
                                            <option value="Eritrea">Eritrea</option>
                                            <option value="Estonia">Estonia</option>
                                            <option value="Ethiopia">Ethiopia</option>
                                            <option value="Falkland cyans (Islas Malvinas)">Falkland cyans (Islas
                                                Malvinas)</option>
                                            <option value="Faroe cyans">Faroe cyans</option>
                                            <option value="Fiji">Fiji</option>
                                            <option value="Finland">Finland</option>
                                            <option value="France">France</option>
                                            <option value="French Guiana">French Guiana</option>
                                            <option value="French Polynesia">French Polynesia</option>
                                            <option value="French Southern And Antarctic Lands">French Southern And
                                                Antarctic Lands</option>
                                            <option value="Gabon">Gabon</option>
                                            <option value="Gambia, The">Gambia, The</option>
                                            <option value="Gaza Strip">Gaza Strip</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Germany">Germany</option>
                                            <option value="Ghana">Ghana</option>
                                            <option value="Gibraltar">Gibraltar</option>
                                            <option value="Greece">Greece</option>
                                            <option value="Greenland">Greenland</option>
                                            <option value="Grenada">Grenada</option>
                                            <option value="Guadeloupe">Guadeloupe</option>
                                            <option value="Guam">Guam</option>
                                            <option value="Guatemala">Guatemala</option>
                                            <option value="Guernsey">Guernsey</option>
                                            <option value="Guinea">Guinea</option>
                                            <option value="Guinea-Bissau">Guinea-Bissau</option>
                                            <option value="Guyana">Guyana</option>
                                            <option value="Haiti">Haiti</option>
                                            <option value="Honduras">Honduras</option>
                                            <option value="Hong Kong">Hong Kong</option>
                                            <option value="Hungary">Hungary</option>
                                            <option value="Iceland">Iceland</option>
                                            <option value="India" selected="">India</option>
                                            <option value="Indonesia">Indonesia</option>
                                            <option value="Iran">Iran</option>
                                            <option value="Iraq">Iraq</option>
                                            <option value="Ireland">Ireland</option>
                                            <option value="Isle Of Man">Isle Of Man</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Italy">Italy</option>
                                            <option value="Jamaica">Jamaica</option>
                                            <option value="Japan">Japan</option>
                                            <option value="Jersey">Jersey</option>
                                            <option value="Jordan">Jordan</option>
                                            <option value="Kazakhstan">Kazakhstan</option>
                                            <option value="Kenya">Kenya</option>
                                            <option value="Kiribati">Kiribati</option>
                                            <option value="Korea, North">Korea, North</option>
                                            <option value="Korea, South">Korea, South</option>
                                            <option value="Kosovo">Kosovo</option>
                                            <option value="Kuwait">Kuwait</option>
                                            <option value="Kyrgyzstan">Kyrgyzstan</option>
                                            <option value="Laos">Laos</option>
                                            <option value="Latvia">Latvia</option>
                                            <option value="Lebanon">Lebanon</option>
                                            <option value="Lesotho">Lesotho</option>
                                            <option value="Liberia">Liberia</option>
                                            <option value="Libya">Libya</option>
                                            <option value="Liechtenstein">Liechtenstein</option>
                                            <option value="Lithuania">Lithuania</option>
                                            <option value="Luxembourg">Luxembourg</option>
                                            <option value="Macau">Macau</option>
                                            <option value="Macedonia">Macedonia</option>
                                            <option value="Madagascar">Madagascar</option>
                                            <option value="Malawi">Malawi</option>
                                            <option value="Malaysia">Malaysia</option>
                                            <option value="Maldives">Maldives</option>
                                            <option value="Mali">Mali</option>
                                            <option value="Malta">Malta</option>
                                            <option value="Marshall cyans">Marshall cyans</option>
                                            <option value="Martinique">Martinique</option>
                                            <option value="Mauritania">Mauritania</option>
                                            <option value="Mauritius">Mauritius</option>
                                            <option value="Mayotte">Mayotte</option>
                                            <option value="Mexico">Mexico</option>
                                            <option value="Micronesia, Federated States Of">Micronesia, Federated
                                                States Of</option>
                                            <option value="Moldova">Moldova</option>
                                            <option value="Monaco">Monaco</option>
                                            <option value="Mongolia">Mongolia</option>
                                            <option value="Montenegro">Montenegro</option>
                                            <option value="Montserrat">Montserrat</option>
                                            <option value="Morocco">Morocco</option>
                                            <option value="Mozambique">Mozambique</option>
                                            <option value="Namibia">Namibia</option>
                                            <option value="Nauru">Nauru</option>
                                            <option value="Nepal">Nepal</option>
                                            <option value="Netherlands">Netherlands</option>
                                            <option value="New Caledonia">New Caledonia</option>
                                            <option value="New Zealand">New Zealand</option>
                                            <option value="Nicaragua">Nicaragua</option>
                                            <option value="Niger">Niger</option>
                                            <option value="Nigeria">Nigeria</option>
                                            <option value="Niue">Niue</option>
                                            <option value="Norfolk cyan">Norfolk cyan</option>
                                            <option value="Northern Mariana cyans">Northern Mariana cyans</option>
                                            <option value="Norway">Norway</option>
                                            <option value="Oman">Oman</option>
                                            <option value="Pakistan">Pakistan</option>
                                            <option value="Palau">Palau</option>
                                            <option value="Panama">Panama</option>
                                            <option value="Papua New Guinea">Papua New Guinea</option>
                                            <option value="Paracel cyans">Paracel cyans</option>
                                            <option value="Paraguay">Paraguay</option>
                                            <option value="Peru">Peru</option>
                                            <option value="Philippines">Philippines</option>
                                            <option value="Pitcairn cyans">Pitcairn cyans</option>
                                            <option value="Poland">Poland</option>
                                            <option value="Portugal">Portugal</option>
                                            <option value="Puerto Rico">Puerto Rico</option>
                                            <option value="Qatar">Qatar</option>
                                            <option value="Reunion">Reunion</option>
                                            <option value="Romania">Romania</option>
                                            <option value="Russia">Russia</option>
                                            <option value="Rwanda">Rwanda</option>
                                            <option value="Saint Barthelemy">Saint Barthelemy</option>
                                            <option value="Saint Helena, Ascension, And Tristan Da Cunha">Saint
                                                Helena, Ascension, And Tristan Da Cunha</option>
                                            <option value="Saint Kitts And Nevis">Saint Kitts And Nevis</option>
                                            <option value="Saint Lucia">Saint Lucia</option>
                                            <option value="Saint Martin">Saint Martin</option>
                                            <option value="Saint Pierre And Miquelon">Saint Pierre And Miquelon
                                            </option>
                                            <option value="Saint Vincent And The Grenadines">Saint Vincent And The
                                                Grenadines</option>
                                            <option value="Samoa">Samoa</option>
                                            <option value="San Marino">San Marino</option>
                                            <option value="Sao Tome And Principe">Sao Tome And Principe</option>
                                            <option value="Saudi Arabia">Saudi Arabia</option>
                                            <option value="Senegal">Senegal</option>
                                            <option value="Serbia">Serbia</option>
                                            <option value="Seychelles">Seychelles</option>
                                            <option value="Sierra Leone">Sierra Leone</option>
                                            <option value="Singapore">Singapore</option>
                                            <option value="Sint Maarten">Sint Maarten</option>
                                            <option value="Slovakia">Slovakia</option>
                                            <option value="Slovenia">Slovenia</option>
                                            <option value="Solomon cyans">Solomon cyans</option>
                                            <option value="Somalia">Somalia</option>
                                            <option value="South Africa">South Africa</option>
                                            <option value="South Georgia And South Sandwich cyans">South Georgia And
                                                South Sandwich cyans</option>
                                            <option value="South Sudan">South Sudan</option>
                                            <option value="Spain">Spain</option>
                                            <option value="Spratly cyans">Spratly cyans</option>
                                            <option value="Sri Lanka">Sri Lanka</option>
                                            <option value="Sudan">Sudan</option>
                                            <option value="Suriname">Suriname</option>
                                            <option value="Svalbard">Svalbard</option>
                                            <option value="Swaziland">Swaziland</option>
                                            <option value="Sweden">Sweden</option>
                                            <option value="Switzerland">Switzerland</option>
                                            <option value="Syria">Syria</option>
                                            <option value="Taiwan">Taiwan</option>
                                            <option value="Tajikistan">Tajikistan</option>
                                            <option value="Tanzania">Tanzania</option>
                                            <option value="Thailand">Thailand</option>
                                            <option value="Timor-Leste">Timor-Leste</option>
                                            <option value="Togo">Togo</option>
                                            <option value="Tokelau">Tokelau</option>
                                            <option value="Tonga">Tonga</option>
                                            <option value="Trinidad And Tobago">Trinidad And Tobago</option>
                                            <option value="Tunisia">Tunisia</option>
                                            <option value="Turkey">Turkey</option>
                                            <option value="Turkmenistan">Turkmenistan</option>
                                            <option value="Turks And Caicos cyans">Turks And Caicos cyans</option>
                                            <option value="Tuvalu">Tuvalu</option>
                                            <option value="U.S. Virgin cyans">U.S. Virgin cyans</option>
                                            <option value="Uganda">Uganda</option>
                                            <option value="Ukraine">Ukraine</option>
                                            <option value="United Arab Emirates">United Arab Emirates</option>
                                            <option value="United Kingdom">United Kingdom</option>
                                            <option value="United States">United States</option>
                                            <option value="Uruguay">Uruguay</option>
                                            <option value="Uzbekistan">Uzbekistan</option>
                                            <option value="Vanuatu">Vanuatu</option>
                                            <option value="Venezuela">Venezuela</option>
                                            <option value="Vietnam">Vietnam</option>
                                            <option value="Virgin cyans, British">Virgin cyans, British</option>
                                            <option value="Wallis And Futuna">Wallis And Futuna</option>
                                            <option value="West Bank">West Bank</option>
                                            <option value="Western Sahara">Western Sahara</option>
                                            <option value="Yemen">Yemen</option>
                                            <option value="Zambia">Zambia</option>
                                            <option value="Zimbabwe">Zimbabwe</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>&nbsp;</label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Birth City / District ">
                                    </div>
                                </div>
                                <hr>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Enter Your Email</label>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Enter Your Email">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <label>Enter Your Mobile number</label>
                                    <div class="form-group cc_m">
                                        <div class="border-2 ccm_box "><select class="form-control country_code"
                                                autocomplete="off" autocorrect="off" autocapitalize="none"
                                                spellcheck="false">
                                                <option value="+1">🇨🇦 +1</option>
                                                <option value="+1">🇺🇸 +1</option>
                                                <option value="+7">🇰🇿 +7</option>
                                                <option value="+7">🇷🇺 +7</option>
                                                <option value="+20">🇪🇬 +20</option>
                                                <option value="+27">🇿🇦 +27</option>
                                                <option value="+30">🇬🇷 +30</option>
                                                <option value="+31">🇳🇱 +31</option>
                                                <option value="+32">🇧🇪 +32</option>
                                                <option value="+33">🇫🇷 +33</option>
                                                <option value="+34">🇪🇸 +34</option>
                                                <option value="+36">🇭🇺 +36</option>
                                                <option value="+39">🇮🇹 +39</option>
                                                <option value="+40">🇷🇴 +40</option>
                                                <option value="+41">🇨🇭 +41</option>
                                                <option value="+43">🇦🇹 +43</option>
                                                <option value="+44">🇬🇬 +44</option>
                                                <option value="+44">🇮🇲 +44</option>
                                                <option value="+44">🇯🇪 +44</option>
                                                <option value="+44">🇬🇧 +44</option>
                                                <option value="+45">🇩🇰 +45</option>
                                                <option value="+46">🇸🇪 +46</option>
                                                <option value="+47">🇧🇻 +47</option>
                                                <option value="+47">🇳🇴 +47</option>
                                                <option value="+47">🇸🇯 +47</option>
                                                <option value="+48">🇵🇱 +48</option>
                                                <option value="+49">🇩🇪 +49</option>
                                                <option value="+51">🇵🇪 +51</option>
                                                <option value="+52">🇲🇽 +52</option>
                                                <option value="+53">🇨🇺 +53</option>
                                                <option value="+54">🇦🇷 +54</option>
                                                <option value="+55">🇧🇷 +55</option>
                                                <option value="+56">🇨🇱 +56</option>
                                                <option value="+57">🇨🇴 +57</option>
                                                <option value="+58">🇻🇪 +58</option>
                                                <option value="+60">🇲🇾 +60</option>
                                                <option value="+61">🇦🇺 +61</option>
                                                <option value="+61">🇨🇽 +61</option>
                                                <option value="+61">🇨🇨 +61</option>
                                                <option value="+62">🇮🇩 +62</option>
                                                <option value="+63">🇵🇭 +63</option>
                                                <option value="+64">🇳🇿 +64</option>
                                                <option value="+64">🇵🇳 +64</option>
                                                <option value="+65">🇸🇬 +65</option>
                                                <option value="+66">🇹🇭 +66</option>
                                                <option value="+81">🇯🇵 +81</option>
                                                <option value="+82">🇰🇷 +82</option>
                                                <option value="+84">🇻🇳 +84</option>
                                                <option value="+86">🇨🇳 +86</option>
                                                <option value="+90">🇹🇷 +90</option>
                                                <option selected value="+91">🇮🇳 +91</option>
                                                <option value="+92">🇵🇰 +92</option>
                                                <option value="+93">🇦🇫 +93</option>
                                                <option value="+94">🇱🇰 +94</option>
                                                <option value="+95">🇲🇲 +95</option>
                                                <option value="+98">🇮🇷 +98</option>
                                                <option value="+211">🇸🇸 +211</option>
                                                <option value="+212">🇲🇦 +212</option>
                                                <option value="+213">🇩🇿 +213</option>
                                                <option value="+216">🇹🇳 +216</option>
                                                <option value="+218">🇱🇾 +218</option>
                                                <option value="+220">🇬🇲 +220</option>
                                                <option value="+221">🇸🇳 +221</option>
                                                <option value="+222">🇲🇷 +222</option>
                                                <option value="+223">🇲🇱 +223</option>
                                                <option value="+224">🇬🇳 +224</option>
                                                <option value="+225">🇨🇮 +225</option>
                                                <option value="+226">🇧🇫 +226</option>
                                                <option value="+227">🇳🇪 +227</option>
                                                <option value="+228">🇹🇬 +228</option>
                                                <option value="+229">🇧🇯 +229</option>
                                                <option value="+230">🇲🇺 +230</option>
                                                <option value="+231">🇱🇷 +231</option>
                                                <option value="+232">🇸🇱 +232</option>
                                                <option value="+233">🇬🇭 +233</option>
                                                <option value="+234">🇳🇬 +234</option>
                                                <option value="+235">🇹🇩 +235</option>
                                                <option value="+236">🇨🇫 +236</option>
                                                <option value="+237">🇨🇲 +237</option>
                                                <option value="+238">🇨🇻 +238</option>
                                                <option value="+239">🇸🇹 +239</option>
                                                <option value="+240">🇬🇶 +240</option>
                                                <option value="+241">🇬🇦 +241</option>
                                                <option value="+242">🇨🇬 +242</option>
                                                <option value="+243">🇨🇩 +243</option>
                                                <option value="+244">🇦🇴 +244</option>
                                                <option value="+245">🇬🇼 +245</option>
                                                <option value="+246">🇮🇴 +246</option>
                                                <option value="+248">🇸🇨 +248</option>
                                                <option value="+249">🇸🇩 +249</option>
                                                <option value="+250">🇷🇼 +250</option>
                                                <option value="+251">🇪🇹 +251</option>
                                                <option value="+252">🇸🇴 +252</option>
                                                <option value="+253">🇩🇯 +253</option>
                                                <option value="+254">🇰🇪 +254</option>
                                                <option value="+255">🇹🇿 +255</option>
                                                <option value="+256">🇺🇬 +256</option>
                                                <option value="+257">🇧🇮 +257</option>
                                                <option value="+258">🇲🇿 +258</option>
                                                <option value="+260">🇿🇲 +260</option>
                                                <option value="+261">🇲🇬 +261</option>
                                                <option value="+262">🇹🇫 +262</option>
                                                <option value="+262">🇾🇹 +262</option>
                                                <option value="+262">🇷🇪 +262</option>
                                                <option value="+263">🇿🇼 +263</option>
                                                <option value="+264">🇳🇦 +264</option>
                                                <option value="+265">🇲🇼 +265</option>
                                                <option value="+266">🇱🇸 +266</option>
                                                <option value="+267">🇧🇼 +267</option>
                                                <option value="+268">🇸🇿 +268</option>
                                                <option value="+269">🇰🇲 +269</option>
                                                <option value="+290">🇸🇭 +290</option>
                                                <option value="+291">🇪🇷 +291</option>
                                                <option value="+297">🇦🇼 +297</option>
                                                <option value="+298">🇫🇴 +298</option>
                                                <option value="+299">🇬🇱 +299</option>
                                                <option value="+345">🇰🇾 +345</option>
                                                <option value="+350">🇬🇮 +350</option>
                                                <option value="+351">🇵🇹 +351</option>
                                                <option value="+352">🇱🇺 +352</option>
                                                <option value="+353">🇮🇪 +353</option>
                                                <option value="+354">🇮🇸 +354</option>
                                                <option value="+355">🇦🇱 +355</option>
                                                <option value="+356">🇲🇹 +356</option>
                                                <option value="+357">🇨🇾 +357</option>
                                                <option value="+358">🇦🇽 +358</option>
                                                <option value="+358">🇫🇮 +358</option>
                                                <option value="+359">🇧🇬 +359</option>
                                                <option value="+370">🇱🇹 +370</option>
                                                <option value="+371">🇱🇻 +371</option>
                                                <option value="+372">🇪🇪 +372</option>
                                                <option value="+373">🇲🇩 +373</option>
                                                <option value="+374">🇦🇲 +374</option>
                                                <option value="+375">🇧🇾 +375</option>
                                                <option value="+376">🇦🇩 +376</option>
                                                <option value="+377">🇲🇨 +377</option>
                                                <option value="+378">🇸🇲 +378</option>
                                                <option value="+379">🇻🇦 +379</option>
                                                <option value="+380">🇺🇦 +380</option>
                                                <option value="+381">🇷🇸 +381</option>
                                                <option value="+382">🇲🇪 +382</option>
                                                <option value="+383">🇽🇰 +383</option>
                                                <option value="+385">🇭🇷 +385</option>
                                                <option value="+386">🇸🇮 +386</option>
                                                <option value="+387">🇧🇦 +387</option>
                                                <option value="+389">🇲🇰 +389</option>
                                                <option value="+420">🇨🇿 +420</option>
                                                <option value="+421">🇸🇰 +421</option>
                                                <option value="+423">🇱🇮 +423</option>
                                                <option value="+500">🇫🇰 +500</option>
                                                <option value="+500">🇬🇸 +500</option>
                                                <option value="+501">🇧🇿 +501</option>
                                                <option value="+502">🇬🇹 +502</option>
                                                <option value="+503">🇸🇻 +503</option>
                                                <option value="+504">🇭🇳 +504</option>
                                                <option value="+505">🇳🇮 +505</option>
                                                <option value="+506">🇨🇷 +506</option>
                                                <option value="+507">🇵🇦 +507</option>
                                                <option value="+508">🇵🇲 +508</option>
                                                <option value="+509">🇭🇹 +509</option>
                                                <option value="+590">🇬🇵 +590</option>
                                                <option value="+590">🇧🇱 +590</option>
                                                <option value="+590">🇲🇫 +590</option>
                                                <option value="+591">🇧🇴 +591</option>
                                                <option value="+592">🇬🇾 +592</option>
                                                <option value="+593">🇪🇨 +593</option>
                                                <option value="+594">🇬🇫 +594</option>
                                                <option value="+595">🇵🇾 +595</option>
                                                <option value="+596">🇲🇶 +596</option>
                                                <option value="+597">🇸🇷 +597</option>
                                                <option value="+598">🇺🇾 +598</option>
                                                <option value="+599"> +599</option>
                                                <option value="+670">🇹🇱 +670</option>
                                                <option value="+672">🇦🇶 +672</option>
                                                <option value="+672">🇭🇲 +672</option>
                                                <option value="+672">🇳🇫 +672</option>
                                                <option value="+673">🇧🇳 +673</option>
                                                <option value="+674">🇳🇷 +674</option>
                                                <option value="+675">🇵🇬 +675</option>
                                                <option value="+676">🇹🇴 +676</option>
                                                <option value="+677">🇸🇧 +677</option>
                                                <option value="+678">🇻🇺 +678</option>
                                                <option value="+679">🇫🇯 +679</option>
                                                <option value="+680">🇵🇼 +680</option>
                                                <option value="+681">🇼🇫 +681</option>
                                                <option value="+682">🇨🇰 +682</option>
                                                <option value="+683">🇳🇺 +683</option>
                                                <option value="+685">🇼🇸 +685</option>
                                                <option value="+686">🇰🇮 +686</option>
                                                <option value="+687">🇳🇨 +687</option>
                                                <option value="+688">🇹🇻 +688</option>
                                                <option value="+689">🇵🇫 +689</option>
                                                <option value="+690">🇹🇰 +690</option>
                                                <option value="+691">🇫🇲 +691</option>
                                                <option value="+692">🇲🇭 +692</option>
                                                <option value="+850">🇰🇵 +850</option>
                                                <option value="+852">🇭🇰 +852</option>
                                                <option value="+853">🇲🇴 +853</option>
                                                <option value="+855">🇰🇭 +855</option>
                                                <option value="+856">🇱🇦 +856</option>
                                                <option value="+880">🇧🇩 +880</option>
                                                <option value="+886">🇹🇼 +886</option>
                                                <option value="+960">🇲🇻 +960</option>
                                                <option value="+961">🇱🇧 +961</option>
                                                <option value="+962">🇯🇴 +962</option>
                                                <option value="+963">🇸🇾 +963</option>
                                                <option value="+964">🇮🇶 +964</option>
                                                <option value="+965">🇰🇼 +965</option>
                                                <option value="+966">🇸🇦 +966</option>
                                                <option value="+967">🇾🇪 +967</option>
                                                <option value="+968">🇴🇲 +968</option>
                                                <option value="+970">🇵🇸 +970</option>
                                                <option value="+971">🇦🇪 +971</option>
                                                <option value="+972">🇮🇱 +972</option>
                                                <option value="+973">🇧🇭 +973</option>
                                                <option value="+974">🇶🇦 +974</option>
                                                <option value="+975">🇧🇹 +975</option>
                                                <option value="+976">🇲🇳 +976</option>
                                                <option value="+977">🇳🇵 +977</option>
                                                <option value="+992">🇹🇯 +992</option>
                                                <option value="+993">🇹🇲 +993</option>
                                                <option value="+994">🇦🇿 +994</option>
                                                <option value="+995">🇬🇪 +995</option>
                                                <option value="+996">🇰🇬 +996</option>
                                                <option value="+998">🇺🇿 +998</option>
                                                <option value="+1242">🇧🇸 +1242</option>
                                                <option value="+1246">🇧🇧 +1246</option>
                                                <option value="+1264">🇦🇮 +1264</option>
                                                <option value="+1268">🇦🇬 +1268</option>
                                                <option value="+1284">🇻🇬 +1284</option>
                                                <option value="+1340">🇻🇮 +1340</option>
                                                <option value="+1441">🇧🇲 +1441</option>
                                                <option value="+1473">🇬🇩 +1473</option>
                                                <option value="+1649">🇹🇨 +1649</option>
                                                <option value="+1664">🇲🇸 +1664</option>
                                                <option value="+1670">🇲🇵 +1670</option>
                                                <option value="+1671">🇬🇺 +1671</option>
                                                <option value="+1684">🇦🇸 +1684</option>
                                                <option value="+1758">🇱🇨 +1758</option>
                                                <option value="+1767">🇩🇲 +1767</option>
                                                <option value="+1784">🇻🇨 +1784</option>
                                                <option value="+1849">🇩🇴 +1849</option>
                                                <option value="+1868">🇹🇹 +1868</option>
                                                <option value="+1869">🇰🇳 +1869</option>
                                                <option value="+1876">🇯🇲 +1876</option>
                                                <option value="+1939">🇵🇷 +1939</option>
                                            </select><input id="mobilenumber" class="form-control" minlength="8"
                                                maxlength="11" placeholder="Enter Your Mobile Number"
                                                autocomplete="new-password" autocorrect="off" autocapitalize="none"
                                                spellcheck="false" data-lpignore="true" type="text" value=""
                                                name="mobilenumber"></div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center as_padderTop20">
                                    <a href="" class="as_btn"> Review Your Details </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop50 as_padderBottom80 bg_l_b">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h1 class="heading pt-40 text-center"> This 365-Day Prediction Report Could Help You Turn Around
                        Your Life
                    </h1>
                    <p class="pt-10 text-center"> Find your Inner Power, Grab the best opportunities, Overcome
                        challenges, Illuminate Your Future and Shape Your Destiny </p>

                    <h3 class="pt-30"> Be clear about the planetary influences affecting your life by knowing the
                        Mahadasha, Antardasha, and Transits of the planets </h3>
                    <p class="pt-10">Understand your career advancement, relationship trends, health changes, financial
                        development, and personal growth. Align your actions based on the advice of Mahadasha and
                        Antardasha to grab the best opportunities and avoid as well as overcome challenges.</p>
                    <h3 class="pt-20"> Be prepared for the good times and bad </h3>
                    <p class="pt-10"> The 365-day prediction report will give you the gist of all the positive and
                        negative trends. So, You will be able to plan your activities, travels, and major moves in your
                        profession as well as relationships. </p>
                    <h3 class="pt-20"> How the entire 365 days will look in your book of life </h3>
                    <p class="pt-10"> When you have a bigger picture, you will be able to make the right decisions that
                        can change your life. </p>

                    <h2 class="text-center pt-30">Get ready for the most unique and transformative 365 days of your
                        life.</h2>
                    <p class="pt-20 text-center"> Get detailed insights into the astrological trends, transits, and
                        major life-turning events that will impact your love, relationships, marriages, finances, and
                        career in the next 365 days </p>

                    <div class="pt-30 text-center">
                        <a href="#form" class="as_btn"> Order My 365-Day Report Now </a>
                    </div>
                    <p class="pt-20 text-center"> We deliver this report within 5-7 working days </p>

                </div>
            </div>

        </div>
    </section>



    <section class="as_services_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row pt-40">
                <div class="col-lg-10 offset-lg-1">
                    <h1 class="heading text-center"> See what will you find in your Personalized 365-day Prediction
                        Report</h1>

                    <div class="row pt-40">
                        <div class="col-md-6">
                            <img src="MediaData/w1.png" alt="" class="img-fluid">
                        </div>
                        <div class="col-md-6">
                            <h3 class="pt-30"> See how you can improve your health in the next 365 days </h3>
                            <p class="pt-20"> The 365-day personalized horoscope report tells you how the planets are
                                going to play out in your kundli. And how these planetary positions will impact your
                                life in this time. Will the planets be good to you, or will they be challenging you? In
                                this 365-Day Prediction Report, you will know all about your health. </p>
                        </div>
                    </div>
                    <div class="row pt-40 row_reverse">
                        <div class="col-md-6">
                            <h3 class="pt-30"> Wondering how your career is going to chart off </h3>
                            <p class="pt-20"> What’s going to happen in the next 365 days for you in your career? Are
                                you getting your dream job? Are you being promoted in your office? Your 365-day
                                horoscope report by Vedic Rishi tells you everything. So, you be ready for the big
                                opportunity and figure out your plans for any challenges. </p>
                        </div>
                        <div class="col-md-6">
                            <img src="MediaData/w2.png" alt="" class="img-fluid">
                        </div>
                    </div>
                    <div class="row pt-40">
                        <div class="col-md-6">
                            <img src="MediaData/w3.png" alt="" class="img-fluid">
                        </div>
                        <div class="col-md-6">
                            <h3 class="pt-30"> Know important revelations about your relationships </h3>
                            <p class="pt-20"> In the 365-day personalized prediction report, you can know all about your
                                love story. It informs you about the good times and warns you about the bad. It also
                                tells you if or not there is any best time to get married in the next 365 days. Is your
                                romance budding or there is a conflict laying ahead in the next 365 days? Find out with
                                our 365-day personalized prediction report. </p>
                        </div>
                    </div>
                    <div class="row pt-40 row_reverse">
                        <div class="col-md-6">
                            <h3 class="pt-30"> Are the next 365 days Favorable for your Finances? </h3>
                            <p class="pt-20"> Our 365-day personalized horoscope reports help us identify if you will
                                have debts, loans, and payment delays, or will the money grow and flourish. So you can
                                plan your investment strategies and lifestyle properly. </p>
                        </div>
                        <div class="col-md-6">
                            <img src="MediaData/w4.png" alt="" class="img-fluid">
                        </div>
                    </div>
                    <div class="row pt-40">
                        <div class="col-md-6">
                            <img src="../images/education.png" alt="" class="img-fluid">
                        </div>
                        <div class="col-md-6">
                            <h3 class="pt-30"> In the Next 365 days, Will You Accomplish Your Educational Goals? </h3>
                            <p class="pt-20"> Find out with our 365-days-horoscope-predictions Horoscope Report as it
                                will give you complete information about your educational milestones and major trends
                                for entire 365 days from today. </p>
                        </div>
                    </div>
                    <div class="row pt-40 row_reverse">
                        <div class="col-md-6">
                            <h3 class="pt-30"> Gather all the information about your personal life </h3>
                            <p class="pt-20"> Our 365-day personalized horoscope report helps you track these movements
                                of the planet affecting your overall personal growth. So, can make the most of the
                                favorable times and stay grounded even in the hardest of retrogrades. </p>
                        </div>
                        <div class="col-md-6">
                            <img src="MediaData/w7.png" alt="" class="img-fluid">
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
                    <h1 class="heading pt-40 text-center"> Are you still wondering why should you get the <span
                            class="c_o">365-Day Personalized Horoscope Report</span> for? </h1>
                    <p class="pt-10 text-center"> We have not 1 but 5 reasons for you </p>

                    <div class="box_365">
                        <h3 class="h_365"> REASON #1 </h3>
                        <h3> Get personalized predictions and insights about the major themes and events of the next 365
                            days </h3>
                    </div>
                    <p class="pt-10"> This report is tailored specifically to you, based on your unique astrological
                        profile. This means, all the details in this 365-day prediction report are real and relevant to
                        you. </p>

                    <div class="box_365 pt-30">
                        <h3 class="h_365"> REASON #2 </h3>
                        <h3> Plan all your major moves for the next 365 days </h3>
                    </div>
                    <p class="pt-10"> With key predictions and guidance for the next year from now, this report will
                        help you make the most of the opportunities and challenges that await you. This way, you can
                        also make the most informed decisions. </p>

                    <div class="box_365 pt-30">
                        <h3 class="h_365"> REASON #3 </h3>
                        <h3> Improve your relationships </h3>
                    </div>
                    <p class="pt-10"> Whether you're single or in a relationship, your 365-day prediction report will
                        provide valuable insights and advice on how to improve and strengthen your connections with
                        others. </p>

                    <div class="box_365 pt-30">
                        <h3 class="h_365"> REASON #4 </h3>
                        <h3> Advance your career </h3>
                    </div>
                    <p class="pt-10"> Your 365-day horoscope report will provide valuable guidance. So, you will know
                        the best times to pursue new opportunities and make important decisions in your career. </p>

                    <div class="box_365 pt-30">
                        <h3 class="h_365"> REASON #5 </h3>
                        <h3> Get personalized remedies </h3>
                    </div>
                    <p class="pt-10"> In addition to predictions and valuable advice, your 365-day horoscope report will
                        also include personalized remedies to help you overcome any obstacles or challenges you may face
                        in the next 365 days. </p>

                    <p class="pt-30"> These remedies are based on ancient astrological principles and can be easily
                        implemented to improve your relationships, advance your career, and achieve your goals. </p>


                    <h1 class="pt-40"> Using this 365-day prediction Report you will… </h1>

                    <div class="highlight_boxes bg_d_red">
                        <h3> Know how important the next 365 days </h3>
                        <p> So, that you can Identify the key events of your life and be prepared to make the most of
                            them </p>
                    </div>
                    <div class="highlight_boxes bg_d_blue">
                        <h3> Make informed decisions to make every day better </h3>
                        <p> So, you present yourself to the best of your ability and make the most out of the situation
                            in front of you. </p>
                    </div>
                    <div class="highlight_boxes bg_d_violet">
                        <h3> Be able to make the better times best </h3>
                        <p> By implementing the suggestions in the report and boosting the benefits in the good times
                        </p>
                    </div>
                    <div class="highlight_boxes bg_d_grey">
                        <h3> Be able to get through the tougher times </h3>
                        <p> If you follow the steps and suggestions of our experts, you will remain grounded and get
                            through the rough rides in </p>
                    </div>
                    <div class="highlight_boxes bg_d_gold">
                        <h3> Be able to ward off the evil eye </h3>
                        <p> You can easily ward off the evil eye, unfavorable planet positionings, and inauspicious star
                            alignment. </p>
                    </div>

                    <div class="pt-30 text-center">
                        <a href="#form" class="as_btn"> Order My 365-Day Report Now </a>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12">

                    <h1 class="heading text-center"> Here's what some of our satisfied customers have to say about our
                        Personalized Horoscope Report </h1>

                    <div class="row">
                        <div class="col-lg-4 col-md-4">
                            <div class="as_service_box">
                                <p class="pt-20"> "I wasn't sure if astrology would really work for me, but the 365-day
                                    prediction report was spot-on! It told me about things I never expected and helped
                                    me prepare for what was coming. Now, I'm a believer! " </p>
                                <img src="../images/4.png" width="50" alt="" class="img-fluid">
                                <h3 class="pt-10"> Rajesh Sahu </h3>
                                <p> Product Manager </p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="as_service_box">
                                <p class="pt-20"> "The 365-day prediction report was like a friend guiding me through
                                    the year. It told me when to expect challenges and when to grab opportunities. It's
                                    been so helpful for planning my future. "</p>
                                <img src="../images/3.png" width="50" alt="" class="img-fluid">
                                <h3 class="pt-10"> Priya Raj </h3>
                                <p> Life coach </p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="as_service_box">
                                <p class="pt-20"> " The 365-day prediction report really helped me understand what's
                                    coming up in my life. It told me about important events like when I might get a job
                                    or have a big change in my relationships. It's like having a guidebook for myself."
                                </p>
                                <img src="../images/5.png" width="50" alt="" class="img-fluid">
                                <h3 class="pt-10"> Ankit Bedi </h3>
                                <p> Entrepreneur </p>
                            </div>
                        </div>
                    </div>

                    <h3 class="text-center  pt-40"> Our detailed 365-Day Prediction Report will create the same magic
                        for you </h3>
                    <div class="pt-30 text-center">
                        <a href="#form" class="as_btn"> Order My 365-Day Report Now </a>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="as_service_box text-center">
                        <h1> Make your Next 365 Days Most Remarkable For You </h1>
                        <p> Order Now </p>
                        <h4 class="pt-10"> We normally offer this Personalized Horoscope Report for ₹4,999 </h4>
                        <h4 class="pt-10"> But today you can get it for, </h4>
                        <h1 class="r_p pt_20 jc_center">₹2,499/-</h1>
                        <p class=""> <span class="rp_p">You Save</span> ₹2,500 </p>
                        <div class="pt-10">
                            <a href="#form" class="as_btn"> Order My 365-Day Report Now </a>
                        </div>
                        <p class="pt-20 text-center"> We deliver this report within 5-7 working days </p>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

