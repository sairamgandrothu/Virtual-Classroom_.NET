using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();

    DS_REGI.StudentMst_SELECTDataTable StuDT = new DS_REGI.StudentMst_SELECTDataTable();
    DS_REGITableAdapters.StudentMst_SELECTTableAdapter StuAdapter = new DS_REGITableAdapters.StudentMst_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        lblstaff.Text = "";
        lblstudent.Text = "";
    }

    protected void btnstafflogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(txtstaffuname.Text) || string.IsNullOrWhiteSpace(txtstaffpass.Text))
            {
                lblstaff.Text = "Please enter both username and password.";
                return;
            }

            StaffDT = StaffAdapter.Select_For_Login(txtstaffuname.Text.Trim(), txtstaffpass.Text.Trim());

            if (StaffDT != null && StaffDT.Rows.Count == 1)
            {
                Session["uname"] = StaffDT.Rows[0]["Name"].ToString();
                Session["email"] = StaffDT.Rows[0]["Email"].ToString();
                Session["name"] = StaffDT.Rows[0]["Name"].ToString();
                Session["cname"] = StaffDT.Rows[0]["CName"].ToString();
                Response.Redirect("Staff/Default.aspx");
            }
            else
            {
                lblstaff.Text = "Invalid username or password. Please try again.";
            }
        }
        catch (Exception ex)
        {
            lblstaff.Text = "An error occurred during login: " + ex.Message;
        }
    }

    protected void btnstulogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(txtxstuuname.Text) || string.IsNullOrWhiteSpace(txtstupassword.Text))
            {
                lblstudent.Text = "Please enter both username and password.";
                return;
            }

            StuDT = StuAdapter.Select_for_LOGIN(txtxstuuname.Text.Trim(), txtstupassword.Text.Trim());

            if (StuDT != null && StuDT.Rows.Count == 1)
            {
                Session["uname"] = txtxstuuname.Text.Trim();
                Session["email"] = StuDT.Rows[0]["Email"].ToString();
                Session["cname"] = StuDT.Rows[0]["course"].ToString();
                Response.Redirect("Student/MyProfile.aspx");
            }
            else
            {
                lblstudent.Text = "Invalid username or password. Please try again.";
            }
        }
        catch (Exception ex)
        {
            lblstudent.Text = "An error occurred during login: " + ex.Message;
        }
    }
}
