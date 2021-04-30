// 컨택참가(bid) 관련 스크립트
// 마감시간 카운트 다운
const countDownTimer = function (id, date) { 
	//alert('체크');
	var _vDate = new Date(date); // 전달 받은 일자 
	var _second = 1000; 
	var _minute = _second * 60; 
	var _hour = _minute * 60; 
	var _day = _hour * 24; 
	var timer; 
	function showRemaining() { 
		var now = new Date(); 
		var distDt = _vDate.setDate(_vDate.getDate()+1) - now; 
		if (distDt < 0) { 
			clearInterval(timer); 
			tag2.textContent = '마감 완료'; 
			tag_button.textContent = '　마감　';
			tag_button.style = 'pointer-events: none; cursor: default; border: 1px solid grey; color: grey;';
			return; 
		} 
		var days = Math.floor(distDt / _day); 
		var hours = Math.floor((distDt % _day) / _hour); 
		var minutes = Math.floor((distDt % _hour) / _minute); 
		var seconds = Math.floor((distDt % _minute) / _second); 
		//document.getElementById(id).textContent = date.toLocaleString() + "까지 : "; 
		tag1.textContent = hours + '시간 '; 
		tag1.textContent += minutes + '분 '; 
		tag1.textContent += seconds + '초'; } 
		timer = setInterval(showRemaining, 10); 
} 
var dateObj = new Date(); 
dateObj.setDate(dateObj.getDate() + 1); 
var tag1 = document.getElementById("count_time");
var tag2 = document.getElementById("count_time_con");
var tag_button = document.getElementById("bid");
console.log(tag2);
countDownTimer('count_time', tag1.textContent); 


// 입찰
$(function() {
	$("#bid").click(function() {
		let param = {
			lvc : $("#count_time_con").text().trim(),
			lastValue : $("#lastValue").text().trim(),
			hostId : $("#hostId").text().trim(),
			memberId : $("#memberId").text().trim(),
			loginFlag : $("#loginFlag").text().trim(),
			bidPrice : $("#bid_price").val().trim()
		};
	
		$.ajax({
			type : 'post',
			data : param,
			url : 'bid_after.do',
			// json : 라이브러리 필요
			success : parseData
		});
	
		function parseData(result) {
//			alert("parseData 실행" + result);
			$("#bid_result").text(result);
			//$("#bid_price").css('color','red');
		}
	})
})
