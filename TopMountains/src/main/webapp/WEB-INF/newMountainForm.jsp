<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Mountain</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<form action="addMountain.do" method="POST" class="container mt-4">


		<div class="mb-3">
			<label for="mountainName" class="form-label">Name (required)</label>
			<input type="text" class="form-control" id="mountainName"
				name="name" required>
		</div>

		<div class="mb-3">
			<label for="mountainCountry" class="form-label">Country
				(required)</label> <input type="text" class="form-control"
				id="mountainCountry" name="country" required>
		</div>

		<div class="mb-3">
			<label for="mountainHeight" class="form-label">Height in
				meters (required)</label> <input type="number" class="form-control"
				id="mountainHeight" name="height" required>
		</div>
		<div class="mb-3">
			<label for="yearFound" class="form-label">Year found</label> <input
				type="number" class="form-control" id="yearFound" name="yearFound">
		</div>
		<div class="mb-3">
			<label for="latitude" class="form-label">Latitude</label> <input
				type="text" class="form-control" id="latitude" name="latitude">
		</div>
		<div class="mb-3">
			<label for="longitude" class="form-label">Longitude</label> <input
				type="text" class="form-control" id="longitude" name="longitude">
		</div>
		<div class="mb-3">
			<span class="form-label">Description</span>
			<textarea class="form-control" id="description" name="description"></textarea>
		</div>

		<div class="mb-3">
			<span class="form-label">Image URL</span>
			<textarea class="form-control" id="imageUrl" name="imageUrl"></textarea>
		</div>

		<button type="submit" class="btn btn-primary">Add mountain</button>
		<br>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>