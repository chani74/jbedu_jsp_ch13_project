/**
 * 
 */

function joinCheck() {
	if(document.joinForm.userID.value.length==0) {
		alert("아이디는 필수 입력 사항입니다.");
		document.joinForm.userID.focus();
		return false;		
	}
	if(document.joinForm.userPW.value.length==0) {
		alert("비밀번호는 필수 입력 사항입니다.");
		document.joinForm.userPW.focus();
		return false;		
	}
	if(document.joinForm.userEmail.value.length==0) {
		alert("이메일은 필수 입력 사항입니다.");
		document.joinForm.userEmail.focus();
		return false;		
	}
	return true;
}