using System;

public partial class MatchingBirthDetailsControl : System.Web.UI.UserControl
{
    protected void PlaceChanged(object sender, EventArgs e)
    {
        pnlCustom.Visible = ddlPlace.SelectedValue == "custom";
        txtOffset.Text = ddlPlace.SelectedValue != "" && !pnlCustom.Visible ? "+05:30" : "";
    }

    public MatchingBirthDetails ReadDetails(bool sandbox)
    {
        if (string.IsNullOrEmpty(ddlPlace.SelectedValue))
            throw new ArgumentException("Select a birth city, or choose another place and enter its coordinates.");
        bool custom = ddlPlace.SelectedValue == "custom";
        string[] coordinates = custom ? new[] { txtLatitude.Text.Trim(), txtLongitude.Text.Trim() } : ddlPlace.SelectedValue.Split(',');
        return MatchingBirthDetails.Parse(txtName.Text, custom ? txtPlace.Text : ddlPlace.SelectedItem.Text,
            txtDate.Text, txtTime.Text, coordinates[0], coordinates[1], txtOffset.Text.Trim(), sandbox);
    }
}
