<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Task Details</title>
    
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style type="text/css">
        .task-form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            animation: slideIn 0.5s ease;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .btn-edit {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-weight: bold;
            transition: background-color 0.3s ease;
            animation: fadeIn 0.5s ease;
        }

        .btn-edit:hover {
            background-color: #0069d9;
        }

        @keyframes slideIn {
            from { transform: translateY(-100%); }
            to { transform: translateY(0); }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            font-size: 24px;
            color: #333;
            text-align: center;
            margin-top: 20px;
            margin-bottom: 40px;
        }
        p{
        color: red; 
        text-align: center;
        }
        
    </style>
</head>
<body>
    <h1>Update Task Details</h1>
    
    
    
    
	<c:out value="${sessionScope.supplierExists}" />
<% 
    String saveUname = (String) session.getAttribute("itemExists");
    session.removeAttribute("itemExists"); // Remove the session attribute
%>


 <%
	if("item".equals(saveUname)){
	%><p>That Item Is Already Available</p>
	

	<% 
	
	}else{
	
	%>   <p style="color: black;">Enter Item Details</p> <%
}
%>
    
    
    
    
    <form action="addnew" method="post" class="task-form"  onsubmit="return validateForm();" enctype="multipart/form-data" >
        <div class="form-group">
            <label for="ename">Item Name</label>
            <input type="text" name="itemName" id="ename" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="eid">Item Code</label>
            <input type="text" name="itemCode" id="eid" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="task">Item Quantity</label>
            <input type="number" name="itemQuantity" id="task" class="form-control"  required>
        </div>
        
            <div class="form-group">
        <label for="eimage">Item Image</label>
        <input type="file" name="itemPhoto" id="eimage" class="form-control" required>
    </div>
        
        <div class="form-group">
            <button type="submit" name="submit" class="btn btn-primary">Add Items</button>
        </div>
    </form>
    
    <!-- Add Bootstrap JavaScript (optional) -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    function validateForm() {
        var quantity = document.getElementById("task").value;

        // Check if quantity is not empty and is a positive number
        if (quantity === "" || isNaN(quantity) || parseFloat(quantity) <= 0) {
            alert("Quantity must be a positive number.");
            return false; // Prevent form submission
        }

        return true; // Form is valid
    }
</script>
</body>
</html>
