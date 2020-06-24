<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<!DOCTYPE html>

<html>

<head>
    <link rel="stylesheet" href="webjars/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>List Tasks</title>

    <!-- reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="../../../resources/static/css/css/style.css" />

</head>

<body>
<style type="text/css">
    table,th,td {
        border-style:solid;
        width: 5%;



    }

    button
    {
        margin: 10px;
        padding:10px;

    }


    /* visited link */
    a:visited {
        color: green;

    }
    a:link, a:visited {
        background-color: black;
        color: white;
        padding: 14px 25px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
    }
</style>

<div id="wrapper">
    <div id="header">
        <h2 style="text-align: center">Task Manager Home</h2>
    </div>
</div>

<br/><br/>
<div id="container">
    <div id="content">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Task Id</th>
                <th scope="col">Task Name</th>
                <th scope="col">Start Date</th>
                <th scope="col">End Date</th>
                <th scope="col">Task Status</th>
                <th scope="col">Task Priority</th>
                <th scope="col">Action</th>


            </tr>

            <c:forEach var="tempTask" items="${tasks}">
            <c:url var="updateLink" value="/task/showFormForUpdate">
                <c:param name="taskId" value="${tempTask.id}" />
            </c:url>
            <c:url var="deleteLink" value="/task/delete">
                <c:param name="taskId" value="${tempTask.id}" />
            </c:url>
            <tr>
                <td> ${tempTask.id} </td>
                <td> ${tempTask.taskName} </td>
                <td> ${tempTask.startDate} </td>
                <td> ${tempTask.endDate} </td>
                <td> ${tempTask.taskStatus}</td>
                <td> ${tempTask.priority}</td>



                <td>
                    <a href="${updateLink}">Update</a>
                    <a href="${deleteLink}">Delete</a>
                </td>

            </tr>

            </c:forEach>

        </table>

    </div>

</div>


</body>
<%@ include file="common/footer.jspf"%>

</html>







