<%@ Page Language="VB" Debug="true" MasterPageFile="site.master" AutoEventWireup="false" CodeFile="Applicants.aspx.vb" Inherits="_Applicants" title="Applicants"%>


<asp:content contentplaceholderid="CPH1" runat="server">
	<div align="center"><font face="Century" size="2"><b><font color="#993333" size="3"><br>
              Dot Personnel Application Form</font></b></font> <br>
    </div>
          
          
      <table border="0" cellpadding="0" cellspacing="0" width="92%">
        <tbody><tr> 
          <td bgcolor="f1f1f1" width="28%"> 
            <div align="center"> 
              <form name="form1" runat="server">
			  <asp:validationsummary id="validate1" displaymode="BulletList" EnableClientScript="true" HeaderText="The following fields are rquired" ShowMessageBox="True" ShowSummary="False" runat="server">     
				
			  </asp:validationsummary>
			  <asp:label id="lblStatus" runat="Server" Visible="False"/>
                <table border="0" cellpadding="0" cellspacing="0" width="82%">
                  <tbody><tr> 
                    <td width="16%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Name</font></td>
                    <td width="30%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="name" runat="server" />
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="name" errormessage="Name" text="*"/></td>
                    <td width="34%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Preferred 
                      Working Area</font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="pref_working_area" runat="server"/>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="pref_working_area" errormessage="Prefered Work Area" text="*"/></td>
                  </tr>
                  <tr> 
                    <td width="16%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Address</font></td>
                    <td width="30%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="address" runat="server"/>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="address" errormessage="Address" text="*"/></td>
                    <td width="34%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Alternate 
                      Working Area</font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="alt_working_area" runat="server"/>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="alt_working_area" errormessage="Alternate Working Area" text="*"/></td>
                  </tr>
                  <tr> 
                    <td width="16%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Telehone 
                      Number</font></td>
                    <td width="30%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="tel" runat="server" />
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="tel" errormessage="Telephone" text="*"/></td>
                    <td width="34%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Have 
                      you worked for a similar service? Yes 
                      <asp:radiobutton groupname="similarservice" value="Y" runat="server"/>
                      No 
                      <asp:radiobutton groupname="similarservice" value="N" runat="server"/>
                      If so, how long?</font>
					  <% '<asp:requiredfieldvalidator runat="server" controltovalidate="similarservice" errormessage="Similar Service" text="*"/> %>
					  </td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="similar_service_length" runat="server"/>
                      </font></td>
                  </tr>
                  <tr> 
                    <td width="16%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Emergency 
                      Number</font></td>
                    <td width="30%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="emergency_num" runat="server"/>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="emergency_num" errormessage="Emergency Number" text="*"/></td>
                    <td width="34%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">How 
                      did you hear of us?</font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:dropdownlist id="referal" runat="server" size="1">
                        <asp:listitem>Dot News</asp:listitem>
                        <asp:listitem>News Paper</asp:listitem>
                        <asp:listitem>Friend</asp:listitem>
                        <asp:listitem>Other</asp:listitem>
                      </asp:dropdownlist>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="referal" errormessage="Referal" text="*"/></td>
                  </tr>
                  <tr> 
                    <td width="16%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Date 
                      Of Birth</font></td>
                    <td width="30%"> 
                      <p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                        Day 
                        <asp:dropdownlist id="dob_dd" runat="server" size="1">
                          <asp:listitem>01</asp:listitem>
                          <asp:listitem>02</asp:listitem>
                          <asp:listitem>03</asp:listitem>
                          <asp:listitem>04</asp:listitem>
                          <asp:listitem>05</asp:listitem>
                          <asp:listitem>06</asp:listitem>
                          <asp:listitem>07</asp:listitem>
                          <asp:listitem>08</asp:listitem>
                          <asp:listitem>09</asp:listitem>
                          <asp:listitem>10</asp:listitem>
                          <asp:listitem>11</asp:listitem>
                          <asp:listitem>12</asp:listitem>
                          <asp:listitem>13</asp:listitem>
                          <asp:listitem>14</asp:listitem>
                          <asp:listitem>15</asp:listitem>
                          <asp:listitem>16</asp:listitem>
                          <asp:listitem>17</asp:listitem>
                          <asp:listitem>18</asp:listitem>
                          <asp:listitem>19</asp:listitem>
                          <asp:listitem>20</asp:listitem>
                          <asp:listitem>21</asp:listitem>
                          <asp:listitem>22</asp:listitem>
                          <asp:listitem>23</asp:listitem>
                          <asp:listitem>24</asp:listitem>
                          <asp:listitem>25</asp:listitem>
                          <asp:listitem>26</asp:listitem>
                          <asp:listitem>27</asp:listitem>
                          <asp:listitem>28</asp:listitem>
                          <asp:listitem>29</asp:listitem>
                          <asp:listitem>30</asp:listitem>
                          <asp:listitem>31</asp:listitem>
                        </asp:dropdownlist><asp:requiredfieldvalidator runat="server" controltovalidate="dob_dd" errormessage="Day of Birth" text="*"/>
                        <br>
                        Month 
                        <asp:dropdownlist id="dob_mm" runat="server" size="1">
                          <asp:listitem>January</asp:listitem>
                          <asp:listitem>February</asp:listitem>
                          <asp:listitem>March</asp:listitem>
                          <asp:listitem>April</asp:listitem>
                          <asp:listitem>May</asp:listitem>
                          <asp:listitem>June</asp:listitem>
                          <asp:listitem>July</asp:listitem>
                          <asp:listitem>August</asp:listitem>
                          <asp:listitem>September</asp:listitem>
                          <asp:listitem>October</asp:listitem>
                          <asp:listitem>November</asp:listitem>
                          <asp:listitem>December</asp:listitem>
                        </asp:dropdownlist><asp:requiredfieldvalidator runat="server" controltovalidate="dob_mm" errormessage="Month of Birth" text="*"/>
                        <br>
                        Year </font><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                        <asp:textbox runat="server" id="dob_yy" size="4" maxlength="4" />
                        </font><asp:requiredfieldvalidator runat="server" controltovalidate="dob_yy" errormessage="Year of Birth" text="*"/></p>
                    </td>
                    <td width="34%"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">How 
                      soon can you start working?</font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="how_soon_start" runat="server"/>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="how_soon_start" errormessage="Start Date" text="*"/></td>
                  </tr>
                  <tr> 
                    <td width="16%" height="33"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">E-mail 
                      Address</font></td>
                    <td width="30%" height="33"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="email" runat="server"/>
                      </font><asp:requiredfieldvalidator runat="server" controltovalidate="email" errormessage="Email Address" text="*"/></td>
                    <td width="34%" height="33"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Pay 
                      Rate $</font></td>
                    <td width="20%" height="33"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="pay_rate" runat="server"/>
                      </font> <asp:requiredfieldvalidator runat="server" controltovalidate="pay_rate" errormessage="Pay Rate" text="*"/></td>
                  </tr>
                </tbody></table>
                <p align="center"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#993333">Education</font><br>
                  </b></font></p>
                <table align="center" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" width="69%">
                  <tbody><tr> 
                    <td width="32%"> 
                      <div align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Name 
                        Of School</b></font></div>
                    </td>
                    <td width="20%"> 
                      <div align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Years 
                        Attended</b></font></div>
                    </td>
                    <td width="48%"> 
                      <div align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Exams 
                        Passed</b></font></div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="32%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ed_name" size="35" runat="server" />
                      </font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ed_years" size="20"  runat="server"/>
                      </font></td>
                    <td width="48%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ed_exams" size="40" runat="server"/>
                      </font></td>
                  </tr>
                </tbody></table>
                <p align="center"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#993333">Business 
                  Experience</font></b><br>
                  </font></p>
                <table align="center" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" width="66%">
                  <tbody><tr> 
                    <td width="27%"> 
                      <div align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Name 
                        Of Company</b></font></div>
                    </td>
                    <td width="20%"> 
                      <div align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Supervisors 
                        Name</b></font></div>
                    </td>
                    <td width="26%"> 
                      <div align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Position 
                        Held</b></font></div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="27%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_name_comp1" size="35" runat="server"/>
                      </font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_emp_name1" size="25" runat="server"/>
                      </font></td>
                    <td width="26%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_pos1" size="25" runat="server"/>
                      </font></td>
                  </tr>
                  <tr> 
                    <td width="27%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_name_comp2" size="35" runat="server"/>
                      </font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_emp_name2" size="25" runat="server"/>
                      </font></td>
                    <td width="26%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_pos2" size="25" runat="server"/>
                      </font></td>
                  </tr>
                  <tr> 
                    <td width="27%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_name_comp3" size="35" runat="server"/>
                      </font></td>
                    <td width="20%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_emp_name3" size="25" runat="server"/>
                      </font></td>
                    <td width="26%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="bus_pos3" size="25" runat="server"/>
                      </font></td>
                  </tr>
                </tbody></table>
                <font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"><br>
                </font> 
                <p align="center"><font color="#993333" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Personal 
                  Reference </b></font></p>
                <table align="center" border="0" bordercolor="#000000" cellpadding="0" cellspacing="0" width="53%">
                  <tbody><tr> 
                    <td width="39%"> 
                      <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#993333">Name 
                        of Reference</font></b></font></div>
                    </td>
                    <td width="61%"> 
                      <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#993333">Address/Contact 
                        no.</font></b></font></div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="39%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ref_name1" size="35" runat="server"/>
                      </font></td>
                    <td width="61%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ref_addr1" columns="35" textmode="multiline" runat="server"/>
                      </font></td>
                  </tr>
                  <tr> 
                    <td width="39%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ref_name2" size="35" runat="server"/>
                      </font></td>
                    <td width="61%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ref_addr2" columns="35" textmode="multiline" runat="server"/>
                      </font></td>
                  </tr>
                  <tr> 
                    <td width="39%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ref_name3" size="35" runat="server"/>
                      </font></td>
                    <td width="61%"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:textbox id="ref_addr3" columns="35" textmode="multiline" runat="server"/>
                      </font></td>
                  </tr>
                </tbody></table>
                <p align="center"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Have 
                  you ever worked in any of the following Departments? Kindly 
                  tick in box/s below<br>
                  </font></p>
                <table align="center" border="0" cellpadding="0" cellspacing="0" width="90%">
                  <tbody><tr> 
                    <td colspan="2"> 
                      <div align="center"><b><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Classification</font></b></div>
                    </td>
                    <td colspan="2"> 
                      <div align="center"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><font color="#330066">Office 
                        Machines </font> </font> </b></div>
                    </td>
                    <td colspan="2"> 
                      <div align="center"><b><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Business 
                        Experience</font></b></div>
                    </td>
                    <td colspan="2"> 
                      <div align="center"><b><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2">Worked 
                        in Dept.</font></b></div>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="18"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Administrator</font></div>
                    </td>
                    <td width="13%" height="18"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Administrator" value="yes" runat="server"/>
                      </font></td>
                    <td width="9%" height="18"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Adding 
                      Machine </font></td>
                    <td width="10%" height="18"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Adding_Machine" value="yes" runat="server"/>
                      </font></td>
                    <td width="15%" height="18"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Bank</font></td>
                    <td width="11%" height="18"> <font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Bank" value="yes" runat="server"/>
                      </font></td>
                    <td width="17%" height="18"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Accts. 
                      Payable/Receivable </font></td>
                    <td width="14%" height="18"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                      <asp:checkbox id="Accts_PayableReceivable" value="yes" runat="server"/>
                      </font></td>
                  </tr>
                  <tr> 
                    <td width="11%" height="22"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Accountant</font></div>
                    </td>
                    <td width="13%" height="22"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Accountant" value="yes" runat="server"/>
                      </font></td>
                    <td width="9%" height="22"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Calculator</font></td>
                    <td width="10%" height="22"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Calculator" value="yes" runat="server"/>
                      </font></td>
                    <td width="15%" height="22"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Customs</font></td>
                    <td width="11%" height="22"> <font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Customs" value="yes" runat="server"/>
                      </font></td>
                    <td width="17%" height="22"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Personnel</font></td>
                    <td width="14%" height="22">
                      <asp:checkbox id="Personnel" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Cashier</font></div>
                    </td>
                    <td width="13%" height="9"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Cashier" value="yes" runat="server"/>
                      </font></td>
                    <td width="9%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Duplicator</font></td>
                    <td width="10%" height="9"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Duplicator" value="yes" runat="server"/>
                      </font></td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Legal</font></td>
                    <td width="11%" height="9"> <font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                      <asp:checkbox id="Legal" value="yes" runat="server"/>
                      </font></td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Billing/Posting</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="BillingPosting" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Clerk</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Clerk" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Key 
                      Punch</font></td>
                    <td width="10%" height="9"> 
                      <asp:checkbox id="Key_Punch" value="yes" runat="server"/>
                    </td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Insurance</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Insurance" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Costing</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="Costing" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Statistics</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Statistics" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Telex</font></td>
                    <td width="10%" height="9"> 
                      <asp:checkbox id="Telex" value="yes" runat="server"/>
                    </td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Medical</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Medical" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Trial 
                      balance</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="Trial_Balance" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Typing: 
                        Elect/Manual</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Typing" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Cash 
                      Register</font></td>
                    <td width="10%" height="9"> 
                      <asp:checkbox id="Cash_Register" value="yes" runat="server"/>
                    </td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Engineering</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Engineering" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Bank 
                      Reconcilliation</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="Bank_Reconcilliation" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Shorthand</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Shorthand" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Switchboard</font></td>
                    <td width="10%" height="9"> 
                      <asp:checkbox id="Switchboard" value="yes" runat="server"/>
                    </td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Hotel</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Hotel" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Credit 
                      &amp; Collection</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="Credit_Collection" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Speedwriting</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Speedwriting" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Accounting 
                      Machines</font></td>
                    <td width="10%" height="9"> 
                      <asp:checkbox id="Accounting_Machines" value="yes" runat="server"/>
                    </td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Advertising</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Advertising" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Payroll 
                      -I/Tax</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="Payroll_Tax" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Dictaphone</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Dictaphone" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9">&nbsp;</td>
                    <td width="10%" height="9">&nbsp;</td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Warehouse</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Warehouse" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">NIS 
                      &amp; NHT</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="NIS_NHT" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Typesetting</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Typesetting" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9">&nbsp;</td>
                    <td width="10%" height="9">&nbsp;</td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Publishing</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="Publishing" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Purchasing/Stock</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="PurchasingStock" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Data 
                        Processing</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Data_Processing" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9">&nbsp;</td>
                    <td width="10%" height="9">&nbsp;</td>
                    <td width="15%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Import/Export</font></td>
                    <td width="11%" height="9"> 
                      <asp:checkbox id="ImportExport" value="yes" runat="server"/>
                    </td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Sales</font></td>
                    <td width="14%" height="9"> 
                      <asp:checkbox id="Sales" value="yes" runat="server"/>
                    </td>
                  </tr>
                  <tr> 
                    <td width="11%" height="9"> 
                      <div align="left"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Programming</font></div>
                    </td>
                    <td width="13%" height="9"> 
                      <asp:checkbox id="Programming" value="yes" runat="server"/>
                    </td>
                    <td width="9%" height="9">&nbsp;</td>
                    <td width="10%" height="9">&nbsp;</td>
                    <td width="15%" height="9">&nbsp;</td>
                    <td width="11%" height="9">&nbsp;</td>
                    <td width="17%" height="9"><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="1">Filing</font></td>
                    <td width="14%" height="9">
                      <asp:checkbox id="Filing" value="yes" runat="server"/>
                    </td>
                  </tr>
                </tbody></table>
                <p><font color="#330066" face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Copy 
                  and paste your resume here</b></font></p>
                <table border="0" cellpadding="0" cellspacing="0" width="80%">
                  <tbody><tr>
                    <td height="200">
                      <asp:textbox id="appResume" columns="100" rows="15" textmode="multiline" runat="server"/>
					  </td>
                  </tr>
                </tbody></table>
               <asp:AccessDataSource ID="adsApplicant" runat="server" DataFile="~/App_Data/dotpersonnel.mdb" SelectCommand="" InsertCommand="" />
                <br>
                <table border="0" cellpadding="0" cellspacing="0" width="0%">
                  <tbody><tr>
                    <td><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                      <asp:button id="Submit" text="Submit Form" onclick="btnSubmit" runat="server"/>
                    </font></td>
                    <td><font face="Verdana, Arial, Helvetica, sans-serif" size="2">
                      <asp:button id="Submit2" text="Reset Form" runat="server"/>
                    </font></td>
                  </tr>
                </tbody></table>
			</form>
</asp:content>