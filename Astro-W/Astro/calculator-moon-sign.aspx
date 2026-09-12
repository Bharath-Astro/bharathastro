<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="calculator-moon-sign.aspx.cs" Inherits="calculator_moon_sign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
        <div class="container">
            <div class="row as_verticle_center text-center">
                <div class="col-lg-12 col-md-12">

                    <h1 class="as_heading auto pt-30"> Want To Know What Is Your Moon Sign? </h1>
                    <h3 class="heading pt-20">Use The Best Moon Sign Calculator And Know Your Moon Sign In A Minute
                    </h3>
                </div>
            </div>

            <div class="row" id="form">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_journal_box_wrapper mt-60">
                        <div>
                            <h3 class="text-center as_subheading"> Free Moon Sign Calculator </h3>
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
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center as_padderTop20">
                                    <a href="" class="as_btn"> Calculate Your Moon Sign</a>
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
                    <h1 class="heading"> Here's What You'll Find Out Using This Free Moon Sign Calculator </h1>
                    <ul class="as_importance_list">
                        <li> Planetary Significance </li>
                        <li> House wise influence </li>
                        <li> Personality </li>
                        <li> Strengths and Weakness </li>
                    </ul>
                    <p> Your Moon Sign reveals the deepest secrets of your personality. </p>
                    <p> But That's not it… </p>
                    <div class="as_service_box">
                        <h1 class="subheading"> If you know your correct Moon Sign, you can also understand your
                            emotional side… </h1>
                        <p> Which otherwise is too confusing to recognize and even more complicated to explain. </p>
                        <p> Your moon sign helps you understand how you feel on the inside and how you express those
                            feelings. The moon's placement in your birth chart also tells you about your emotional
                            strengths and weaknesses. And along with that, it also helps you understand your emotional
                            needs. </p>
                    </div>

                    <h1 class="heading pt-30">Knowing your moon sign helps you accept your vulnerable side as it is…
                    </h1>
                    <ul class="as_importance_list">
                        <li> So, you can be kind to yourself... </li>
                        <li> And give yourself the love and care that you have been craving all the time. </li>
                        <li> Just by knowing your moon sign. </li>
                        <li> You can know about your natural talents, innate desires, and your unique love language.
                        </li>
                        <li> You can express your authentic self and shine like the brightest star in the sky. </li>
                        <li> And when you know your right moon sign, you can find the love in the world that is healthy…
                        </li>
                        <li> You can find love that uplifts you and makes you stronger. </li>
                    </ul>

                    <div class="as_service_box">
                        <h1 class="subheading"> Once you know your moon sign </h1>
                        <p> You don't have to remain in unfavorable situations </p>
                        <p> You no longer have to remain confused about your mindset, moods, and habits. </p>
                        <p> Knowing your moon sign is like having a key to a wild treasure chest that will fill your
                            life with infinite goodnes </p>
                        <p> Take this key today- </p>
                        <p> Use the best Moon Sign Calculator to know your Moon Sign </p>
                        <a href="#form" class="as_btn">Know Your Moon Sign Now</a>
                        <p class="pt-20"> But be careful… </p>
                        <p> You need to know your exact Moon Sign </p>
                        <p> Else, you will get the wrong key and your life will become a puzzle that you will never be
                            able to solve. </p>
                        <p> So, enter the right birth details </p>
                    </div>

                </div>
            </div>


        </div>
    </section>

    <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h1 class="heading"> And Use The Best Moon Sign Calculator There Is To Know Your Accurate Moon Sign…
                    </h1>

                    <div class="as_service_box text-center">
                        <h1 class="heading">Why Are You The Way You Are Will Finally Start To Make Sense </h1>
                        <div class="pt-30"></div>
                        <a href="#form" class="as_btn">Know Your Moon Sign Now</a>
                    </div>

                </div>
            </div>


        </div>
    </section>


    <section class="as_service_wrapper as_padderTop80 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <h2 class="heading"> Wondering What Is Moon Sign? </h2>
                    <p> Moon Sign indicates the zodiac sign in which the moon was located when you were born. It influences your emotional traits, habits, and instincts. It offers a glimpse into their deepest feelings and unconscious inclinations. </p>
                    <p> Along with this, your moon sign also provides insight into how you process emotions and what makes you feel secure and comfortable. </p>
                    <p> The moon sign plays a crucial role in vedic astrology and can be identified by considering a person's date, time, and location of birth. </p>
                </div>
                <div class="col-lg-6 col-md-6">
                    <img src="images/ms1.png" alt="" class="img-fluid img_center">
                </div>
            </div>

            <div class="row pt-30">
                <div class="col-lg-6 col-md-6">
                    <img src="images/ms2.png" alt="" class="img-fluid img_center">
                </div>
                <div class="col-lg-6 col-md-6">
                    <h2 class="heading"> How Is It Different From Sun Sign? </h2>
                    <p> Most people are familiar with the sun sign which is associated with their birthdays. It has an impact on your basic personality traits, sense of self, and how you interact with the world. </p>
                </div>
            </div>

        </div>
    </section>

    <section class="as_about_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">

                    <div class="as_service_box">
                        <h2 class="subheading"> Why Is Moon Sign Extremely Important In Vedic Astrology? </h2>
                        <p> In Vedic Astrology, the moon holds importance among all planets along with Lagna or
                            Ascendant. It represents your mind, feeling, and emotions. </p>
                        <p> It provides the mental and emotional strength needed to navigate any situation and helps to
                            establish balance in personal and social relationships. </p>
                        <p> According to vedic astrology, the moon is associated with water and represents body fluids.
                            From a positive place in your horoscope, the moon can offer you mental peace and happiness.
                            However, from a challenging place, it can give you depression, anxiety, and other mental
                            health problems. It also determines your relationship with your mother and her longevity.
                        </p>
                        <p> Hence, according to vedic astrology, it is very important to know your moon sign. </p>
                        <p> You can find out your correct moon sign with Our Moon Sign Calculator and have a clear
                            understanding of its influences on your emotions, personality, and overall life. </p>
                        <div class="text-center pt-20">
                            <a href="#form" class="as_btn">Know Your Moon Sign Now</a>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </section>
</asp:Content>

