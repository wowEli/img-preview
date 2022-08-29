<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 미리보기</title>
</head>
<body>



<input type="file" onchange="loadFile(this);"><!-- loadFile은 내가 만든 함수 -->
<hr>
<img alt="미리보기" id="preview" src=""/><!-- src 는 JS를 통해 전달할 예정 -->

<script type="text/javascript">
	function loadFile(input){
		if(input.files && input.files[0]){ // 타입이 file이라서 file 인가?
			// console.log("로그1");
			
			var fileleader = new FileReader(); // FileReader() 라는 클래스?는 그냥 쓸 수 있는 것인가?
			
			fileleader.onload = function(event){
				document.getElementById('preview').src = event.target.result; // preview라는 id를 찾아서 src속성으로 사용자가 등록한 것을 넣는다
				// console.log("로그2");
			};
			
			fileleader.readAsDataURL(input.files[0]);
			// console.log("로그3");
		}
		else{
			document.getElemenrById('preview').src =""; // src는 필수 속성이므로 처음 시작할때나 값을 안 넣을때 공백 값이라도 넣어주기
			// console.log("로그4");
		}
		
	}
</script>

</body>
</html>