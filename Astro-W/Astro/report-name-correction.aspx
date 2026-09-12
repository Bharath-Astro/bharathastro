<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="report-name-correction.aspx.cs" Inherits="report_name_correction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="as_whychoose_wrapper as_padderTop80 as_padderBottom50">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center"> Is Your Name Aligned With Your Date of Birth for Abundance? </h1>
                    <p class="pt-20 text-center"> Learn how small spelling changes can make a big difference </p>
                </div>
            </div>

            <div class="row" id="form">
                <div class="col-lg-8 col-md-8 offset-lg-2 offset-md-2">
                    <div class="as_journal_box_wrapper mt-60">
                        <form>
                            <h3 class="text-center as_subheading"> Fill in your details below to get your personalized
                                Name Correction Report </h3>
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
                                    <a href="" class="as_btn"> Correct Your Name Today! </a>
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

            <div class="row pt-40">
                <div class="col-lg-10 offset-lg-1">

                    <div class="row pt-40">
                        <div class="col-md-7">
                            <h3 class="pt-30"> What is in a Name? </h3>
                            <p class="pt-20"> Have you ever wondered how your name shapes your journey in life? Your
                                name is not just a label; it holds the key to your destiny. It reflects your energy,
                                potential, and how others perceive you. A name aligned with your birth details can help
                                unlock doors to success, enhance relationships, and bring greater harmony. </p>
                            <p class="pt-20"> Our Name Correction Report focuses on uncovering the power of your name
                                and aligning it with your date of birth to create an unshakable foundation for success
                            </p>
                            <div class="pt-30">
                                <a href="#form" class="as_btn"> Order Your Name Correction Report Now </a>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <img src="../images/name-correction.png" alt="" class="img-fluid">
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_services_wrapper as_padderTop50 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h1 class="heading pt-40 "> What is Name Correction Based on Numerology? </h1>
                    <p class="pt-10 "> Numerology reveals the hidden patterns in your name and date of birth. By
                        analyzing these, we discover whether they work together in harmony or if adjustments are needed.
                    </p>
                    <p class="pt-10"> Here's the best part: You don't need to legally change your name. Instead, we
                        recommend slight tweaks to how your name appears in key places, such as: </p>

                    <p> 📱 Social media profiles </p>
                    <p> 💳 Business cards </p>
                    <p> 📧 Email signatures </p>
                    <p> 📒 Personal branding materials </p>

                    <p class="pt-20"> These minor changes ensure the flow of positive energy, keeping the essence and
                        pronunciation of your name intact while amplifying its impact. </p>

                    <div class="pt-30 text-center">
                        <a href="#form" class="as_btn"> Order Your Name Correction Report Now </a>
                    </div>

                </div>
            </div>

        </div>
    </section>





    <section class="as_services_wrapper as_padderTop50 as_padderBottom80 bg_l_b">
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <h1 class="heading pt-40 "> How Does Name Correction Work? </h1>
                    <p class="pt-10 "> Your Name Correction Report is crafted by experienced numerologists who follow a detailed process: </p>

                    <p class="nc_p"> <span class="bg_orange">Birth Date Analysis</span> We calculate your core numbers, including your Driver and Conductor Numbers, to understand your natural strengths and challenges. </p>
                    <p class="nc_p"> <span class="bg_orange"> Name Evaluation </span> Your current name is checked for compatibility with your birth numbers. </p>
                    <p class="nc_p"> <span class="bg_orange"> Customized Adjustments </span> If misalignment is found, we suggest minor changes to harmonize your name and birth numbers while preserving the essence of your identity. </p>
                    <p class="nc_p"> <span class="bg_orange"> Guidance for Usage </span> We provide actionable steps on how to integrate the revised name into your daily life, such as in your email signature, online profiles, and professional branding. </p>

                    <p class="pt-20"> Most people start noticing the effects of these changes within 90 days, as the new name travels and strengthens its energetic presence. </p>

                    <h1 class="pt-20"> What's Included in the Name Correction Report? </h1>
                    <ul class="as_importance_list">
                        <li> In-depth analysis of your <strong>Driver Number</strong> and <strong>Conductor Number</strong> </li>
                        <li> Synchronicity assessment of your name and date of birth </li>
                        <li> Recommendations for name adjustments (if needed) </li>
                        <li> Step-by-step guide on where and how to use the revised name </li>
                        <li> Personalized insights to enhance opportunities and remove obstacles </li>
                    </ul>

                    <h1 class="pt-20"> Why Should You Get Your Name Correction Report? </h1>
                    <p class="nc_p"> <span class="bg_d_green"> Achieve Harmony </span>  Align your name with your date of birth for better energy flow and balance in life. </p>
                    <p class="nc_p"> <span class="bg_d_green"> Unlock Opportunities </span> Create new possibilities in career, relationships, and personal growth through effective alignment. </p>
                    <p class="nc_p"> <span class="bg_d_green"> Simple Yet Effective </span> Minor changes can have a significant impact on your life without involving any legal hassle. </p>
                    <p class="nc_p"> <span class="bg_d_green"> Trusted Guidance </span> Our expert numerologists offer personalized and actionable recommendations tailored to your unique needs. </p>
                    <p class="nc_p"> <span class="bg_d_green"> Quick Results </span> Experience the positive effects of these changes in as little as 90 days. </p>

                    <p class="pt-20 c_o text-center"> Your name is your most valuable asset—make it work for you. </p>

                    <div class="pt-20 text-center">
                        <a href="#form" class="as_btn"> Order Your Name Correction Report Now </a>
                    </div>

                </div>
            </div>

        </div>
    </section>

    <section class="as_about_wrapper as_padderTop80 as_padderBottom80">
        <div class="container">

            <div class="row">
                <div class="col-lg-12 col-md-12">

                    <h1 class="heading text-center"> Frequently Asked Questions </h1>

                    <div class="as_faq_section pt-40">
                        <div class="accordion as_accordion" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingOne">
                                    <h2 class="mb-0">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                            aria-controls="panelsStayOpen-collapseOne">
                                            Do I need to change my name legally?
                                        </button>
                                    </h2>
                                </div>

                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="panelsStayOpen-headingOne">
                                    <div class="accordion-body">
                                        No legal changes are required. Our recommendations focus on your professional and online presence.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingTwo">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                            Will my name sound different?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingTwo">
                                    <div class="accordion-body">
                                        Not at all! The changes are subtle and retain your name's original pronunciation.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingThree">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
                                            How soon will I see the results?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingThree">
                                    <div class="accordion-body">
                                        Most people notice a shift within 90 days, depending on how consistently the revised name is used.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingFour">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFour">
                                            Is this process reliable?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingFour">
                                    <div class="accordion-body">
                                        Numerology is an age-old science trusted for centuries. While results vary, many clients have experienced remarkable improvements.
                                    </div>
                                </div>
                            </div>

                            <div class="accordion-item">
                                <div class="accordion-header" id="panelsStayOpen-headingFive">
                                    <h2 class="mb-0">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFive"
                                            aria-expanded="false" aria-controls="panelsStayOpen-collapseFive">
                                            Who prepares the report?
                                        </button>
                                    </h2>
                                </div>
                                <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse"
                                    aria-labelledby="panelsStayOpen-headingFive">
                                    <div class="accordion-body">
                                        Our expert numerologists, with years of experience in name correction and numerology, ensure every report is accurate and personalized.
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        <h1> Exclusive Offer For Today! </h1>
                        <p> Don't miss this exclusive opportunity to bring harmony and success into your life at an unbeatable price! </p>

                        <h2 class="r_p pt_20 jc_center"> Original Price: <s>₹999</s></h2>
                        <h2 class="r_p pt_20 jc_center"> Offer Price: 399</h2>
                        <p class="pt-20">
                            Act now to avail this incredible discount and get your personalized Name Correction Report prepared by our expert numerologists. Start your journey toward a better future today!
                        </p>
                        <div class="pt-10">
                            <a href="#form" class="as_btn"> Order Your Name Correction Report Now </a>
                        </div>
                        <p class="pt-20 text-center"> Your name has the potential to unlock abundance—take the first step now. </p>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

