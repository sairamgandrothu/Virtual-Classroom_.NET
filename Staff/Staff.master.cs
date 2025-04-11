using System;
using System.Web.UI;

public partial class Staff_Staff : System.Web.UI.MasterPage
{
    DS_STAFF.STAFFMST_SELECTDataTable StaffDT = new DS_STAFF.STAFFMST_SELECTDataTable();
    DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter StaffAdapter = new DS_STAFFTableAdapters.STAFFMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["uname"] != null) // Ensure the session variable is not null
            {
                StaffDT = StaffAdapter.Select_by_email(Session["uname"].ToString());

                if (StaffDT != null && StaffDT.Rows.Count > 0) // Check if the query returned rows
                {
                    Image4.ImageUrl = StaffDT.Rows[0]["Image"].ToString();
                    Label1.Text = "Welcome " + StaffDT.Rows[0]["name"].ToString();
                }
                else
                {
                    Label1.Text = "User not found.";
                    Image4.Visible = false; // Hide the image if no data is available
                }
            }
            else
            {
                Response.Redirect("~/Login.aspx"); // Redirect to login page if session is null
            }
        }
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        // Handle button click event
    }
}
