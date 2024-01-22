<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import=test.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean ab =(AdminBean)session.getAttribute("abean");
ArrayList<BookBean> al =(ArrayList<BookBean>)session.getAttribute("alist");
out.println("Page belongs to : "+ab.getfName()+"<br>");
if(al.size()==0)
{
out.println("Books Not Available...<br>");
}
else
{
Iterator<BookBean> it = al.iterator();
while(it.hasNext()){
BookBean bb = it.next();
out.println(bb.getCode()+"&nbsp&nbsp"+bb.getName()+"&nbsp&nbsp"+bb.getAuthor()+"&nbsp&nbsp"+bb.getPrice()+"&nbsp&nbsp"+bb.getQty()+"&nbsp&nbsp"+"<a href='edit?bcode="+bb.getCode()+"'>Edit</a>"+"&nbsp&nbsp"+"<ahref='delete?bcode="+bb.getCode()+"'>Delete</a>"+"<br>"
);
}
}
%>
<a href="logout">Logout</a>

</body>
</html>