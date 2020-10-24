<%@page import="www.jcoding.kr.Book"%>
<%@page import="java.util.List"%>
<%@page import="www.jcoding.kr.BookController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BookController controller = new BookController();
List<Book> bookList = controller.selectBooks();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>id</th>
				<th>저자</th>
				<th>제목</th>
				<th>대표이미지</th>
			</tr>
		</thead>
		<tbody>
			<%
			for(int i=0; i<bookList.size(); i++){
				Book book = bookList.get(i);
			%>
			<tr>
				<td><%=book.getId() %></td>
				<td><%=book.getWriter() %></td>
				<td><%=book.getTitle() %></td>
				<td>
					<img alt="" src="<%=book.getImage0()%>" width="50px" height="50px">
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>