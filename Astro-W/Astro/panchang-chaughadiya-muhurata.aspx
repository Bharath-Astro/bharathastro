<%@ Page Title="" Language="C#" MasterPageFile="~/AstroMaster.master" AutoEventWireup="true" CodeFile="panchang-chaughadiya-muhurata.aspx.cs" Inherits="panchang_chaughadiya_muhurata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
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
/* ========================================
   CHAUGHADIYA PAGE - Additional CSS
   ======================================== */

/* Chaughadiya Row Colors */
.as_chaug_row {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    padding: 14px 20px;
    border-bottom: 1px solid rgb(255 255 255 / 5%);
    transition: all 0.2s linear;
}
.as_chaug_row:last-child {
    border-bottom: none;
}
.as_chaug_row .as_cr_name {
    font-size: 16px;
    font-weight: 600;
    min-width: 90px;
    text-align: right;
}
.as_chaug_row .as_cr_time {
    font-size: 15px;
    color: #97b0c1;
    font-family: 'Courier New', monospace;
    letter-spacing: 0.5px;
    min-width: 170px;
    text-align: left;
}

/* Auspicious (Green) */
.as_chaug_row.chaug-good {
    background-color: rgba(34, 197, 94, 0.12);
}
.as_chaug_row.chaug-good .as_cr_name {
    color: #22c55e;
}

/* Inauspicious (Red) */
.as_chaug_row.chaug-bad {
    background-color: rgba(239, 68, 68, 0.12);
}
.as_chaug_row.chaug-bad .as_cr_name {
    color: #ef4444;
}

/* Neutral/Good (Blue) */
.as_chaug_row.chaug-neutral {
    background-color: rgba(56, 189, 248, 0.12);
}
.as_chaug_row.chaug-neutral .as_cr_name {
    color: #38bdf8;
}

/* About Section */
.as_chaug_about {
    margin-top: 50px;
}
.as_chaug_about h2 {
    font-size: 30px;
    margin: 0 0 15px;
}
.as_chaug_about > p {
    font-size: 15px;
    line-height: 28px;
    color: #97b0c1;
    margin-bottom: 20px;
}
.as_chaug_about h3 {
    font-size: 20px;
    margin: 0 0 15px;
}
.as_chaug_legend {
    display: flex;
    flex-direction: column;
    gap: 12px;
}
.as_chaug_legend_item {
    display: flex;
    align-items: center;
    gap: 12px;
    font-size: 15px;
    line-height: 26px;
    color: #97b0c1;
}
.as_chaug_legend_swatch {
    width: 32px;
    height: 32px;
    border-radius: 6px;
    flex-shrink: 0;
}
.as_chaug_legend_swatch.swatch-good {
    background-color: rgba(34, 197, 94, 0.3);
    border: 1px solid rgba(34, 197, 94, 0.5);
}
.as_chaug_legend_swatch.swatch-bad {
    background-color: rgba(239, 68, 68, 0.3);
    border: 1px solid rgba(239, 68, 68, 0.5);
}
.as_chaug_legend_swatch.swatch-neutral {
    background-color: rgba(56, 189, 248, 0.3);
    border: 1px solid rgba(56, 189, 248, 0.5);
}

/* Responsive */
@media (max-width:991px) {
    .as_chaug_about h2 {
        font-size: 26px;
    }
}
@media (max-width:767px) {
    .as_chaug_row {
        gap: 12px;
        padding: 12px 15px;
    }
    .as_chaug_row .as_cr_name {
        font-size: 14px;
        min-width: 75px;
    }
    .as_chaug_row .as_cr_time {
        font-size: 12px;
        min-width: 140px;
        letter-spacing: 0;
    }
    .as_chaug_about h2 {
        font-size: 22px;
    }
    .as_chaug_about h3 {
        font-size: 18px;
    }
    .as_chaug_legend_swatch {
        width: 26px;
        height: 26px;
    }
}
@media (max-width:400px) {
    .as_chaug_row {
        flex-direction: column;
        gap: 2px;
        text-align: center;
    }
    .as_chaug_row .as_cr_name {
        text-align: center;
        min-width: auto;
    }
    .as_chaug_row .as_cr_time {
        text-align: center;
        min-width: auto;
    }
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- ========================================
     MAIN CONTENT
     ======================================== -->
<div class="container">
    <div class="as_hora_title_section">

        <h2>Chaughadiya for 5 May 2026</h2>
        <p class="as_hora_location">Mumbai, Maharashtra</p>
        <p>The following Chaughadiya are shown for the date, 5 May 2026 and place 'Mumbai, Maharashtra'. These Panchang calculations are based on Drik Ganit i.e. current sidereal positions of planets in the sky. The Ayanamsha used is Lahiri or Chitrapakshiya. The current day sunrise is taken as the time to calculate planet positions and accordingly other drika panchang calculations.</p>

        <!-- Chaughadiya Grid -->
        <div class="as_hora_grid">

            <!-- Day Chaughadiya -->
            <div class="as_hora_card">
                <div class="as_hora_card_header">
                    <h2>Day Chaughadiya</h2>
                </div>
                <div class="as_hora_card_body">
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Rog</span>
                        <span class="as_cr_time">06:08:25 - 07:45:08</span>
                    </div>
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Udveg</span>
                        <span class="as_cr_time">07:45:08 - 09:21:51</span>
                    </div>
                    <div class="as_chaug_row chaug-neutral">
                        <span class="as_cr_name">Char</span>
                        <span class="as_cr_time">09:21:51 - 10:58:34</span>
                    </div>
                    <div class="as_chaug_row chaug-good">
                        <span class="as_cr_name">Labh</span>
                        <span class="as_cr_time">10:58:34 - 12:35:17</span>
                    </div>
                    <div class="as_chaug_row chaug-good">
                        <span class="as_cr_name">Amrit</span>
                        <span class="as_cr_time">12:35:17 - 14:12:00</span>
                    </div>
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Kaal</span>
                        <span class="as_cr_time">14:12:00 - 15:48:43</span>
                    </div>
                    <div class="as_chaug_row chaug-good">
                        <span class="as_cr_name">Shubh</span>
                        <span class="as_cr_time">15:48:43 - 17:25:26</span>
                    </div>
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Rog</span>
                        <span class="as_cr_time">17:25:26 - 19:02:10</span>
                    </div>
                </div>
            </div>

            <!-- Night Chaughadiya -->
            <div class="as_hora_card">
                <div class="as_hora_card_header">
                    <h2>Night Chaughadiya</h2>
                </div>
                <div class="as_hora_card_body">
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Kaal</span>
                        <span class="as_cr_time">19:02:10 - 20:25:26</span>
                    </div>
                    <div class="as_chaug_row chaug-good">
                        <span class="as_cr_name">Labh</span>
                        <span class="as_cr_time">20:25:26 - 21:48:43</span>
                    </div>
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Udveg</span>
                        <span class="as_cr_time">21:48:43 - 23:12:00</span>
                    </div>
                    <div class="as_chaug_row chaug-good">
                        <span class="as_cr_name">Shubh</span>
                        <span class="as_cr_time">23:12:00 - 00:35:17</span>
                    </div>
                    <div class="as_chaug_row chaug-good">
                        <span class="as_cr_name">Amrit</span>
                        <span class="as_cr_time">00:35:17 - 01:58:34</span>
                    </div>
                    <div class="as_chaug_row chaug-neutral">
                        <span class="as_cr_name">Char</span>
                        <span class="as_cr_time">01:58:34 - 03:21:51</span>
                    </div>
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Rog</span>
                        <span class="as_cr_time">03:21:51 - 04:45:08</span>
                    </div>
                    <div class="as_chaug_row chaug-bad">
                        <span class="as_cr_name">Kaal</span>
                        <span class="as_cr_time">04:45:08 - 06:08:25</span>
                    </div>
                </div>
            </div>

        </div>

        <!-- About Chaughadiya -->
        <div class="as_chaug_about">
            <h2>About Chaughadiya</h2>
            <p>Ghadi is an ancient measure for calculations of time in India roughly equivalent to 24 minutes. Cho-ghadiya means four ghadi which totals to 96 minutes. Most of chaughadiya are of a figure around 96 minutes.</p>

            <h3>There are totally seven types of Choghdiya.</h3>

            <div class="as_chaug_legend">
                <div class="as_chaug_legend_item">
                    <div class="as_chaug_legend_swatch swatch-good"></div>
                    <p>Amrit, Shubh and Labh are considered the most auspicious Chaughadiyas.</p>
                </div>
                <div class="as_chaug_legend_item">
                    <div class="as_chaug_legend_swatch swatch-bad"></div>
                    <p>Udveg, Kaal and Rog is considered inauspicious Chaughadiyas.</p>
                </div>
                <div class="as_chaug_legend_item">
                    <div class="as_chaug_legend_swatch swatch-neutral"></div>
                    <p>Char is considered as good Chaughadiya.</p>
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

