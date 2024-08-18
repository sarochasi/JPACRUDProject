<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Eight-Thousanders</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<main>
		<section class="py-5 text-center container">
			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light">The Eight-Thousanders</h1>
					<p class="lead text-body-secondary">Explore the world's 14
						eight-thousanders, the highest peaks on Earth, located in the
						Himalayas and Karakoram ranges. Learn about each mountain's
						elevation, location, and climbing history.</p>
						
					
					<form action="getMountain.do" method="GET">
						Enter Mountain ID: <input type="number" name="mountainId" /> <input
							type="submit" value="Search Mountain">
					</form>
					<br>
					<a href="getMountainList.do" class="btn active">List of Eight-Thousanders</a>
					<a href="newMountainForm.do" class="btn active">Add new Mountain</a>
							
				</div>

			</div>
		</section>
		
		<div class="album py-5 bg-body-tertiary">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
      
      <c:forEach var="mountain" items="${mountains}">
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="0" xmlns="http://www.w3.org/2000/svg">
            <img src="${mountain.imageUrl}"/ width="100%" height="225">
            </svg>
            <div class="card-body">
              <p class="card-text"><strong>${mountain.name}</strong> (${mountain.height} m)</p>
              <p>${mountain.country}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                	<form action="getMountain.do" method="GET">
                		<input type="hidden" name="mountainId" value="${mountain.id}"/>
                			<button type="submit" class="btn btn-sm btn-outline-secondary" >View</button>
                	</form>
                  
                  <form action="updateForm.do" method="GET">
                		<input type="hidden" name="mountainId" value="${mountain.id}"/>
                  			<button type="submit" class="btn btn-sm btn-outline-secondary">Edit</button>
                  </form>
                  
                  <form action="DeleteMountain.do" method="POST">
                		<input type="hidden" name="mountainId" value="${mountain.id}"/>
                  			<button type="submit" class="btn btn-sm btn-outline-secondary">Delete</button>
                  </form>
                </div>
                
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        
        </div>
        </div>
        </div>
        

	</main>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>