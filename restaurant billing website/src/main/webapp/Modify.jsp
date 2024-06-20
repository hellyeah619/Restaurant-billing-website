<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link href="resources/modify.css" type="text/css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>TNPproject2</title>
</head>
<body class="bg">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="ModifyCheck" method="post" class="form-container mt-5">
                <h1 class="header text-center mb-4">Modify the Menu</h1>
                <%
                    String foodIdParam = request.getParameter("p");
                    int FoodID = 0;
                    if (foodIdParam != null && !foodIdParam.isEmpty()) {
                        FoodID = Integer.parseInt(foodIdParam);
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>Invalid Food ID!</div>");
                    }
                %>
                <div class="form-group">
                    <label for="FoodId">Food Id</label>
                    <input type="number" name="foodId" class="form-control" id="FoodId" value="<%= FoodID %>" readonly>
                </div>
                <div class="form-group">
                    <label for="FoodName">Enter new Food Name</label>
                    <input type="text" name="food" class="form-control" id="FoodName" placeholder="Food Name" required>
                </div>
                <div class="form-group">
                    <label for="FoodPrice">Enter the new Price</label>
                    <input type="number" name="price" class="form-control" id="FoodPrice" placeholder="Price" required>
                </div>
                <button type="submit" class="btn btn-success btn-block">Submit</button>
            </form>
            <div id="drop_zone" class="form-group" ondrop="dropHandler(event);" ondragover="dragOverHandler(event);" ondragleave="dragLeaveHandler(event);">
                    <p><b>Drag & drop the new <i>FOOD IMAGE</i> or click to select</b></p>
                    <input type="file" id="fileInput" name="fileInput" style="display: none;">
                </div>
                <div id="preview"></div>
        </div>
    </div>
</div>
<script>
    function dropHandler(ev) {
        ev.preventDefault();
        ev.currentTarget.classList.remove('hover');
        var file = ev.dataTransfer.files[0];
        previewFile(file);
    }
    
    function dragOverHandler(ev) {
        ev.preventDefault();
        ev.currentTarget.classList.add('hover');
    }
    
    function dragLeaveHandler(ev) {
        ev.currentTarget.classList.remove('hover');
    }
    
    function previewFile(file) {
        var reader = new FileReader();
        reader.onloadend = function() {
            var img = document.createElement('img');
            img.src = reader.result;
            img.style.maxWidth = '100%';
            document.getElementById('preview').appendChild(img);
        }
        if (file) {
            reader.readAsDataURL(file);
        }
    }

    document.getElementById('drop_zone').addEventListener('click', function() {
        document.getElementById('fileInput').click();
    });
</script>
</body>
</html>