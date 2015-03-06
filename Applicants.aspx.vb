Imports System.Data.OleDb
Partial Class _Applicants
    Inherits System.Web.UI.Page
	
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		
		if Page.IsPostBack then
			'if postback occurred
		end if
	End Sub



	Protected Sub btnSubmit(ByVal sender As Object, ByVal e As System.EventArgs)
		Dim dbconn As OleDbConnection
		Dim dbcomm As OleDbCommand
		Dim reader As OleDbDataReader
		Dim sql As String
		Dim idApp, icount, iRes As Integer
		
		dbconn=New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & server.mappath("App_Data/dotpersonnel.mdb"))
		dbconn.Open()
		sql = "SELECT ID FROM applicants WHERE EmailAddress = '" & email.Text & "'"
		dbcomm=New OleDbCommand(sql,dbconn)
		reader = dbcomm.ExecuteReader()
		If reader.HasRows Then
			reader.Read()
			iRes = reader.Item(0)
			reader.Close()
		Else
			iRes=0
			'Response.Write("No Rows")
		End If
		
		If iRes<1 Then 
			Dim dateOfBirth = Convert.ToDateTime(dob_dd.SelectedItem.Value & "/" & dob_mm.SelectedItem.Value & "/" & dob_yy.Text).ToString("dd/MM/yyyy")
			' Response.Write(dateOfBirth)
			' applicant insert
			sql="INSERT INTO applicants (FullName, HomeAddress, TelephoneNumber, EmergencyNumber, DateOfBirth, EmailAddress, PreferedWork, AlternateWork, SimilarService, Referral, StartTimeWork, PayRate) VALUES ('" & name.Text & "','" & address.Text & "','" & tel.Text & "','" & emergency_num.Text & "',#" & dateOfBirth & "#,'" & email.Text & "','" & pref_working_area.Text & "','" & alt_working_area.Text & "','" & similar_service_length.Text & "','" & referal.SelectedItem.Value & "','" & how_soon_start.Text & "'," & pay_rate.Text & " )"
			'Response.Write(sql)
			dbcomm=New OleDbCommand(sql,dbconn)
			icount = dbcomm.ExecuteNonQuery()
			
			sql="SELECT id FROM applicants WHERE EmailAddress = '" & email.Text & "'"
			dbcomm=New OleDbCommand(sql,dbconn)
			idApp = dbcomm.ExecuteScalar()
			Response.Write(idApp)
			
			' education insert
			sql="INSERT INTO applicant_education (ApplicantID, NameOfSchool, YearsAttended, ExamsPassed) VALUES ('" & idApp & "','" & ed_name.Text & "','" & ed_years.Text & "','" & ed_exams.Text & "' )"
			'Response.Write(sql)
			dbcomm=New OleDbCommand(sql,dbconn)
			icount = dbcomm.ExecuteNonQuery
			'Response.Write(icount)
			
			' business experience insert
			sql="INSERT INTO applicant_experience (ApplicantID, NameOfCompany, SupervisorsName, PositionHeld) VALUES ('" & idApp & "','" & bus_name_comp1.Text & "','" & bus_emp_name1.Text & "','" & bus_pos1.Text & "' )"
			'Response.Write(sql)
			dbcomm=New OleDbCommand(sql,dbconn)
			icount = dbcomm.ExecuteNonQuery
			'Response.Write(icount)

			' reference insert
			sql="INSERT INTO applicant_reference (ApplicantID, ReferenceName, AddressOrContact) VALUES ('" & idApp & "','" & ref_name1.Text & "','" & ref_addr1.Text & "' )"
			'Response.Write(sql)
			dbcomm=New OleDbCommand(sql,dbconn)
			icount = dbcomm.ExecuteNonQuery
			'Response.Write(icount)
			
			REM ' departments insert
			REM 'classification
			REM If Administrator.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Administrator.ID & "','" & Administrator.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Accountant.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Accountant.ID & "','" & Accountant.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Cashier.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Cashier.ID & "','" & Cashier.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Clerk.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Clerk.ID & "','" & Clerk.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Statistics.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Statistics.ID & "','" & Statistics.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Typing.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Typing.ID & "','" & Typing.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Shorthand.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Shorthand.ID & "','" & Shorthand.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Speedwriting.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Speedwriting.ID & "','" & Speedwriting.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Dictaphone.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Dictaphone.ID & "','" & Dictaphone.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Typesetting.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Typesetting.ID & "','" & Typesetting.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Dataprocessing.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Dataprocessing.ID & "','" & Dataprocessing.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Programming.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Classification','" & Programming.ID & "','" & Programming.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM ' office machines
			REM If Adding_Machine.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Adding_Machine.ID & "','" & Adding_Machine.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Calculator.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Calculator.ID & "','" & Calculator.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Duplicator.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Duplicator.ID & "','" & Duplicator.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Key_Punch.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Key_Punch.ID & "','" & Key_Punch.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Telex.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Telex.ID & "','" & Telex.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Cash_Register.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Cash_Register.ID & "','" & Cash_Register.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Switchboard.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Switchboard.ID & "','" & Switchboard.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Accounting_Machines.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Office Machines','" & Accounting_Machines.ID & "','" & Accounting_Machines.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM ' business experience
			REM If Bank.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Bank.ID & "','" & Bank.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Customs.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Customs.ID & "','" & Customs.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Legal.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Legal.ID & "','" & Legal.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Insurance.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Insurance.ID & "','" & Insurance.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Medical.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Medical.ID & "','" & Medical.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Engineering.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Engineering.ID & "','" & Engineering.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Hotel.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Hotel.ID & "','" & Hotel.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Advertising.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Advertising.ID & "','" & Advertising.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Warehouse.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Warehouse.ID & "','" & Warehouse.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Publishing.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Publishing.ID & "','" & Publishing.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If ImportExport.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & ImportExport.ID & "','" & ImportExport.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM ' worked in dept.
			REM If Accts_PayableReceivable.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Accts_PayableReceivable.ID & "','" & Accts_PayableReceivable.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Personnel.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Personnel.ID & "','" & Personnel.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If BillingPosting.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & BillingPosting.ID & "','" & BillingPosting.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If BillingPosting.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & BillingPosting.ID & "','" & BillingPosting.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Costing.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Costing.ID & "','" & Costing.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Trial_Balance.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Trial_Balance.ID & "','" & Trial_Balance.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Trial_Balance.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Trial_Balance.ID & "','" & Trial_Balance.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Bank_Reconcilliation.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Bank_Reconcilliation.ID & "','" & Bank_Reconcilliation.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Credit_Collection.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Credit_Collection.ID & "','" & Credit_Collection.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Payroll_Tax.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Payroll_Tax.ID & "','" & Payroll_Tax.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If NIS_NHT.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & NIS_NHT.ID & "','" & NIS_NHT.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If PurchasingStock.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & PurchasingStock.ID & "','" & PurchasingStock.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Sales.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Sales.ID & "','" & Sales.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			REM If Filing.Checked Then
				REM sql="INSERT INTO applicant_departments (ApplicantID, Category, Name, YesNo) VALUES ('" & idApp & "','Business Experience','" & Filing.ID & "','" & Filing.Value & "' )"
				REM 'Response.Write(sql)
				REM dbcomm=New OleDbCommand(sql,dbconn)
				REM icount = dbcomm.ExecuteNonQuery
				REM 'Response.Write(icount)
			REM End If
			' resumes insert
			sql="INSERT INTO applicant_resumes (ApplicantID, Resume) VALUES ('" & idApp & "','" & appResume.Text & "')"
			'Response.Write(sql)
			dbcomm=New OleDbCommand(sql,dbconn)
			icount = dbcomm.ExecuteNonQuery
			'Response.Write(icount)
			'Response.Write(appResume.Text)
			
			'lblStatus.BackColor = "AliceBlue"
			lblStatus.Visible = True
			lblStatus.Text = "Applicant Successfully added"
		Else
			'Response.Write(iRes)
			'lblStatus.BackColor = "Red"
			lblStatus.Visible = True
			lblStatus.Text = "Applicant already exist"
		End If
		
	End Sub
End Class