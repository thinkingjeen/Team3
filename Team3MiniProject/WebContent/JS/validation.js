function infoConfirm(){
	if(document.signUp_frm.id.value.length==0){
		alert("아이디는 필수사항입니다.");
		signUp_frm.id.focus();
		return false;
	}
	
	if(document.signUp_frm.id.value.length<4){
		alert("아이디는 4글자 이상이어야 합니다.");
		signUp_frm.id.focus();
		return false;
	}

	if(document.signUp_frm.pw.value.length==0){
		alert("비밀번호는 필수사항입니다.");
		signUp_frm.pw.focus();
		return false;
	}
	
	if(document.signUp_frm.pw.value.length<4 || document.signUp_frm.pw.value.length>16){
		alert("비밀번호는 4~16글자여야 합니다.");
		signUp_frm.pw.focus();
		return false;
	}
	
	if(document.signUp_frm.pw.value != document.signUp_frm.confirmPw.value){
		alert("비밀번호가 일치하지 않습니다.");
		signUp_frm.confirmPw.focus();
		return false;
	}
	
	if(document.signUp_frm.name.value.length==0){
		alert("이름은 필수사항입니다.");
		signUp_frm.name.focus();
		return false;
	}
	
	if(document.signUp_frm.name.value.length<2 || document.signUp_frm.name.value.length>5){
		alert("이름은 2~5글자여야 합니다.");
		signUp_frm.name.focus();
		return false;
	}
	
	if(document.signUp_frm.phone.value.length==0){
		alert("전화번호는 필수사항입니다.");
		signUp_frm.phone.focus();
		return false;
	}

	if(document.signUp_frm.eMail.value.length==0){
		alert("메일은 필수사항입니다.");
		signUp_frm.email.focus();
		return false;
	}
	
	if(document.signUp_frm.address.value.length==0){
		alert("주소는 필수사항입니다.");
		signUp_frm.address.focus();
		return false;
	}
}

function updateInfoConfirm(){
	if(document.update_frm.pw.value==""){
		alert("패스워드를 입력하세요.");
		update_frm.pw.focus();
		return;
	}
	
	if(document.update_frm.pw.value.length<4 || document.update_frm.pw.value.length>16){
		alert("비밀번호는 4~16글자여야 합니다.");
		update_frm.pw.focus();
		return;
	}
	
	if(document.update_frm.pw.value != document.update_frm.confirmPw.value){
		alert("비밀번호가 일치하지 않습니다.");
		update_frm.confirmPw.focus();
		return;
	}
	
	if(document.update_frm.name.value.length==0){
		alert("이름은 필수사항입니다.");
		update_frm.name.focus();
		return;
	}
	
	if(document.update_frm.name.value.length<2 || document.update_frm.name.value.length>5){
		alert("이름은 2~5글자여야 합니다.");
		update_frm.name.focus();
		return;
	}
	
	if(document.update_frm.phone.value.length==0){
		alert("전화번호는 필수사항입니다.");
		update_frm.phone.focus();
		return;
	}

	if(document.update_frm.eMail.value.length == 0){
		alert("메일은 필수사항입니다..");
		update_frm.eMail.focus();
		return;
	}
	
	if(document.update_frm.address.value.length == 0){
		alert("주소는 필수사항입니다..");
		update_frm.address.focus();
		return;
	}
	
	document.update_frm.submit();
}