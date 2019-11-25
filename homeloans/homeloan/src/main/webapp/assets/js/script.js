function initTab() {
	
	document.getElementById("tab1").checked = true;
}

function displayFields() {
		var typeofemp = document.getElementById("typeofemp").value;
		if(typeofemp == "salaried") {
			document.getElementById("field1").style.display = 'block';
			document.getElementById("field2").style.display = 'block';
			document.getElementById("field7").style.display = 'block';
			//document.getElementById("field8").style.display = 'none';
			document.getElementById("field3").style.display = 'none';
			document.getElementById("field4").style.display = 'none';
			document.getElementById("field5").style.display = 'none';
			//document.getElementById("field6").style.display = 'none';
			
			document.getElementById("toe").style.display = 'block';
			
		}
		else if(typeofemp == "self-employed") {
			
			document.getElementById("field3").style.display = 'block';
			document.getElementById("field4").style.display = 'block';
			document.getElementById("field5").style.display = 'block';
			document.getElementById("field1").style.display = 'none';
			document.getElementById("field2").style.display = 'none';
			//document.getElementById("field6").style.display = 'none';
			document.getElementById("field7").style.display = 'none';
			//document.getElementById("field8").style.display = 'none';
			document.getElementById("toe").style.display = 'block';
		}
		else if(typeofemp == "-1") {
			document.getElementById("field1").style.display = 'none';
			document.getElementById("field2").style.display = 'none';
			document.getElementById("field3").style.display = 'none';
			document.getElementById("field4").style.display = 'none';
			document.getElementById("field5").style.display = 'none';
			//document.getElementById("field6").style.display = 'none';
			document.getElementById("field7").style.display = 'none';
			//document.getElementById("field8").style.display = 'none';
		}
		//alert(typeofemp);
}

function validatePersonal() {
	//alert('hi');
	/*
	 * Phone number validations
	 */
	var phone = document.getElementById("phone").value;
	var flag = 0;
	var phone_regex = "/^[0-9]{10}$/";
	var text_regex = "/^[a-zA-Z]$/";
	
	document.getElementById("error_phone").innerHTML = "";
	//alert(phone);
	if(phone == "") {
		
		document.getElementById("error_phone").innerHTML = "! Please fill out this field";
		document.getElementById("error_phone").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	else if(phone.length < 10) {
		
		document.getElementById("error_phone").innerHTML = "! Please enter 10-digit phone number";
		document.getElementById("error_phone").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	
	/*
	 * Date of Birth validations
	 */
	var dob = document.getElementById("dob").value;
	//alert(dob);
	var dob_year = dob.split("-");
	//alert(dob_year[0]);
	var curr_year = new Date().getFullYear();
	
	/*if(dob == "") {
		
		document.getElementById("error_phone").innerHTML = "! Please fill out this field";
		document.getElementById("error_phone").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}*/
	
	if(dob_year[0] >= curr_year) {
		
		document.getElementById("error_dob").innerHTML = "! Please enter valid Date of Birth";
		document.getElementById("error_dob").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	var age = curr_year - dob_year[0];
	if(age < 21) {
		
		document.getElementById("error_dob").innerHTML = "! Age must be greater than 21";
		document.getElementById("error_dob").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	} 
	
	/*
	 * Nationality validations
	 */
	var nationality = document.getElementById("nationality").value;
	document.getElementById("error_nat").innerHTML = "";
	if(nationality == "") {
		
		document.getElementById("error_nat").innerHTML = "! Please fill out this field";
		document.getElementById("error_nat").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	//var aadhar_regex = /^[0-9]{12}$/;
	var aadharno = document.getElementById("aadharno").value;
	document.getElementById("error_aadhar").innerHTML = "";
	//alert(aadharno);
	if(aadharno == "") {
		
		document.getElementById("error_aadhar").innerHTML = "! Please fill out this field";
		document.getElementById("error_aadhar").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
		//alert('aaa');
	}
	
	else if(aadharno.length < 12) {
		
		document.getElementById("error_aadhar").innerHTML = "! Please enter your 12-digit Aadhar Number";
		document.getElementById("error_aadhar").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
		//alert('kkkk');
	}
	
	//var pan_regex = "/^[A-Z]{5}+{0-9}{4}+[A-Z]{1}$/";
	var panno = document.getElementById("panno").value;
	document.getElementById("error_pan").innerHTML = "";
	//alert(aadharno);
	if(panno == "") {
		
		document.getElementById("error_pan").innerHTML = "! Please fill out this field";
		document.getElementById("error_pan").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	/*else if(pan_regex.test(panno)) {
		
		document.getElementById("error_pan").innerHTML = "! Please enter valid PAN Number";
		document.getElementById("error_pan").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}*/
	//alert(flag);
	if(flag===1)
		return false;
	else {
		document.getElementById("tab1").checked = false;
		document.getElementById("tab2").checked = true;
		return true;
	}
	
}

function validateIncome() {
	
	var flag = 0;
	var typeofemp = document.getElementById("typeofemp").value; 
	document.getElementById("error_toe").innerHTML = "";
	
	if(typeofemp == "-1") {
		
		document.getElementById("error_toe").innerHTML = "! Please select Type of Employment";
		document.getElementById("error_toe").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	else if(typeofemp == "salaried") {
		
		var retirement_age = document.getElementById("retire").value;
		document.getElementById("error_rage").innerHTML = "";
		
		if(retirement_age == "-1") {
			
			document.getElementById("error_rage").innerHTML = "! Please select retirement age";
			document.getElementById("error_rage").style.cssText = "color: red; font-size: 13px; font-family: arial";
			flag = 1;
		}
		
		var monthly_salary = document.getElementById("msal").value;
		document.getElementById("error_sal").innerHTML = "";
		
		if(monthly_salary == "") {
			
			document.getElementById("error_sal").innerHTML = "! Please enter your monthly income";
			document.getElementById("error_sal").style.cssText = "color: red; font-size: 13px; font-family: arial";
			flag = 1;
		}
		
		var otype = document.getElementById("otype").value;
		document.getElementById("error_otype").innerHTML = "";
		
		if(otype == "-1") {
			
			document.getElementById("error_otype").innerHTML = "! Please select organization type";
			document.getElementById("error_otype").style.cssText = "color: red; font-size: 13px; font-family: arial";
			flag = 1;
		}
	}
	
	else if(typeofemp == "self-employed") {
		
		var turnover = document.getElementById("turnover").value;
		document.getElementById("error_turnover").innerHTML = "";
		//var trunover_regex = "/^[0-9]/$";
		
		if(turnover == "") {
			
			document.getElementById("error_turnover").innerHTML = "! Please enter your annual turnover";
			document.getElementById("error_turnover").style.cssText = "color: red; font-size: 13px; font-family: arial";
			flag = 1;
		}
		
		var nob = document.getElementById("nob").value;
		document.getElementById("error_nob").innerHTML = "";
		
		if(nob == "-1") {
			
			document.getElementById("error_nob").innerHTML = "! Please select nature of business";
			document.getElementById("error_nob").style.cssText = "color: red; font-size: 13px; font-family: arial";
			flag = 1;
		}
		
		var vintage = document.getElementById("vintage").value;
		document.getElementById("error_vintage").innerHTML = "";
		
		if(vintage == "") {
			
			document.getElementById("error_vintage").innerHTML = "! Please enter business vintage";
			document.getElementById("error_vintage").style.cssText = "color: red; font-size: 13px; font-family: arial";
			flag = 1;
		}
	}
	
	
	if(flag === 1)
		return false;
	else {
		document.getElementById("tab1").checked = false;
		document.getElementById("tab2").checked = false;
		document.getElementById("tab3").checked = true;
		return true;
	}
}


function displayProps() {
	
	var prop = document.getElementById("prop");
	
	//yes checked
	if(prop.checked == true) {
		
		document.getElementById("prop1").style.display = 'block';
		document.getElementById("prop2").style.display = 'block';
		document.getElementById("prop3").style.display = 'block';
	}
	else {
		
		document.getElementById("prop1").style.display = 'none';
		document.getElementById("prop2").style.display = 'none';
		document.getElementById("prop3").style.display = 'none';
		
		document.getElementById("tab1").checked = false;
		document.getElementById("tab2").checked = false;
		document.getElementById("tab3").checked = false;
		document.getElementById("tab4").checked = true;
	}
}

function validateProps() {
	
	var flag = 0;
	var ploc = document.getElementById("ploc").value;
	document.getElementById("error_ploc").innerHTML = "";
	
	if(ploc == "-1") {
		
		document.getElementById("error_ploc").innerHTML = "! Please select the location of your property";
		document.getElementById("error_ploc").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	var pname = document.getElementById("pname").value;
	document.getElementById("error_pname").innerHTML = "";
	
	if(pname == "") {
		
		document.getElementById("error_pname").innerHTML = "! Please enter property name";
		document.getElementById("error_pname").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	var eamt = document.getElementById("eamt").value;
	document.getElementById("error_eamt").innerHTML = "";
	
	if(eamt == "") {
		
		document.getElementById("error_eamt").innerHTML = "! Please enter property cost";
		document.getElementById("error_eamt").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	if(flag === 1)
		return false;
	else {
		document.getElementById("tab1").checked = false;
		document.getElementById("tab2").checked = false;
		document.getElementById("tab3").checked = false;
		document.getElementById("tab4").checked = true;
		return true;
	}
}

function validateLoan() {
	
	var flag = 0;
	var lamt = document.getElementById("lamt").value;
	document.getElementById("error_lamt").innerHTML = "";
	
	if(lamt == "") {
		
		document.getElementById("error_lamt").innerHTML = "! Please enter expected loan amount";
		document.getElementById("error_lamt").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	var downpayment = document.getElementById("downpayment").value;
	document.getElementById("error_dp").innerHTML = "";
	
	if(downpayment == "") {
		
		document.getElementById("error_dp").innerHTML = "! Please enter the down payment you can pay";
		document.getElementById("error_dp").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	var downpayment_pct = document.getElementById("downpayment_pct").value;
	document.getElementById("error_pct").innerHTML = "";
	
	if(downpayment_pct == "") {
		
		document.getElementById("error_pct").innerHTML = "! Please enter the down payment percentage";
		document.getElementById("error_pct").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	var tenure = document.getElementById("tenure").value;
	document.getElementById("error_tenure").innerHTML = "";
	
	if(tenure == "") {
		
		document.getElementById("error_tenure").innerHTML = "! Please enter period of loan in months";
		document.getElementById("error_tenure").style.cssText = "color: red; font-size: 13px; font-family: arial";
		flag = 1;
	}
	
	if(flag === 1)
		return false;
	else {
		document.getElementById("tab1").checked = false;
		document.getElementById("tab2").checked = false;
		document.getElementById("tab3").checked = false;
		document.getElementById("tab4").checked = false;
		document.getElementById("tab5").checked = true;
		return true;
	}
}