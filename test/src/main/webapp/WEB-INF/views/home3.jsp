<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<meta charset="utf-8">
<head>
<title>ㅋㅋㅋ</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<style>
body {
	background-color: pink;
}
</style>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
/* 	 window.onload = function() {
		var del = [ '\\\\', '?', '정품', '인증', '배송', '할인', '착불', '추천', '가성비',
				'경옥고', '직거래', '산지직송', '산지 직송', 'V라인', 'V 라인', '해외여행', '해외 여행',
				'전기충격기', '전기 충격기', '고급', '인기', '사은품', '브랜드', '도촬', 'v라인',
				'v 라인', '마약', '아토피', '무농약', '유기농', '무이자', '무료배송', '무료 배송',
				'군복', '피부재생', '피부 재생', '남성용품', '남성 용품', '비만', '변비', '다이어트',
				'체중감량', '여드름', '특가', '반품', '(해외)', '해외', '발송', '당일발송', '당일 발송',
				'항균', '화신효도의자', '당일배송', '당일 배송', '웰파인', '다이어트보조제', '다이어트도시락',
				'물뽕', '다이어트식품', '안전벨트 확장 클립', '안전벨트 확장', '저농약', '무항생제', '권총',
				'보조 기구', '보조기구', '음낭', '군인용품', '군인 용품', '무좀', '발기' ];
		document.getElementById("p_test").innerHTML = "<p style='color:red;text-align:left;'>필터: </p>"
				+ del;
	} */
	function dedupe_list() {
		var count = 0;
		var mainlist = document.form1.mainlist.value;
		mainlist = mainlist.replace(/\/+/g, " ");
//		mainlist = mainlist.replace(/ /g, '');
//		mainlist = mainlist.replace(/\n/mg, '\r');
		mainlist = mainlist.replace(/\\|\?|\"|\'|\,|\.|\" "/g, " ");
		mainlist = mainlist
				.replace(
						/정품|인증|배송|할인|착불|추천|가성비|경옥고|직거래|산지직송|산지 직송|V라인|V 라인|해외여행|해외 여행|무료|보조제|당일/g,
						"");
		mainlist = mainlist
				.replace(
						/전기충격기|전기 충격기|고급|인기|사은품|브랜드|도촬|v라인|v 라인|마약|아토피|무농약|유기농|무이자|무료배송|무료 배송/g,
						"");
		mainlist = mainlist
				.replace(
						/군복|피부재생|피부 재생|남성용품|남성 용품|비만|변비|다이어트|체중감량|여드름|특가|반품|(해외)|해외|발송|당일발송|당일 발송/g,
						"");
		mainlist = mainlist
				.replace(
						/항균|화신효도의자|당일배송|당일 배송|웰파인|다이어트보조제|다이어트도시락|물뽕|다이어트식품|안전벨트 확장 클립|안전벨트 확장|저농약/g,
						"");
		mainlist = mainlist.replace(/무항생제|권총|보조 기구|보조기구|음낭|군인용품|군인 용품|무좀|발기/g,
				"");
		var newlist = new Array();
		var newlist2 = new Array();
		var listvalues = mainlist.split("");
//		mainlist = mainlist.replace(/ /g, '');
		var listvalues2 = mainlist.replace(/ /g,'/');
		var listvalues2 = listvalues2.split("/");
		
		
		var hash = new Object();
		for ( var i in listvalues) {
			if (hash[listvalues[i]] != 1) {
				newlist = newlist.concat(listvalues[i]);
				hash[listvalues[i]] = 1;
			} else {
				count++;
			}
		}
		var hash = new Object();
		for ( var j in listvalues2) {
			if (hash[listvalues2[j]] != 1) {
				newlist2 = newlist2.concat(listvalues2[j]);
				hash[listvalues2[j]] = 1;
			} else {
				count++;
			}
		}
		document.form1.mainlist.value = newlist.join("");
		document.getElementById("result").innerHTML  = newlist2.join(" ");
		alert(count);
	}
</script>
<body>
</HEAD>

	<p style="width: 1300; font-size: 15px; text-align: left;margin-left:100px;" id="p_test"></p>
<div style="width:1980; float: left;">
	
<div style="width: 650px; height: 680px; border: 1px solid black;float: left;background-color: white; margin-left: 100px;">
	<div style="text-align: left; width: 650px; height:600px;" >
	<TEXTAREA name="result" id="result" style="width:650; height:640;font-weight: bold;"></TEXTAREA>
	</div>
	</div>
	<div style=" width:650px;float: left;">
	<FORM ACTION="" NAME="form1" ID="form1">
		<TABLE style="border:1px solid black;" BORDERCOLOR="#FF0000" BGCOLOR="#FFFFFF">
			<TR>
				<TD style="text-align: center;">입력&수정<BR>
					<P>
						<TEXTAREA NAME="mainlist" style="width:650; height: 600;font-weight: bold;"
							id="tsetName"></TEXTAREA></TD>
			</TR>
			<TR>
				<TD align="center"><input type="button"
					onClick="dedupe_list();" value="정리"
					style="font-size: 20px; color: white; background-color: blue; width: 400;"></TD>
			</TR>
		</TABLE>
</FORM>
</div>

</div>
</body>
</html>