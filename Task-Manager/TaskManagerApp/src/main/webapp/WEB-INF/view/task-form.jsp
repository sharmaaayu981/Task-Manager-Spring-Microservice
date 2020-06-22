<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>



<!DOCTYPE html>
<html>

<head>
    <title>Save Task</title>

    <link type="text/css"
          rel="stylesheet"
          href="../../../resources/static/css/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="../../../resources/static/css/css/add-task-style.css">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>
<style type="text/css">

    form {
        margin-top: 20px;
        width: 300px;
        height: 350px;
        margin-left: 40%;
    }

    form-group {
        margin-top: 10px;
    }

    span{
        width: 50%;
        display:inline-block;
        width: 200px;
        text-align: left;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        align-self: auto;
    }
    a:link, a:visited {
        background-color: black;
        color: white;
        padding: 10px 20px;
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

<div  style="border-style: solid" id="container">
    <h3 style="text-align: center">New Task</h3>

    <form:form action="saveTask" modelAttribute="task" method="POST">
        <form:hidden path="id" />
        <div class="form-group">
            <label>Task Name:</label>
            <form:input path="taskName"/>

        </div>
        <br/>
        <div class="form-group">
            <label>Start Date:</label>
            <form:input path="startDate"/>

        </div>
        <br/>
        <div class="form-group">
            <label>End Date:</label>
            <form:input path="endDate"/>

        </div>
        <br/>
        <div class="form-group">
            <label>Task Status:</label>
            <form:input path="taskStatus"/>

        </div>
        <br/>
        <div class="form-group">
            <label>Task Priority:</label>
            <form:input path="priority"/>
        </div>
        <br/>
&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
        <input type="submit" value="Save" class="save"/> &nbsp; &nbsp;
        <a href="${pageContext.request.contextPath}/task/listTask">Back to List</a>

    </form:form>
</div>
<%@ include file="common/footer.jspf"%>


</body>

</html>








