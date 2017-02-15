/**
 * 
 */

{
	/*
	var navbar = document.getElementById("nav");
	var c = navbar.childNodes;
	
	var childrenNumber = c.length;
	
	document.getElementById("js").innerHTML = "Number of Blocks within the formswap is: " + childrenNumber;
	
	*/
	
	var form1 = document.getElementById("form1");
	var form2 = document.getElementById("form2");
	var form3 = document.getElementById("form3");
	var form4 = document.getElementById("form4");
	var form5 = document.getElementById("form5");
	
	var next1 = document.getElementById("next1");
	var next2 = document.getElementById("next2");
	var next3 = document.getElementById("next3");
	var next4 = document.getElementById("next4");
	
	next1.addEventListener("click", function(){ 
		form1.style.visibility = "hidden";
		form2.style.visibility = "visible";
		form3.style.visibility = "hidden";
		form4.style.visibility = "hidden";
		form5.style.visibility = "hidden";
		
		/*
		c[1].style.color="#00ff00";
		c[1].style.fontWeight = "bold";
		*/
	});
	

	next2.addEventListener("click", function(){ 
		form1.style.visibility = "hidden";
		form2.style.visibility = "hidden";
		form3.style.visibility = "visible";
		form4.style.visibility = "hidden";
		form5.style.visibility = "hidden";
	});
	

	next3.addEventListener("click", function(){ 
		form1.style.visibility = "hidden";
		form2.style.visibility = "hidden";
		form3.style.visibility = "hidden";
		form4.style.visibility = "visible";
		form5.style.visibility = "hidden";
	});
	
	
	next4.addEventListener("click", function(){ 
		form1.style.visibility = "hidden";
		form2.style.visibility = "hidden";
		form3.style.visibility = "hidden";
		form4.style.visibility = "hidden";
		form5.style.visibility = "visible";
	});
	
}