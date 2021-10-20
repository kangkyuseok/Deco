<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 업로드 view</title>



<script>
    function findAddr(){
    	new daum.Postcode({
            oncomplete: function(data) {
            	
            	console.log(data);
            	
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var jibunAddr = data.jibunAddress; // 지번 주소 변수
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('member_post').value = data.zonecode;
                if(roadAddr !== ''){
                    document.getElementById("member_addr").value = roadAddr;
                } 
                else if(jibunAddr !== ''){
                    document.getElementById("member_addr").value = jibunAddr;
                }
            }
        }).open();
    }
    
    
    
</script>



</head>
<body>
		<h3>카페 추천지 등록</h3>
		<form method="post" action="cafeInsertAction.deco" >
		<table>
		<tr>
					<td><label>카페 이름</label></td>
					<!--  required 필수 입력  , readonly : 읽기만.-->
					<td><input type="text" name="name" placeholder="카페 이름(필수)"
						required></td>
				</tr>
				<tr>
					<td><label>카페 주소</label></td>
					<td><input name="addr" type="button" id="member_post" placeholder="상세검색(클릭)" readonly onclick="findAddr()">
 							<input name="addr" id="member_addr" placeholder="<상세검색(클릭)" ></td>
				</tr>
				<tr> 
				 <td> <label>카페 지역명</label> </td>
				 <td> <input type ="text" name="location"></td>
				</tr>
				<tr>
					<td><label>카페 메뉴</label></td>
					<td><textarea rows="5" cols="50" placeholder ="메뉴를 작성해주세요"
 					class="input" name="menu"required></textarea></td>
				</tr>
				<tr> 
					<td><label>카페 평점</label> </td>
					<td> <input type ="number" name="grade" min ="1" max="5"> </td>
				
				</tr>
				<tr>
					<td><label>카페 전화번호</label></td>
					<td><input type="text" name="phone" placeholder="전화번호 입력"></td>
				</tr>
				<tr>
					<td><label>카페 OPEN 시간</label></td>
					<td><input type="time" name="opentime" placeholder="영업시간 입력"></td>
				</tr>
				<tr>
					<td><label>카페 CLOSE 시간</label></td>
					<td><input type="time" name="closetime" placeholder="영업시간 입력"></td>
				</tr>
				<tr>
					<td><label>카페 설명</label></td>
					<td><textarea rows="3" cols="80" placeholder ="내용을 작성해 주세요"
 					class="input"  name ="content" required></textarea></td>
				</tr>
				<tr>
					<td><lable>사진 등록</lable></td>
					<td><input type="file" name="pic" accept="image/*" placeholder="이미지 파일을 선택해주세요"></td>
				</tr>
				
				<tr> 
				<td> 
					<input type="submit" value="저장" class="">
					<input type="reset" value="다시쓰기" class="">
					<input type="button" value="목록" onclick="location.href='list.deco'" class="">
				 </td>
				</tr>
				
				</table>
				
				

</form>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>			

</body>
</html>