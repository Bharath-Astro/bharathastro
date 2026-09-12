<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="panchang-daily.aspx.cs" Inherits="panchang_daily" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
/* ========================================
   PANCHANG PAGE - Custom CSS
   ======================================== */

/* Header Bar */
.as_panchang_header {
    background: linear-gradient(135deg, var(--secondary-color), #e040a0);
    padding: 22px 0;
}
.as_panchang_header h1 {
    font-size: 28px;
    color: var(--white-color);
    margin: 0;
}

/* Form Bar */
.as_panchang_formbar {
    border-bottom: 1px solid rgb(255 255 255 / 10%);
    padding: 15px 0;
}
.as_panchang_formbar_inner {
    display: flex;
    align-items: flex-end;
    gap: 20px;
    flex-wrap: wrap;
}
.as_pf_group {
    display: flex;
    flex-direction: column;
    gap: 6px;
}
.as_pf_group label {
    font-size: 12px;
    color: #97b0c1;
    text-transform: capitalize;
}
.as_pf_group .form-control,
.as_pf_group select {
    height: 40px;
    padding: 0 15px;
    font-size: 14px;
    border: 1px solid rgb(255 255 255 / 15%);
    background-color: var(--dark-color2);
    color: var(--primary-color);
    border-radius: 6px;
}
.as_pf_group select {
    cursor: pointer;
}
.as_pf_group select option {
    background-color: var(--dark-color2);
    color: var(--primary-color);
}
.as_pf_city_wrap {
    flex: 1;
    min-width: 200px;
}
.as_pf_city_input {
    position: relative;
}
.as_pf_city_input .form-control {
    width: 100%;
    padding-right: 40px;
}
.as_pf_city_input .as_pf_city_icon {
    position: absolute;
    right: 12px;
    top: 50%;
    transform: translateY(-50%);
    color: #97b0c1;
}
.as_pf_city_input .as_pf_city_icon svg {
    width: 16px;
    height: 16px;
    fill: currentColor;
}

/* Desktop Nav Buttons */
.as_pf_nav_desktop {
    display: flex;
    border-radius: 6px;
    overflow: hidden;
    flex-shrink: 0;
}
.as_pf_nav_desktop a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0 24px;
    height: 40px;
    background-color: var(--secondary-color);
    color: var(--white-color);
    font-size: 14px;
    font-weight: 600;
    text-transform: capitalize;
    transition: all 0.2s linear;
}
.as_pf_nav_desktop a:first-child {
    border-right: 1px solid rgb(255 255 255 / 20%);
}
.as_pf_nav_desktop a:hover {
    background-color: #e040a0;
}

/* Mobile Date Nav */
.as_pf_nav_mobile {
    display: none;
    border-radius: 6px;
    overflow: hidden;
    width: 100%;
}
.as_pf_nav_mobile a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    height: 40px;
    background-color: var(--secondary-color);
    color: var(--white-color);
    font-size: 13px;
    font-weight: 600;
    transition: all 0.2s linear;
    text-decoration: none;
}
.as_pf_nav_mobile a:nth-child(1) {
    width: 33.33%;
    border-radius: 6px 0 0 6px;
    background-color: #c45e10;
}
.as_pf_nav_mobile a:nth-child(2) {
    width: 33.33%;
}
.as_pf_nav_mobile a:nth-child(3) {
    width: 33.34%;
    border-radius: 0 6px 6px 0;
    background-color: #c45e10;
}
.as_pf_nav_mobile a:hover {
    background-color: #e040a0;
}

/* Mobile City Button */
.as_pf_city_mobile_btn {
    display: none;
    width: 100%;
    padding: 10px 15px;
    background-color: var(--dark-color2);
    border: 1px solid rgb(255 255 255 / 15%);
    border-radius: 6px;
    color: var(--primary-color);
    font-size: 14px;
    text-align: left;
    cursor: pointer;
}

/* 3-Column Grid */
.as_panchang_3col {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 20px;
    align-items: start;
}

/* Date Card */
.as_panchang_datecard {
    border-radius: 10px;
    overflow: hidden;
    border: 1px solid rgb(255 255 255 / 10%);
}
.as_panchang_datecard_header {
    background-color: var(--secondary-color);
    padding: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.as_panchang_datecard_header h2 {
    font-size: 20px;
    color: var(--white-color);
    margin: 0 0 4px;
    line-height: 1.4;
}
.as_panchang_datecard_header p {
    font-size: 13px;
    color: rgba(255, 255, 255, 0.85);
    margin: 0;
}
.as_panchang_datecard_header h3 {
    font-size: 18px;
    color: var(--white-color);
    margin: 2px 0 0;
}
.as_panchang_datecard_header img {
    width: 60px;
    height: 60px;
    flex-shrink: 0;
}
.as_panchang_datecard_body {
    border: 1px solid rgb(255 255 255 / 10%);
    border-top: none;
    border-radius: 0 0 10px 10px;
    overflow: hidden;
}

/* Table Cells */
.as_panchang_4col {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    border-bottom: 1px solid rgb(255 255 255 / 10%);
}
.as_panchang_2col {
    display: grid;
    grid-template-columns: 1fr 1fr;
    border-bottom: 1px solid rgb(255 255 255 / 10%);
}
.as_panchang_2col:last-child {
    border-bottom: none;
}
.as_pc_cell {
    padding: 14px 15px;
    text-align: center;
}
.as_pc_cell h4 {
    font-size: 12px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    color: #97b0c1;
    margin: 0 0 4px;
    font-weight: 400;
}
.as_pc_cell p {
    font-size: 15px;
    color: var(--white-color);
    margin: 0;
    font-family: 'Philosopher', sans-serif;
    font-weight: 600;
}
.as_pc_cell:not(:last-child) {
    border-right: 1px solid rgb(255 255 255 / 10%);
}
.as_panchang_2col .as_pc_cell:not(:last-child) {
    border-right: 1px solid rgb(255 255 255 / 10%);
}

/* Panchang Elements Table */
.as_panchang_elem_table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid rgb(255 255 255 / 10%);
    border-radius: 0 0 10px 10px;
    overflow: hidden;
}
.as_panchang_elem_table td {
    padding: 16px 18px;
    border-bottom: 1px solid rgb(255 255 255 / 10%);
    border-right: 1px solid rgb(255 255 255 / 10%);
    vertical-align: top;
}
.as_panchang_elem_table td:last-child {
    border-right: none;
}
.as_panchang_elem_table tr:last-child td {
    border-bottom: none;
}
.as_panchang_elem_table td:first-child {
    width: 35%;
}
.as_panchang_elem_table td h4 {
    font-size: 14px;
    color: #97b0c1;
    margin: 0;
    text-transform: uppercase;
    letter-spacing: 0.3px;
    font-weight: 400;
}
.as_panchang_elem_table td:last-child h4 {
    color: var(--white-color);
    font-weight: 600;
    text-transform: none;
    letter-spacing: 0;
}

/* Section Headers */
.as_panchang_section_head {
    padding: 16px 20px;
    text-align: center;
    font-size: 20px;
    font-weight: 600;
    border: 1px solid rgb(255 255 255 / 10%);
    border-bottom: none;
    border-radius: 10px 10px 0 0;
    background-color: var(--dark-color2);
    color: var(--primary-color);
}
.as_panchang_section_body {
    border: 1px solid rgb(255 255 255 / 10%);
    border-top: none;
    border-radius: 0 0 10px 10px;
    overflow: hidden;
}

/* Festival Bar */
.as_panchang_festival_bar {
    border: 1px solid var(--secondary-color);
    border-radius: 10px;
    overflow: hidden;
    display: flex;
    align-items: stretch;
}
.as_panchang_festival_bar h3 {
    background-color: var(--secondary-color);
    padding: 14px 20px;
    font-size: 16px;
    color: var(--white-color);
    margin: 0;
    white-space: nowrap;
    display: flex;
    align-items: center;
}
.as_panchang_festival_bar .as_pfb_content {
    padding: 14px 20px;
    display: flex;
    align-items: center;
    flex: 1;
    background-color: var(--dark-color2);
}
.as_panchang_festival_bar .as_pfb_content span {
    font-size: 16px;
    color: var(--white-color);
    font-weight: 500;
}

/* 2-Column Timing Section */
.as_panchang_timing_2col {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 20px;
    align-items: start;
}

/* Inauspicious */
.as_panchang_inauspicious .as_panchang_section_head {
    background-color: #2a1015;
    color: #ff6b6b;
    border-color: #4a1a1a;
}
.as_panchang_inauspicious .as_panchang_section_body {
    border-color: #4a1a1a;
}
.as_panchang_inauspicious_3col {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    border-bottom: 1px solid rgb(255 255 255 / 10%);
}
.as_panchang_inauspicious_2col {
    display: grid;
    grid-template-columns: 1fr 1fr;
}
.as_panchang_inauspicious_3col .as_pc_cell:not(:last-child),
.as_panchang_inauspicious_2col .as_pc_cell:not(:last-child) {
    border-right: 1px solid rgb(255 255 255 / 10%);
}

/* Auspicious */
.as_panchang_auspicious .as_panchang_section_head {
    background-color: #0f2918;
    color: #22c55e;
    border-color: #1a3a2a;
}
.as_panchang_auspicious .as_panchang_section_body {
    border-color: #1a3a2a;
}

/* Other Yoga Section */
.as_panchang_other_yoga {
    border: 1px solid rgb(255 255 255 / 10%);
    border-radius: 10px;
    overflow: hidden;
}
.as_panchang_other_yoga_body .as_panchang_2col_yoga {
    display: grid;
    grid-template-columns: 5fr 7fr;
    border-bottom: 1px solid rgb(255 255 255 / 10%);
}
.as_panchang_other_yoga_body .as_panchang_2col_yoga .as_pc_cell:first-child {
    text-align: right;
}

/* Shool sub-header */
.as_panchang_shool_head {
    padding: 12px 20px;
    text-align: center;
    font-size: 16px;
    border-bottom: 1px solid rgb(255 255 255 / 10%);
    color: var(--primary-color);
}

/* Bottom Cards */
.as_panchang_bottom_cards {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 25px;
}
.as_panchang_bottom_card {
    border-radius: 10px;
    text-align: center;
    padding: 45px 20px;
    background: linear-gradient(135deg, var(--secondary-color), #e040a0);
    transition: all 0.3s linear;
    display: block;
    text-decoration: none !important;
    cursor: pointer;
    transform: translateY(0);
}
.as_panchang_bottom_card1 {
    border-radius: 10px;
    text-align: center;
    padding: 45px 20px;
    background: linear-gradient(135deg, var(--secondary-color), #e040a0);
    transition: all 0.3s linear;
    display: block;
    text-decoration: none !important;
    cursor: pointer;
    transform: translateY(0);
}
.as_panchang_bottom_card:hover {
    background: linear-gradient(135deg, #e040a0, var(--secondary-color));
    transform: translateY(-8px);
    box-shadow: 0 20px 40px rgb(255 112 16 / 20%);
}
.as_panchang_bottom_card h2 {
    font-size: 22px;
    color: var(--white-color);
    margin: 0;
    text-transform: capitalize;
    line-height: 1.4;
}

/* Responsive */
@media (max-width:1199px) {
    .as_panchang_3col {
        grid-template-columns: 1fr 1fr;
    }
    .as_panchang_3col > :nth-child(3) {
        grid-column: 1 / -1;
    }
}
@media (max-width:991px) {
    .as_panchang_3col {
        grid-template-columns: 1fr;
    }
    .as_panchang_timing_2col {
        grid-template-columns: 1fr;
    }
    .as_panchang_inauspicious_3col {
        grid-template-columns: 1fr;
    }
    .as_panchang_inauspicious_3col .as_pc_cell:not(:last-child) {
        border-right: none;
        border-bottom: 1px solid rgb(255 255 255 / 10%);
    }
    .as_panchang_inauspicious_2col {
        grid-template-columns: 1fr;
    }
    .as_panchang_inauspicious_2col .as_pc_cell:not(:last-child) {
        border-right: none;
        border-bottom: 1px solid rgb(255 255 255 / 10%);
    }
    .as_panchang_festival_bar {
        flex-direction: column;
    }
    .as_panchang_festival_bar h3 {
        white-space: normal;
    }
    .as_panchang_other_yoga_body .as_panchang_2col_yoga {
        grid-template-columns: 1fr;
    }
    .as_panchang_other_yoga_body .as_panchang_2col_yoga .as_pc_cell:first-child {
        text-align: center;
    }
}
@media (max-width:767px) {
    .as_panchang_header h1 {
        font-size: 20px;
    }
    .as_pf_nav_desktop {
        display: none !important;
    }
    .as_pf_nav_mobile {
        display: flex !important;
    }
    .as_pf_city_wrap {
        display: none !important;
    }
    .as_pf_city_mobile_btn {
        display: block !important;
    }
    .as_pf_group label {
        display: none;
    }
    .as_panchang_formbar_inner {
        gap: 10px;
    }
    .as_panchang_4col {
        grid-template-columns: 1fr 1fr;
    }
    .as_panchang_4col .as_pc_cell:nth-child(2) {
        border-right: none;
    }
    .as_panchang_4col .as_pc_cell:nth-child(1),
    .as_panchang_4col .as_pc_cell:nth-child(2) {
        border-bottom: 1px solid rgb(255 255 255 / 10%);
    }
    .as_panchang_bottom_cards {
        grid-template-columns: 1fr;
        gap: 15px;
    }
    .as_panchang_bottom_card {
        padding: 30px 20px;
    }
    .as_panchang_bottom_card h2 {
        font-size: 18px;
    }
    .as_panchang_datecard_header {
        padding: 15px;
    }
    .as_panchang_datecard_header h2 {
        font-size: 17px;
    }
    .as_panchang_datecard_header img {
        width: 50px;
        height: 50px;
    }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- ========================================
     HEADER BAR
     ======================================== -->
<div class="as_panchang_header">
    <div class="container">
        <h1>Panchang For Tuesday, 5 May 2026</h1>
    </div>
</div>

<!-- ========================================
     FORM BAR
     ======================================== -->
<div class="as_panchang_formbar">
    <div class="container">
        <div class="as_panchang_formbar_inner">

            <!-- Date -->
            <div class="as_pf_group">
                <label>Select Date</label>
                <div class="as_pf_city_input">
                    <input type="text" class="form-control" value="May 5, 2026" readonly>
                    <span class="as_pf_city_icon">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                    </span>
                </div>
            </div>

            <!-- Country (Desktop) -->
            <div class="as_pf_group as_pf_city_wrap" style="min-width: 180px;">
                <label>Select Panchang Place</label>
                <div style="display: flex; gap: 10px; flex-wrap: wrap;">
                    <select class="form-control" style="flex: 2; min-width: 160px;" id="ddlCountry">
                        <option value="AF">Afghanistan</option>
                        <option value="AL">Albania</option>
                        <option value="DZ">Algeria</option>
                        <option value="AR">Argentina</option>
                        <option value="AU">Australia</option>
                        <option value="BD">Bangladesh</option>
                        <option value="BR">Brazil</option>
                        <option value="CA">Canada</option>
                        <option value="CN">China</option>
                        <option value="FR">France</option>
                        <option value="DE">Germany</option>
                        <option value="IN" selected>India</option>
                        <option value="ID">Indonesia</option>
                        <option value="IQ">Iraq</option>
                        <option value="IE">Ireland</option>
                        <option value="IL">Israel</option>
                        <option value="IT">Italy</option>
                        <option value="JP">Japan</option>
                        <option value="MY">Malaysia</option>
                        <option value="MX">Mexico</option>
                        <option value="NP">Nepal</option>
                        <option value="NL">Netherlands</option>
                        <option value="NZ">New Zealand</option>
                        <option value="NG">Nigeria</option>
                        <option value="PK">Pakistan</option>
                        <option value="PH">Philippines</option>
                        <option value="PT">Portugal</option>
                        <option value="QA">Qatar</option>
                        <option value="RU">Russia</option>
                        <option value="SA">Saudi Arabia</option>
                        <option value="SG">Singapore</option>
                        <option value="ZA">South Africa</option>
                        <option value="KR">South Korea</option>
                        <option value="ES">Spain</option>
                        <option value="LK">Sri Lanka</option>
                        <option value="SD">Sudan</option>
                        <option value="SE">Sweden</option>
                        <option value="CH">Switzerland</option>
                        <option value="SY">Syria</option>
                        <option value="TW">Taiwan</option>
                        <option value="TH">Thailand</option>
                        <option value="TR">Turkey</option>
                        <option value="AE">UAE</option>
                        <option value="GB">United Kingdom</option>
                        <option value="US">United States</option>
                        <option value="UY">Uruguay</option>
                        <option value="UZ">Uzbekistan</option>
                        <option value="VE">Venezuela</option>
                        <option value="VN">Vietnam</option>
                        <option value="YE">Yemen</option>
                        <option value="ZM">Zambia</option>
                        <option value="ZW">Zimbabwe</option>
                    </select>
                    <div class="as_pf_city_input" style="flex: 3; min-width: 200px;">
                        <input type="text" class="form-control" value="Mumbai, Maharashtra" placeholder="Type Birth City/District">
                        <span class="as_pf_city_icon">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                        </span>
                    </div>
                </div>
            </div>

            <!-- Mobile City Button -->
            <button class="as_pf_city_mobile_btn">Mumbai, Maharashtra</button>

            <!-- Language (Desktop) -->
            <div class="as_pf_group" style="min-width: 130px;">
                <label>Select Language</label>
                <select class="form-control" id="ddlLang">
                    <option value="en" selected>English</option>
                    <option value="hi">Hindi</option>
                    <option value="te">Telugu</option>
                    <option value="ma">Marathi</option>
                    <option value="ml">Malayalam</option>
                    <option value="ta">Tamil</option>
                    <option value="kn">Kannada</option>
                    <option value="bn">Bengali</option>
                </select>
            </div>

            <!-- Desktop Nav -->
            <div class="as_pf_nav_desktop">
                <a href="javascript:;">Previous</a>
                <a href="javascript:;">Next</a>
            </div>

            <!-- Mobile Nav -->
            <div class="as_pf_nav_mobile">
                <a href="javascript:;">04 May</a>
                <a href="javascript:;">Today</a>
                <a href="javascript:;">06 May</a>
            </div>

        </div>
    </div>
</div>

<!-- ========================================
     MAIN CONTENT
     ======================================== -->
<div class="container">
    <div style="padding: 40px 0 0;">

        <!-- 3-Column Section -->
        <div class="as_panchang_3col">

            <!-- Column 1: Date Card -->
            <div>
                <div class="as_panchang_datecard">
                    <div class="as_panchang_datecard_header">
                        <div>
                            <h2>Tuesday, 5 May 2026</h2>
                            <p><span>Ayana</span> - Uttarayana</p>
                            <h3>Vasant Ritu</h3>
                        </div>
                        <img src="https://astro-vedicrishi-in.b-cdn.net/web-vedicrishi/images/icons/rain.png" alt="rain">
                    </div>
                    <div class="as_panchang_datecard_body">
                        <div class="as_panchang_4col">
                            <div class="as_pc_cell">
                                <h4>Sunrise</h4>
                                <p>6:8:25</p>
                            </div>
                            <div class="as_pc_cell">
                                <h4>Sunset</h4>
                                <p>19:2:10</p>
                            </div>
                            <div class="as_pc_cell">
                                <h4>Moonrise</h4>
                                <p>22:22:6</p>
                            </div>
                            <div class="as_pc_cell">
                                <h4>Moonset</h4>
                                <p>8:27:37</p>
                            </div>
                        </div>
                        <div class="as_panchang_2col">
                            <div class="as_pc_cell">
                                <h4>Hindu Sunrise</h4>
                                <p>6:12:8</p>
                            </div>
                            <div class="as_pc_cell">
                                <h4>Hindu Sunset</h4>
                                <p>18:58:25</p>
                            </div>
                        </div>
                        <div class="as_panchang_2col">
                            <div class="as_pc_cell">
                                <h4>Sun Sign</h4>
                                <p>Aries</p>
                            </div>
                            <div class="as_pc_cell">
                                <h4>Moon Sign</h4>
                                <p>Scorpio</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Column 2: Panchang Elements -->
            <div>
                <div class="as_panchang_section_head">Panchang Elements</div>
                <div class="as_panchang_section_body">
                    <table class="as_panchang_elem_table">
                        <tbody>
                            <tr>
                                <td><h4>Tithi</h4></td>
                                <td><h4>Krishna Chaturthi upto 31:52:32</h4></td>
                            </tr>
                            <tr>
                                <td><h4>Nakshatra</h4></td>
                                <td><h4>Jyeshtha upto 12:55:44</h4></td>
                            </tr>
                            <tr>
                                <td><h4>Yog</h4></td>
                                <td><h4>Shiv upto 24:17:20</h4></td>
                            </tr>
                            <tr>
                                <td><h4>Karan</h4></td>
                                <td><h4>Bava upto 18:38:3</h4></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Column 3: Hindu Month & Year -->
            <div>
                <div class="as_panchang_section_head">Hindu Month & Year</div>
                <div class="as_panchang_section_body">
                    <div class="as_panchang_2col">
                        <div class="as_pc_cell">
                            <h4>Vikram Samvat</h4>
                            <p>2083-Raudra</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Shaka Samvat</h4>
                            <p>1948-Prabhau</p>
                        </div>
                    </div>
                    <div class="as_panchang_2col">
                        <div class="as_pc_cell">
                            <h4>Paksha</h4>
                            <p>Krishna-Paksha</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Ayana</h4>
                            <p>Uttarayana</p>
                        </div>
                    </div>
                    <div class="as_panchang_2col">
                        <div class="as_pc_cell">
                            <h4>Purnimanta</h4>
                            <p>Jyeshtha</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Amanta</h4>
                            <p>Vaishakh</p>
                        </div>
                    </div>
                    <div class="as_panchang_2col">
                        <div class="as_pc_cell">
                            <h4>Sun Sign</h4>
                            <p>Aries</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Moon sign</h4>
                            <p>Scorpio</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Festival Bar -->
        <div class="as_panchang_festival_bar" style="margin-top: 25px;">
            <h3>Today's Festival & Vratas</h3>
            <div class="as_pfb_content">
                <span>Ekadanta Sankashti Chaturthi</span>
            </div>
        </div>

        <!-- Timing 2-Column Section -->
        <div class="as_panchang_timing_2col" style="margin-top: 25px;">

            <!-- Inauspicious -->
            <div class="as_panchang_inauspicious">
                <div class="as_panchang_section_head">Inauspicious Timing</div>
                <div class="as_panchang_section_body">
                    <div class="as_panchang_inauspicious_3col">
                        <div class="as_pc_cell">
                            <h4>Rahu kalam</h4>
                            <p>15:48:43-17:25:26</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Yamghant Kalam</h4>
                            <p>09:21:51-10:58:34</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Gulika Kalam</h4>
                            <p>12:35:17-14:12:00</p>
                        </div>
                    </div>
                    <div class="as_panchang_inauspicious_2col">
                        <div class="as_pc_cell">
                            <h4>Dur Muhurtam</h4>
                            <p>08:43:10-09:34:45</p>
                            <p style="opacity: 0.4; margin-top: 4px;">--:--:-- - --:--:--</p>
                        </div>
                        <div class="as_pc-cell">
                            <h4>Varjyam</h4>
                            <p>21:54:40-23:42:36</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Auspicious -->
            <div class="as_panchang_auspicious">
                <div class="as_panchang_section_head">Auspicious timing</div>
                <div class="as_panchang_section_body">
                    <div class="as_panchang_2col">
                        <div class="as_pc_cell">
                            <h4>Abhijit Muhurta</h4>
                            <p>12:10 -13:00</p>
                        </div>
                        <div class="as_pc_cell">
                            <h4>Amrit Kalam</h4>
                            <p>03:02:06 - 04:49:54</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Other Yoga Section -->
        <div class="as_panchang_other_yoga" style="margin-top: 25px;">
            <div class="as_panchang_section_head">Other Yoga</div>
            <div class="as_panchang_section_body as_panchang_other_yoga_body">
                <div class="as_panchang_2col_yoga">
                    <div class="as_pc_cell">
                        <h4>Anandadi Yog</h4>
                    </div>
                    <div class="as_pc_cell">
                        <h4>Mudkara upto 12:55:44</h4>
                    </div>
                </div>
                <div class="as_panchang_shool_head">Shool & Nivas</div>
                <div class="as_panchang_2col">
                    <div class="as_pc_cell">
                        <h4>Disha Shool</h4>
                        <p>NORTH</p>
                    </div>
                    <div class="as_pc_cell">
                        <h4>Nakshatra Shool</h4>
                        <p>EAST</p>
                    </div>
                </div>
                <div style="padding: 14px 15px; text-align: center;">
                    <h4 style="font-size: 12px; text-transform: uppercase; letter-spacing: 0.5px; color: #97b0c1; margin: 0 0 4px;">Moon Nivash</h4>
                    <p style="font-size: 15px; color: var(--white-color); margin: 0; font-family: 'Philosopher', sans-serif; font-weight: 600;">NORTH</p>
                </div>
            </div>
        </div>

        <!-- Bottom Cards -->
        <div class="as_panchang_bottom_cards">
            <a href="panchang-chaughadiya-muhurata.aspx" class="as_panchang_bottom_card" style="background: linear-gradient(135deg, #e040a0, var(--secondary-color));">
                <h2>Chaughadiya<br>Muhurata</h2>
            </a>
            <a href="panchang-hora-muhurata.aspx" class="as_panchang_bottom_card1">
                <h2>Hora<br>Muhurata</h2>
            </a>
            <a href="panchang-daily.aspx" class="as_panchang_bottom_card" style="background: linear-gradient(135deg, #e040a0, var(--secondary-color));">
                <h2>Daily<br>Panchang</h2>
            </a>
        </div>

    </div>
</div>
</asp:Content>

