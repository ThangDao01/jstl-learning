<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>



<%--2--%>
<c:import var="data" url="https://www.youtube.com/"/>
<c:out value="${data}"/>

<%--3--%>
<c:set var="data"  scope="session" value="1000"/>

<%--4--%>
<c:remove var="${data}"/>

<%--5--%>
<c:catch var="catchException">
    <% int x = 2/0;%>

</c:catch>

    <c:if test="${catchException != null}">
        <p>
            The type of exception is : ${catchException}<br/>
            there is an exception: ${catchException.message}
        </p>
    </c:if>

<%--6--%>

<c:set var="data" scope="session" value="${4000*4}"/>

<c:if test="${data > 8000}">
    <p>con me thang nam ngu: <c:out value="${data}"/></p>
</c:if>
<%--7--%>

<c:set var="data" scope="session" value="${4000*4}"/>
    <p>Your income is : <c:out value="${data}"/></p>

<c:choose>
    <c:when test="${data <= 4000}">
        this is my
    </c:when>
    <c:when test="${data > 10000}">
        this is my do
    </c:when>
    <c:otherwise>
        Income is undetermined...
    </c:otherwise>
</c:choose>


<%--8--%>
<c:forEach var="j" end="3" begin= "1" >
    <p>item: <c:out value="${j}"/>
    </p>
</c:forEach>

<%--9--%>

<c:forTokens items="is-my-to-nike" delims="-" var="name">
    <c:out value="${name}"/><p>

</c:forTokens>

<%--10--%>
<c:url value="index.jsp" var="completeURL">
<c:param name="trackingId" value="678"/>
<c:param name="user." value="Nakul"/>
</c:url>
${completeURL}

<%--11--%>
<c:set var="url" value="0" scope="session"/>
<c:if test="${url<1}">
    <c:redirect url="https://www.youtube.com/"/>
</c:if>
<c:if test="${url>1}">
    <c:redirect url="https://facebook.com"/>
</c:if>
</body>
</html>