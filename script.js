function storePosition()
{
	var yOffset = window.pageYOffset;
	document.cookie = yOffset;
}
function scrollPosition()
{
	var yOffset = document.cookie;
	window.scrollTo(0, yOffset);
}
function filter(table, column, criterion)
{
	criterion = criterion.value;
    window.location.href = encodeURI("index.php?table=" + table + "&filter=" + column + "&criterion=" + criterion);
}
function formFocus()
{
	var fieldFound = false;
	for(var i = 0; i < document.forms[0].length; i++)
	{
		if(document.forms[0][i].type != "hidden")
		{
			document.forms[0][i].focus();
			document.forms[0][i].select();
			fieldFound = true;
		}
		if (fieldFound == true) {break;}
	}
}