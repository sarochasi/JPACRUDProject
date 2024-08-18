<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit mountain </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="col-lg-8 col-md-8 mx-auto">
<h3>Editing mountain info</h3>
<br>
	<c:choose>
		<c:when test="${not empty mountain}">
			<form action="updateMountain.do" method="POST">
				<input type="hidden" name="id" value="${mountain.id}" />

				<div class="mb-3">
					<label for="mountainName" class="form-label">Name</label> 
					<input type="text" class="form-control" id="formGroupExampleInput" name="name"
						value="${mountain.name}" required>
				</div>

				<div class="mb-3">
					<label for="mountainCountry" class="form-label">Country</label> <input
						type="text" class="form-control" id="mountainCountry" name="country"
						value="${mountain.country}" required>
				</div>

				<div class="mb-3">
					<label for="mountainHeight" class="form-label">Height(m)</label> <input
						type="number" class="form-control" id="mountainHeight" name="height"
						value="${mountain.height}" required>
				</div>
				<div class="mb-3">
					<label for="yearFound" class="form-label">Year found</label> <input
						type="number" class="form-control" id="yearFound" name="yearFound"
						value="${mountain.yearFound}">
				</div>
				<div class="mb-3">
					<label for="latitude" class="form-label">Latitude</label> <input
						type="number" class="form-control" id="latitude" name="latitude"
						value="${mountain.latitude}">
				</div>
				<div class="mb-3">
					<label for="longitude" class="form-label">Longitude</label> <input
						type="number" class="form-control" id="longitude" name="longitude"
						value="${mountain.longitude}">
				</div>
				<div class="mb-3">
					<span class="form-label">Description</span> <textarea
						class="form-control" id="description" name="description"
						>${mountain.description}</textarea>
				</div>
			
				<div class="mb-3">
					<span class="form-label">Image URL</span> <textarea
						class="form-control" id="imageUrl" name="imageUrl"
						>${mountain.imageUrl}</textarea>
				</div>

				<button type="submit">Update mountain</button>
				<br>
			</form>
		</c:when>
		<c:otherwise>
			<p>${errorMsg }</p>
		</c:otherwise>
	</c:choose>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>