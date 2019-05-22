function thousands_separators()
  {
	  var n=parseInt(document.getElementById("digit").value);
	console.log(n);
    var num_parts = n.toString().split(".");
    num_parts[0] = num_parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    result= num_parts.join(".");
	console.log(result);
document.getElementById("res").value=result;
  }