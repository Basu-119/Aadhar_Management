
<%@page import="com.Digit.Aahar_pro.bean.AadharDetails"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Aadhar Card Details</title>

<style>

    body {

        font-family: Arial, sans-serif;

        background-color: #f5f5f5;

        display: flex;

        justify-content: center;

        align-items: center;

        height: 100vh;

        margin: 0;

    }


    .aadhar-card {

        background-color: white;

        border: 1px solid #ccc;

        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);

        padding: 20px;

        width: 300px;

        text-align: center;

    }


    .aadhar-logo {

        margin-bottom: 20px;

    }


    .aadhar-logo img {

        width: 80px;

    }


    .aadhar-details {

        margin-bottom: 10px;

    }


    .aadhar-label {

        font-weight: bold;

        margin-top: 10px;

        display: block;

    }


    .aadhar-value {

        margin-top: 5px;

    }


    .aadhar-separator {

        border-top: 1px solid #ccc;

        margin: 20px 0;

        padding-top: 10px;

    }


    .back-link {

        display: inline-block;

        margin-top: 20px;

        color: #007bff;

        text-decoration: none;

    }


    .back-link:hover {

        text-decoration: underline;

    }

</style>

</head>

<body>

<div class="aadhar-card">

    <div class="aadhar-logo">

        <img src="aadhar-logo.png" alt="Aadhar Logo">

    </div>


    <% session = request.getSession();

       List l=(List) session.getAttribute("lists");

       Iterator ite=l.iterator();

       while(ite.hasNext()) {

           AadharDetails p=(AadharDetails) ite.next(); %>

    <div class="aadhar-details " >

        <span class="aadhar-label ">Aadhar ID:</span>

        <p class="aadhar-value"><%= p.getA_id() %></p>


        <span class="aadhar-label">Name:</span>

        <p class="aadhar-value"><%= p.getU_name() %></p>

    </div>


    <div >

        <span class="aadhar-label">DOB:</span>

        <p class="aadhar-value"><%= p.getDob() %></p>

    </div>


    <div >

        <span class="aadhar-label">Address:</span>

        <p class="aadhar-value"><%= p.getAddress() %></p>

    </div>
        <p>----------------------------</p>

    <% } %>


    <a href="Home.html" class="back-link">GO BACK</a>

</div>

</body>

</html>