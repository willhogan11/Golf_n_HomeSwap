/**
 * 
 */

{
	var formsBlock = document.getElementById("formswap");
	var c = formsBlock.childNodes;
	
	var next1 = document.getElementById("next1");
	var next2 = document.getElementById("next2");
	var next3 = document.getElementById("next3");
	
	next1.addEventListener("click", function(){ 
		c[1].style.visibility = "hidden";
		c[3].style.visibility = "visible";
		c[5].style.visibility = "hidden";
		c[7].style.visibility = "hidden";
	});
	

	next2.addEventListener("click", function(){ 
		c[1].style.visibility = "hidden";
		c[3].style.visibility = "hidden";
		c[5].style.visibility = "visible";
		c[7].style.visibility = "hidden";
	});
	

	next3.addEventListener("click", function(){ 
		c[1].style.visibility = "hidden";
		c[3].style.visibility = "hidden";
		c[5].style.visibility = "hidden";
		c[7].style.visibility = "visible";
	});
	
	/*
	var childrenNumber = formsBlock.childNodes.length;
	
	document.getElementById("js").innerHTML = "Number of Blocks within the formswap is: " + childrenNumber;
	*/
}