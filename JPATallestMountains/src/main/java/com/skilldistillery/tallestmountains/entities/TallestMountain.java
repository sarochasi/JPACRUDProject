package com.skilldistillery.tallestmountains.entities;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table(name = "eight_thousander_mountain")
@Entity
public class TallestMountain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String country;

	private String description;

	@Column(name = "image_url")
	private String imageUrl;

	@Column(name = "height_in_metres")
	private int height;

	private Double latitude;

	private Double longitude;

	@Column(name = "first_ascent")
	private LocalDate yearFound;

	public TallestMountain() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public LocalDate getYearFound() {
		return yearFound;
	}

	public void setYearFound(LocalDate yearFound) {
		this.yearFound = yearFound;
	}

	@Override
	public String toString() {
		return "TallestMountain [id=" + id + ", name=" + name + ", country=" + country + ", description=" + description
				+ ", imageUrl=" + imageUrl + ", height=" + height + ", latitude=" + latitude + ", longitude="
				+ longitude + ", yearFound=" + yearFound + "]";
	}

}