<%@ page contentType="text/html; charset=euc-kr" %>

<%@ page import="com.model2.mvc.service.domain.Product" %>
<%@ page import="com.model2.mvc.service.domain.Purchase" %>
<%@ page import="com.model2.mvc.service.domain.User" %>


<%
User userVO = (User)session.getAttribute("user");
System.out.println("�������̿� : " +userVO);
%>

<%
	Purchase vo2=(Purchase)request.getAttribute("purchase");
System.out.println("���ź��̿� : " +vo2);
%>



<html>
<head>
<title>Insert title here</title>
</head>

<body>

<form name="updatePurchase" action="/updatePurchaseView.do?tranNo=0" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border=1>
	<tr>
		<td>��ǰ��ȣ</td>
		<td><%=vo2.getPurchaseProd().getProdNo() %></td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<td><%=userVO.getUserId() %></td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>
		
		<%if(vo2.getPaymentOption().equals("1  ")){%>
			���ݱ���
			<%}else{ %>
				�ſ뱸��	
			 <%}%>	
			 		
		</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<td><%=vo2.getReceiverName()%></td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<td><%=vo2.getReceiverPhone()%></td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<td><%=vo2.getDivyAddr()%></td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<td><%=vo2.getDivyRequest()%></td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<td><%=vo2.getDivyDate()%></td>
		<td></td>
	</tr>
</table>
</form>

</body>
</html>