<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Wyszukani pracownicy</title>
</head>
<body>

    <table>
        <c:forEach items="${employees}" var="employee">
            <form:form method="POST" action="/generate-vcard" modelAttribute="employee" acceptCharset="ISO-8859-1 UTF-8">
                <tr>
                    <td>Imie:</td>
                    <td>${employee.getName()}</td>
                    <td><form:input type="hidden" path="name" value="${employee.getName()}"/></td>
                </tr>
                <tr>
                    <td>Nazwisko:</td>
                    <td>${employee.getSurname()}</td>
                    <td><form:input type="hidden" path="surname" value="${employee.getSurname()}"/></td>
                </tr>
                <tr>
                    <td>Tytul naukowy:</td>
                    <td>${employee.getTitle()}</td>
                    <td><form:input type="hidden" path="title" value="${employee.getTitle()}"/></td>
                </tr>
                <tr>
                    <td>Miejsce:</td>
                    <td>${employee.getPlace()}</td>
                    <td><form:input type="hidden" path="place" value="${employee.getPlace()}"/></td>
                </tr>
                <tr>
                    <td>
                        <button type="submit">Generuj vCard</button>
                    </td>
                </tr>
            </form:form>

        </c:forEach>
    </table>

</body>
</html>
