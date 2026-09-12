<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="calculator-pitra-dosha.aspx.cs" Inherits="calculator_pitra_dosha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
        <div class="container">
            <div class="row as_verticle_center text-center">
                <div class="col-lg-12 col-md-12">
                    <h1 class="as_heading auto">Get Your Pitra Dosha Analysis for Free </h1>
                    <p class="as_font14 as_margin0">Use This Free Pitra Dosh Calculator To Find Out If You Have Pitra
                        Dosh </p>
                </div>
            </div>

            <div class="row" id="form">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_journal_box_wrapper mt-60">
                        <div>
                            <h3 class="text-center as_subheading">Get Your Free Pitra Dosha Analysis </h3>
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
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <label> Select Your Birth Date</label>
                                    <div class="form-group">
                                        <input class="form-control" type="date" placeholder="Mobile Number">
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
                                    <a href="" class="as_btn">Get Your Free Pitru Dosha Analysis Now</a>
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
                    <h1 class="as_heading"> Are you seeing any of these pitra dosha symptoms lately? </h1>
                    <div class="as_padderTop30">
                        <ul class="as_importance_list">
                            <li> Is your marriage being delayed? </li>
                            <li> Are you losing interest in business, education, career, and family affairs despite being competent? </li>
                            <li> Are you and your family having health and hygiene-related issues at home? </li>
                            <li> Are you always surrounded by scarcity? </li>
                            <li> No matter what you do and how hard you work, do you never get rewarded for your efforts and hard work? </li>
                            <li> No matter what you do and how hard you work, do you never get rewarded for your efforts and hard work? </li>
                            <li> Are you facing a lot of progeny issues? </li>
                            <li> Are your children suffering from physical or mental illness? </li>
                            <li> Do you have a lot of problems in your marriage? </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_service_box text-center">
                        <h2 class="subheading">If you said yes to these questions, then you may be having pitra dosha in your birth chart</h2>
                        <a href="#form" class="as_btn">Know If You Have Pitra Dosha</a>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h1 class="heading text-center"> But What Is Pitra Dosha? </h1>
                    <p class="text-center"> Pitra dosha is a karmic debt of your ancestors </p>
                    <div class="as_padderTop30">
                        <p> Our ancestors have worked hard and have paved the path for us. So we can be where we are. Even in their absence, they take care of our happiness and peace. </p>
                        <p> That's the blessing of our </p>
                        <p> Pitra dosh , in that case, is the opposite of these blessings. </p>
                        <p> Our life, luck, and destiny life, luck, and destiny are intertwined with the legacy of our forefathers.And it is the fruit of their good deeds that we are blessed with safety, security, peace, and prosperity. </p>
                        <p> But at times, we even get tested for their bad karma. And that's one dark face of pitra dosha. </p>
                        <p> However, it is not always their fault. </p>
                        <p> Sometimes, we face the consequences of our bad karma At this time, pitra dosh is nothing but the anger and disappointment of our pitrus. </p>
                        <p> Pitra dosh can also affect you if you neglect your ancestors and do not provide them with their proper due in the form of shraddh, charity, or spiritual upliftments . </p>
                        <p> At times, pitru dosha appears in the horoscope as a result of our forefathers' souls not attaining Nirvana. It primarily occurs when our departed forefathers and predecessors did not find peace or salvation when their souls left this world. </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="service_box">
                        <h2 class="subheading">But There's One More Fact About Pitra Dosha That Might Surprise You</h2>
                        <p> Yes, that's true. </p>
                        <p> Contrary to what people and other astrologers say </p>
                        <p> Pitra dosh is not always a harbinger of doom </p>
                        <p> It's something you have never heard </p>
                        <p> But once you know about it, you will take a sigh of relief. </p>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <section class="as_service_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <h1 class="as_heading"> Pitra Dosha is not always harmful </h1>
                    <div class="as_padderTop30">
                        <p> You see not everyone's ancestor is the same… </p>
                        <p> Moreover, everyone's kundli is unique. </p>
                        <p> So the impact and potency of pitra dosha are different for everyone. </p>
                        <p> Now to know if you have pitra dosha and how it may affect you. </p>
                        <p> You first need to use this pitra dosha calculator and… </p>
                        <p> Pitra Dosha is a karmic debt of the ancestors and is reflected in the horoscope in the form of planetary combinations. </p>
                        <p> So, you can find out if you have pitra dosh or not by analyzing your kundali </p>
                        <p> See if you find any of these combinations </p>
                        <p> If the Sun and/or Jupiter are in the Kundli in conjugation or aspect of Rahu or Ketu, it gives some of the influence of Pitra dosh. </p>
                        <p> Sun and Rahu, or Sun and Saturn in the first, second, fourth, seventh, ninth, or tenth houses of the birth chart, you may have pitra dosh. </p>
                        <p> But you don't have to work as hard to understand planets and their positions in your birth chart. </p>
                        <p> You can simply use this pitra dosha calculator and get a free pitra dosha analysis. </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_service_box">
                        <h2 class="subheading">Thinking how to get the blessings of pitru?</h2>
                        <p> To get the blessing of your ancestors and get rid of your pitra dosha, these are some common remedies </p>
                        <ul class="as_importance_list">
                            <li> Do pitra dosh nivaran pooja </li>
                            <li> Feed brahmins on every amavashya </li>
                            <li> Do jal abhishek at banyan tree on every Saturday </li>
                        </ul>
                        <p> But different people have to perform different remedies to satisfy their ancestors And approach their pitra dosha differently </p>
                        <p> To find out if you have pitra dosha, its effects, and its unique set of remedies for you. </p>
                        <p> But different people have to perform different remedies to satisfy their ancestors And approach their pitra dosha differently </p>
                        <a href="#form" class="as_btn">Know If You Have Pitra Dosha</a>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

