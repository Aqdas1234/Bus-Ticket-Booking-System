
		var flag= false;
		
		function NameCheck()
		{
			//var flag = false;
			if(document.getElementById("fname").value == '')
			{
				document.getElementById("NameErr").innerHTML = "Enter name please";
				flag = false;
			}else{
				document.getElementById("NameErr").innerHTML = "";
				flag= true;
			}
			
			return flag;
		}
		
		function emailCheck(){
		  
		  if(document.getElementById("email").value == '')
			{
				document.getElementById("emailErr").innerHTML = "Enter email please";
				flag = false;
				return flag;
			}else{
				document.getElementById("emailErr").innerHTML = "";
				flag= true;
			}
		  
			let mail = document.getElementById("email").value;
			let at = mail.indexOf("@");
			let	dot = mail.indexOf(".");
			
			if (at> 0 && dot>at+1 && mail.length>dot)
			{
				document.getElementById("emailErr").innerHTML = "";
				flag = true;
			}else{
			document.getElementById("emailErr").innerHTML = "invalid";
			flag = false;}	
			
			return flag;
		}
		
		function pwsdCheck(){
			
			if (document.getElementById("pwsd").value == document.getElementById("cpwsd").value)
			{
				document.getElementById("pwsdErr").innerHTML = '';
				flag = true;
			}else{
			document.getElementById("pwsdErr").innerHTML = "password does not match";
			flag = false;}
			
			return flag;
		}
		function psd()
		{
			if (document.getElementById("pwsd").value == '')
			{document.getElementById("psdErr").innerHTML = "Enter password please";
			flag = false;
			}else{
			document.getElementById("psdErr").innerHTML = '';
			flag = true;
			}
			
			return flag;
		}
		function check()
		{	
			let flag1 = NameCheck();
			let flag3 = emailCheck();
			let flag4 = psd();
			let flag5 = pwsdCheck();
			return flag1&&flag3&&flag4&&flag5;
		}
	
	
	
	var flag2 = false;
	
	function emailValidator(){
			if(document.getElementById("email1").value == '')
			{
				document.getElementById("emailError").innerHTML = "Enter email please";
				flag2 = false;
				return flag2;
			}else{
				document.getElementById("emailError").innerHTML = "";
				flag2= true;
			}
		  
			let mail = document.getElementById("email1").value;
			let at = mail.indexOf("@");
			let	dot = mail.indexOf(".");
			
			if (at> 0 && dot>at+1 && mail.length>dot)
			{
				document.getElementById("emailError").innerHTML = "";
				flag2 = true;
			}else{
			document.getElementById("emailError").innerHTML = "invalid";
			flag2 = false;}	
			return flag2;
	}
	
	function pwsdValidator(){
		if (document.getElementById("pwsd1").value == '')
			{document.getElementById("pwsdError").innerHTML = "Enter password please";
			flag2 = false;
			}else{
			document.getElementById("pwsdError").innerHTML = '';
			flag2 = true;
			}
			
			return flag2;
	}
	function validate()
		{
		let flag6 = emailValidator();
		let flag7 = pwsdValidator();
		return flag6&&flag7;
		}
	