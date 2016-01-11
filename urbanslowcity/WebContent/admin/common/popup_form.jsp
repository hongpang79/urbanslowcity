<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="admin.PopupVO" %>
<%@ page import="admin.CommonDAO" %>
<%
request.setCharacterEncoding("UTF-8");
NumberFormat nf = NumberFormat.getInstance();
SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");

String cmd = request.getParameter("cmd")==null?"list":request.getParameter("cmd");
String msg = "";

if(!cmd.equals("list")){
	msg = CommonDAO.getInstance().processPopup(request);	
}
%>
<html>
<head>
<title></title>
<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>
<link rel='stylesheet' type='text/css' href='/admin/css/admin.css'>
<script language=javascript src='/admin/js/common.js'></script>
<script language=javascript src='/admin/js/admin.js'></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
</head>
<script language=javascript>
$(document).ready(
		function() {
			if($("#msg").val().length > 0){
				alert($("#msg").val());
		}
	});	
	
function deleteCheck(layerId)
{
	frm = document.bankinfo;

	if(confirm('팝업을 삭제하시겠습니까?') == true) {
		frm.cmd.value = 'delete';
		frm.layerId.value = layerId;
		frm.submit();
	}
}
function updateCheck(layerId)
{
	frm = document.bankinfo;

	if(confirm('팝업을 수정하시겠습니까?') == true) {
		frm.cmd.value = 'update';
		frm.layerId.value = layerId;
		frm.
		frm.submit();
	}
}
function formCheck()
{
		var sform = document.addform;
		
		if(sform.dvsnCd.value.length == 0)
		{
			alert('양력/음력을 선택하세요.');
			sform.dvsnCd.focus();
			return false;
		}

		if(sform.mmdd.value.length == 0)
		{
			alert('일자를 입력하세요.');
			sform.mmdd.focus();
			return false;
		}else{
			sform.mmdd.value = sform.mmdd.value.replace("-","");
		}

		if(sform.description.value.length == 0)
		{
			alert('설명을 입력하세요.');
			sform.description.focus();
			return false;
		}
}

function numnberCheck()
{


	if(event.keyCode == 109 || event.keyCode == 189)
	{
		return true;
	}
	else{
		var inp=String.fromCharCode(event.keyCode);
		if (isNaN(inp)) {
			if((event.keyCode < 96 || event.keyCode > 105) ) {
				//event.keyCode 8 => Back Space , 37 = (<-방향키) ,  39 = (->방향키)
				// [CS , TFT , YongHun Jeong , 2009-12-08]
				if( (event.keyCode !=8) && (event.keyCode !=37) && (event.keyCode !=39) ) {
					alert("숫자 또는 '-'만  입력해주세요!");
						event.returnValue=false;
				}
			}
		}
		else{
			return true;
		}
	}
}

$(function() {
	  $( "#datepicker1, #datepicker2, #datepicker3, #datepicker4").datepicker({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    dayNames: ['일','월','화','수','목','금','토'],
	    dayNamesShort: ['일','월','화','수','목','금','토'],
	    dayNamesMin: ['일','월','화','수','목','금','토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	  });
	});
</script>
<body bgcolor='#FFFFFF' topmargin='0' leftmargin='0'>
	<!--본문 내용 시작--------------------------------------------------------->
	<table border='0' cellspacing='0' cellpadding='0'>
	<tr>
		<td>
			<table border='1' cellpadding='0' cellspacing='0' width='800' style='border-collapse:collapse' bordercolor='cccccc'>
			<form name='addform' method='post' action='/admin/common/holyday_information.jsp' onSubmit='return formCheck()'>
			<input type='hidden' name='cmd' value='insert'>
				<tr height='28'>
					<td class='tbsbj' width='100'>Popup ID</td>
					<td class='tbcont'><input type='text' id='popupId' size='20' maxlength='20' name='popupId' value=""></td>
					<td class='tbsbj'>Popup명</td>
					<td class='tbcont'><input type='text' id='alt' size='30' name='alt' value=""></td>
				</tr>
				<tr height='28'>
					<td class='tbsbj'>이미지</td>
					<td colspan="3" height='28' class='tbcont'>
						<input title="input" type='file' id='imgSrc' name="imgSrc" style="border:1px solid #EAEAEA;height:20px;" maxlength="80" size="80" value=""/>
					</td>
				</tr>
				<tr height='28'>
					<td class='tbsbj'>스타일</td>
					<td colspan="3" height='28' class='tbcont'>
						<input type='text' id='style' size='87' name='style' value="">
					</td>
				</tr>
				<tr height='28'>
					<td class='tbsbj' width='100'>Usemap ID</td>
					<td class='tbcont'><input type='text' id='usemapId' size='20' maxlength='20' name='usemapId' value=""></td>
					<td class='tbsbj'>area</td>
					<td class='tbcont'><input type='text' id='area' size='30' name='area' value=""></td>
				</tr>
				<tr height='28'>
					<td class='tbsbj' width='100'>사용여부</td>
					<td class='tbcont'>
						<div style="float:left">
						<select class='txt' name='useYn'>
							<option value=''>--------</option>
							<option value='Y' >Y</option>
							<option value='N' >N</option>
						</select>
                              </div>
					</td>
					<td class='tbsbj'>공지기간</td>
					<td class='tbcont'>
						<input type="text" id="datepicker3" name="displayStartDay" size="12" value="" /> ~ 
          					<input type="text" id="datepicker4" name="displayEndDay" size="12" value="" />
          				</td>
				</tr>

			</table>
			<br>
			<div style='width:800' align='center'>
				<input type="submit" name="add_submit" value="추가하기" style="cursor:hand">
			</div>

			</form>
		</td>
	</tr>
	</table>
	<!--//무통장입금 계좌 입력-->
	<table border='3' cellpadding='7' cellspacing='0' width='800' bordercolor='ECD08A' style='margin-top:20'>
		<tr><Td style='color:585858;line-height:180%;padding-left:20'>
				<b>[사용안내]</b><br>
				<b class=ol>ㆍ</b> .
		    </td>
		</tr>
	</table>
</body>
</html>