from django.db import models

class PatientInput(models.Model):
	"""Defining the fields for new patient input."""
	PatientKey = models.CharField(max_length=50)
	DoctorKey = models.CharField(max_length=50)
	FirstName = models.CharField(max_length=50)
	MiddleName = models.CharField(max_length=50)
	LastName = models.CharField(max_length=50)
	PhoneNumber = models.CharField(max_length=50)