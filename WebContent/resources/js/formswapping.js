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
	
	var bookmarks = document.getElementById("bookmarks");
	var ch = bookmarks.childNodes;
	var childrenNumber = ch.length;
	document.getElementById("js").innerHTML = "Number of Blocks within the formswap is: " + childrenNumber;
	
	var bArr = new Array(ch[1]);
	bArr[0].style.fontWeight = "bold";
	bArr[0].style.backgroundColor = "#cfcfcf";
	
	
	
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
		
		bArr.push(ch[3]);
		add_style(bArr);
		
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

		bArr.push(ch[5]);
		add_style(bArr);
		
		form1.style.visibility = "hidden";
		form2.style.visibility = "hidden";
		form3.style.visibility = "visible";
		form4.style.visibility = "hidden";
		form5.style.visibility = "hidden";
	});
	

	next3.addEventListener("click", function(){

		bArr.push(ch[7]);
		add_style(bArr);
		
		form1.style.visibility = "hidden";
		form2.style.visibility = "hidden";
		form3.style.visibility = "hidden";
		form4.style.visibility = "visible";
		form5.style.visibility = "hidden";
		

		ch[3].style.fontWeight = "bold";
		ch[3].style.backgroundColor = "#cfcfcf";
	});
	
	
	next4.addEventListener("click", function(){ 
		form1.style.visibility = "hidden";
		form2.style.visibility = "hidden";
		form3.style.visibility = "hidden";
		form4.style.visibility = "hidden";
		form5.style.visibility = "visible";
		

		ch[3].style.fontWeight = "bold";
		ch[3].style.backgroundColor = "#cfcfcf";
	});
	
}



function add_style(bookmarks){
	for(i = 0; i < bookmarks.length; i++){
		bookmarks[i].style.fontWeight = "bold";
		bookmarks[i].style.backgroundColor = "#cfcfcf";
	}
}

