<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--common Top Start//-->
<html>
<head>
<title></title>
<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>
<link rel='stylesheet' type='text/css' href='/admin/css/admin.css'>
<link rel="stylesheet" type="text/css" href="/admin/css/text_button.css">
</head>

<body bgcolor='#FFFFFF' topmargin='0' leftmargin='0'>
<!-- common Top End //-->                    
	
	 <!-- 상단 TOP Menu S -->
     <jsp:include page="/admin/common/menu_top.jsp" />
     <!-- 상단 TOP Menu E -->
    
<script type="text/javascript">

function _create_remote_frame(target_id)
{
	if (!document.getElementById("remoteFrame_" + target_id))
	{
		if (window.document.all)
		{
			var new_frame_obj = document.createElement('<IFRAME id="remoteFrame_'+ target_id +'" name="remoteTarget_'+ target_id +'" style="display:block" width=0 height=0 border=0 frameborder=0 scrolling=no marginheight=0 marginwidth=0"></IFRAME>');
		}
		else
		{
			var new_frame_obj = document.createElement("IFRAME");
			new_frame_obj.id = "remoteFrame_"+ target_id;
			new_frame_obj.name = "remoteTarget_"+ target_id;
			new_frame_obj.width = 0;
			new_frame_obj.height = 0;
			new_frame_obj.border = 0;
			new_frame_obj.frameborder = 0;
			new_frame_obj.scrolling = 0;
			new_frame_obj.marginheight = 0;
			new_frame_obj.marginwidth = 0;
			new_frame_obj.style.display = "block";
		}

		document.getElementsByTagName("body")[0].appendChild(new_frame_obj);
	}

	var frame_obj = document.getElementById("remoteFrame_" + target_id);

	return frame_obj;
}

function get_remote_page(target_id, source_url)
{
	var frame_obj = _create_remote_frame(target_id);

	frame_obj.src = source_url;
}

function displayMemberInfo(seq)
{
	get_remote_page("rpstn", "site_admin.php?do=detail_rpstn&seq=" + seq);
}

function valid_data(x)
{
	if (x.match(/^\s*$/) || x.match(/`|~|!|@|#|\$|%|\^|&|\*|\(|\)|\-|\_|\+|\=|\|\||<|>|\,|\.|\?|\/|:|;|\'|"|\[|\]|\{|\}/gi)) {
		return false;
	} else {
		return true;
	}
}


function chkRpstn()
{
	var f = document.rpstn_f;

	if (valid_data(f.master_name.value) == false) {
		alert("[담당자]를 입력하세요.");
		f.master_name.focus();
		return;
	}

	if (f.master_phone.value.match(/^\s*$/)) {
		alert("[연락처]를 입력하세요.");
		f.master_phone.focus();
		return;
	}

	if (f.master_email.value.match(/^\s*$/)) {
		alert("[이메일]를 입력하세요.");
		f.master_email.focus();
		return;
	}

	f.action = "site_admin.php?do=modify_admin_rpstn&page_load=1";
	f.submit();
}

function view(value,target)
{
	if (value == 1)
	{
		document.getElementById(target).style.display = "block";
	}
	else
	{
		document.getElementById(target).style.display = "none";
	}
}

function photo_select(form_name,outer,admin_img,img_priview,admin_use_2)
{
	var img_src = document.getElementById(admin_img).value;
	document.getElementById(img_priview).src = img_src;
	var obj = document.getElementById(img_priview);

	if( obj.src.indexOf('gif') == -1 && obj.src.indexOf('jpg') == -1 && obj.src.indexOf('jpge') == -1 && obj.src.indexOf('png') == -1)
	{
		alert('허용하지 않은 파일 타입니다.');
		document[form_name].reset();
		return false;
	}


	document.getElementById(outer).style.display='block';

	/*if (obj.height > 35)
	{
		document.getElementById(outer).style.display='none';
		alert('이미지 사이즈가 너무 큽니다. 이미지의 최대높이는 27px 입니다.');
		document[form_name].reset();
		document.getElementById(admin_use_2).checked = true;
	}
	else
	{
		document.getElementById(outer).style.display='none';
	}*/
	document.getElementById(outer).style.display='none';
}



</script>
<table border=0 cellpadding=0 cellspacing=0 width=993>
	<tr valign=top>
		<td width=175 bgcolor=F7F7F7>
			<!--왼쪽 타이틀------------------------------------------------->
			<jsp:include page="/admin/common/menu_left.jsp" />
			<!--//왼쪽 타이틀------------------------------------------------->
    
		</td>
		<td width=18><img src=/admin/img/e.gif width=18></td>
		<td>
			<!-본문 타이틀------------------------------------------------------------>
			<table border=0 cellpadding=0 cellspacing=0 width=800>
				<tr style='padding:22 0 2 0' valign=bottom>
					<td class='stitle'><img src=../img/bl_stitle.gif>&nbsp;운영자설정</td>
					<td align='right' class=history>사이트관리>사이트 운영관리>운영자설정</td></tr>
				<tr><td colspan=2 height=1 bgcolor=D9D9D9></td></tr>
			</table>

			<!--본문 내용 시작--------------------------------------------------------->
			<table border=0 cellpadding=0 cellspacing=0 width=800>
				<tr style='padding:17 0 2 0' valign=bottom>
					<td><img src=../img/bl_blue.gif><b>대표운영자</b></td>
					<td align='right'>
						<img src="http://img.cafe24.com/images/ec_admin/btn/tbtn_bg_021.gif" align="absmiddle" class="imp"><input type="button" value="대표운영자 정보수정하기" class="bt_a31 tmb12" onClick="displayMemberInfo('1'); return false;">
					</td>
				</tr>
			</table>
			<!--대표운영자설정-->
			<table border=1 cellpadding=0 cellspacing=0 width=800 style='border-collapse:collapse;' bordercolor=D3D3D3>
				<tr height='28' align=center>
					<td width='10%' bgcolor=f7f7f7>ID</td>
					<td width='13%'>builderdemo04</td><!--id-->
					<td width='10%' bgcolor=f7f7f7>이름</td>
					<td width='12%'>관리자</td>
					<td width='10%' bgcolor=f7f7f7>E-mail</td>
					<td width=15%></td>
				</tr>
			</table>

			<div id="rpstn_html"></div>



			



            
            <script language="JavaScript" type="text/JavaScript">
            <!--

                //서브밋 하기전에 폼 검사
                function valid_form(form)
                {

                    var flag=0;

                    l=form.elements.length;

                    for (i=0;i<l;i++) {
                        if (form.elements[i].checked) {
                            flag++;
                        }
                    }

                    if (flag < 1) {
                        alert('체크박스를 선택해주셔야 합니다!');
                        return false;
                    } else {

                        if(confirm('부운영자를 정말 삭제하시겠습니까?')) {
                            form.submit();
                            return true;
                        } else {
                            return false;
                        }
                    }

                }

                //모두 선택
                function select_chk()
                {

                    var is_status = true;
                    if(document.frm.allbox.checked) is_status = false;
                    for (var i=0;i<document.frm.elements.length;i++) {
                        var e = document.frm.elements[i];
                        if(is_status) e.checked=false;
                        else e.checked=true;
                    }
                    if(is_status) document.frm.allbox.checked=false;
                    else document.frm.allbox.checked=true;

                }

            -->
            </script>
            


            <FORM METHOD=POST NAME='frm' >
                                        <input type=hidden name='do' value='del_admin'>
                            <input type=hidden name='admin_total_num' value='0'>
            <!--부운영자 목록-->
            <table border=0 cellpadding=0 cellspacing=0 width=800>
                <tr style='padding:0 0 2 0' valign=bottom>
                    <td><img src=../img/bl_blue.gif><b>부운영자 목록</b></td>
                </tr>
                <tr>
                    <td>
                                                    <a href='/admin/site/site_admin.php'><img src='../img/img_subman_tab_01_on.gif'></a>
                            <a href='/admin/site/site_admin.php?mode=agency'   style='display:none;' ><img src='../img/img_subman_tab_02_off.gif'></a>
                                            </td>
                </tr>
            </table>
            <table border=1 cellpadding=0 cellspacing=0 width=800 style='border-collapse:collapse;' bordercolor=D3D3D3>
                <tr height='28' align='center'>
                    <td class='tbctr' width=7%><!--input name=allbox type=checkbox onClick='select_chk();'-->삭제대상</td>
                    <td class='tbctr' width=6%>번호</td>
                    <td class='tbctr' width=11%>아이디</td>
                    <td class='tbctr' width=8%>담당자</td>
                    <td class='tbctr' width=10%>연락처</td>
                    <td class='tbctr' width=14%>이메일</td>
                    <td class='tbctr' width=14%>레벨상태</td>
                    <td class='tbctr' width=8%>접근허용</td>
                    <td class='tbctr' width=12%>상세보기/수정</td>
                </tr>
            
            </table><br>

                        <div align='center' style="width:800px;">
                <img src="http://img.cafe24.com/images/ec_admin/btn/tbtn_bg_022.gif" align="absmiddle" class="imp"><input type="button" value="부운영자 추가" class="bt_a32 tmb22" onClick="location.href='/admin/site/site_admin.php?do=add_admin'">
                <img src="http://img.cafe24.com/images/ec_admin/btn/tbtn_bg_022.gif" align="absmiddle" class="imp"><input type="button" value="부운영자 삭제" class="bt_a32 tmb22" onClick="valid_form(this.form)">
            </div>
                        </FORM>






			<table border=0 cellpadding=0 cellspacing=0 width=800>
				<tr style='padding:0 0 2 0' valign=bottom>
					<td><img src=../img/bl_blue.gif><b>부 운영자 레벨안내</b></td>
				</tr>
			</table>
			<Div id='view'>
			<table border=1 cellpadding=3 cellspacing=0 width=800 style='border-collapse:collapse;line-height:17px' bordercolor=D3D3D3>
				<tr height='28' align='center'>
					<td class='tbctr' width='150'>레벨/권한</td>
					<td class='tbctr'>접근가능 메뉴</td>
					<td class='tbctr'>권한 설명</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 1(대표운영자)</td>
					<td class='tbcont'>빌더 관리자 어드민 전체</td>
					<td class='tbcont'>대표 운영자에게만 주어지는 권한입니다.</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 2(운영관리)</td>
					<td class='tbcont'>1. 사이트관리>사이트운영관리>운영자설정 메뉴의 접근 불가<br>
                        2. 템플릿관리 메뉴의 접근 불가
                    </td>
					<td class='tbcont'>1,2번을 제외한 빌더 전체를 관리할 수 있는 운영권한입니다.</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 3(내부/디자이너)</td>
					<td class='tbcont'>
						1. 페이지관리<br>
						2. 컴포넌트관리<br>
						3. 템플릿관리>템플릿정보>보유템플릿 목록><br>&nbsp;&nbsp;&nbsp;(접근가능 템플릿 목록만 활성)</td>
					<td class='tbcont'>운영할 디자인 템플릿의 디자인을 수정/편집할 수 있는 권한을 가진 디자인 관리 부 운영자입니다.</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 4(내부/디자이너2)</td>
					<td class='tbcont'>1. 페이지관리<br>
						2. 컴포넌트관리<br>
						3. 나의서비스관리>도메인관리<br>
						4. 사이트관리>회원가입관리>회원가입항목설정<br>
						5. 사이트관리>메일관리>전체메일보내기<br>
						6. 템플릿관리>템플릿정보>보유템플릿 목록><br>&nbsp;&nbsp;&nbsp;(접근가능 템플릿 목록만 활성)</td>
					<td class='tbcont'>레벨3보다 접근가능한 메뉴가 확대된 권한을 가진 디자인 관리 부 운영자입니다.</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 5(C/S관리)</td>
					<td class='tbcont'>1. 사이트관리> 회원가입관리<br>
					2. 사이트관리>메일관리<br>
					3. 사이트관리>SMS 관리<br>
					4. 사이트관리>접속자통계</td>
					<td class='tbcont'>사이트 운영시 사이트 이용자인 회원들과 관련된 대 고객 서비스 업무를 담당하는 권한을 가진 부 운영자입니다.</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 6(외부/디자이너1)</td>
					<td class='tbcont'>1. 페이지관리<br>2. 컴포넌트관리</td>
					<td class='tbcont'>외부에서 등록된 부 운영자로 구매한 디자인 템플릿의 유지보수를 목적으로 템플릿에 접근할 수 있는 부 운영자입니다.</td>
				</tr>
				<tr height='28'>
					<td class='tbcont'>레벨 7(외부/디자이너2)</td>
					<td class='tbcont'>1. 페이지관리<br>
					2. 컴포넌트관리<br>
					3. 나의서비스관리>도메인관리<br>
					4. 사이트관리>회원가입관리>회원가입항목설정<br>
					5. 사이트관리>메일관리>전체메일보내기<br>
					<td class='tbcont'>레벨6 보다 접근가능한 메뉴가 확대된 권한을 가진 디자인 관리 권한입니다.</td>
				</tr>
			</table>
			</div>

			<table border=3 cellpadding=7 cellspacing=0 width=800 bordercolor=ECD08A style='margin-top:40'>
				<tr><Td style='color:585858;line-height:180%;padding-left:20'>
						<b>[사용안내]</b><br>
						<b class=ol>ㆍ</b>운영자 접근권한 레벨에 따라 해당 메뉴의 접근이 통제됩니다.<br>
						                                                <b class=ol>ㆍ</b>디자인센터(d.cafe24.com)에서 구매한 디자인 템플릿인 경우, 디자인센터(d.cafe24.com)에서 부여된 접근권한자는 자동으로
                                                유지보수계약에 의해 자동 등록된 부 운영자 목록에 추가됩니다.<br>
                                                						<b class=ol>ㆍ</b>내부 등록 부 운영자 중 접근권한이 레벨 3(내부/디자이너)와 레벨4(내부/디자이너2)는  템플릿 1개 또는 다수개의 템플릿을 운영할 수 있습니다.
					</td>
				</tr>
			</table>


			<table border=0 cellpadding=0 cellspacing=0>
				<tr><td height=50></td></tr>
			</table>



			<!--본문 끝---------------------------------------------------------------------------------------->

		</td>
	</tr>
</table>

	<!--footer-->
	<jsp:include page="/admin/footer.jsp" />
	<!--//footer-->

</body>
</html>
