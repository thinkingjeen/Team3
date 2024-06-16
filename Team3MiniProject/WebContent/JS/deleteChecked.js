function test(){
	const query = 'input[type="checkbox"]:checked';
	const selectedEls = document.querySelectorAll(query);
	
	alert(selectedEls[0].value);
}