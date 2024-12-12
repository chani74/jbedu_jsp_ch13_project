/**
 * 
 */
function loginCheck() {
	
	if(document.loginForm.admindID.value.length==0){
		alert("관리자 아이디는 필수 입력 사항입니다.");
		document.loginForm.admindID.focus();
		return false;
	}

	if(document.loginForm.admindPW.value.length==0){
		alert("관리자 패스워드는 필수 입력 사항입니다.");
		document.loginForm.admindPW.focus();
		return false;
	}
	
	return true;
	
}