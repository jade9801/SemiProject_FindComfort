<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList,qna.model.vo.*"%>
    <%
	ArrayList<Qna> list = (ArrayList<Qna>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>



<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title p {
 
  color: #333333;
  font-weight: 400;
  text-align: center;
}

.page-title h1 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

.notice{
	margin-top:100px;
}
/*?????? */
#writeNoBtn{
    background-color:-internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
      width:10%; height: 30px; /*background: 52?????? ?????????*/color: black; font-size: 15px;
      border: none; border-radius: 25px;  
  }
  #title:hover{
  	cursor:pointer;
  }



#numBtn:active{
color:black;
}




</style>
</head>


<body>

<%@ include file = "../common/menubar.jsp" %>

<section class="notice">
  <div class="page-title">
        <div class="container">
        	<h1>BOARD</h1>
            <p>?????? ??????????????????.</p>
     
        </div>
    </div>

    <!-- board seach area -->

   
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">??????</th>
                    <th scope="col" class="th-title">??????</th>
                    <th scope="col" class="th-title">?????????</th>
                    <th scope="col" class="th-num">?????????</th>
                    <th scope="col" class="th-date">?????????</th>
                    
                </tr>
                </thead>
                <tbody>
                <%if(list.isEmpty()){ %>
                <tr>
					<th class="text-center" colspan="5">???????????? ??????????????? ????????????.</th>
				</tr>
				<%}else{ %>
					<%for(Qna n : list){ %>
                <tr>
                    <td><%=n.getQnaNo()%></td>
                    <td><%=n.getQnaTitle()%></td>
                    <%if(n.getUserId() != null){ %>
                    <td><%=n.getUserId()%></td>
                    <% } else{ %>
                    <td>?????????</td>
                    <% } %>
                    <td><%=n.getQnaCount()%></td>
                    <td><%=n.getQnaDate()%></td>
                </tr>
                <%} %>
              <%} %> 
                </tbody>
            </table>
        </div>
      </div>
        <br>
     

	
	
	<!-- ????????? ?????? -->
    <div align="center">
		<input type ="button" onclick = "location.href='qna.wr'" id = "writeNoBtn" value ="?????????">
		<input type="button" id="writeNoBtn" onclick="location.href='javascript:history.go(-1);'"id="cancelBtn" value="????????????">
	</div>



<br><br>
<div class="pagingArea" align="center">
			<%-- <!-- ??? ???????????? -->
			<button onclick="location.href='<%=request.getContextPath()%>/qna.li?currentPage=1'" style = "border:none; width:30px;">&lt;&lt;</button> --%>
			<!-- ?????? ???????????? -->
			<button onclick="location.href='<%= request.getContextPath() %>/qna.li?currentPage=<%= pi.getCurrentPage()-1 %>'" id="beforeBtn" style = "border:none; background-color:white;">&lt;</button>
			<script>
				if(<%= pi.getCurrentPage() %> <= 1){
					$('#beforeBtn').prop('disabled', true).css('background-color','white');
				}
			</script>
			<!-- ?????? ???????????? -->
			<% for(int p = pi.getStartPage(); p <= pi.getEndPage(); p++){ %>
				<% if(p == pi.getCurrentPage()){ %>
					<button id="choosen" disabled style = "color:black; border:none;background-color:white;"><%= p %></button>
				<% } else{ %>
					<button id="numBtn" onclick="location.href='<%= request.getContextPath() %>/qna.li?currentPage=<%= p %>'" style = "border:none;width:30px;background-color:white;color:#aaaaaa;" ><%= p %></button>
				<% } %>
			<% } %>
			
			
			<!-- ?????? ???????????? -->
			<button onclick="location.href='<%= request.getContextPath() %>/qna.li?currentPage=<%= pi.getCurrentPage()+1 %>'" id="afterBtn" style = "border:none; background-color:white;">&gt;</button>
			<script>
				if(<%= pi.getCurrentPage() %> >= <%= pi.getMaxPage() %>){
					$('#afterBtn').prop('disabled', true);
				}
			</script>
	<%-- 		<!-- ??? ??????????????? -->
			<button onclick="location.href='<%=request.getContextPath()%>/qna.li?currentPage=<%=pi.getMaxPage()%>'" style = "border:none;width:30px;">&gt;&gt;</button> --%>

</div>
		

</section>
<script>
	$(function(){
		$('.board-table td').mouseenter(function(){
			$(this).parent().css({'background' : 'darkgray','cursor':'pointer'});
		}).mouseout(function(){
			$(this).parent().css('background' , 'none');
		}).click(function(){
		 	
			var no = $(this).parent().children().eq(0).text();
			//??????? ???????????? ????????? ?????????. ???????????? ?????? ????????????!
			location.href = '<%= request.getContextPath()%>/qna.de?no='+no;
		});
	});
</script>

  <%@ include file = "../common/footer.jsp" %>

</body>
</html>