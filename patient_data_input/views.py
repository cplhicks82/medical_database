from django.shortcuts import render
from models import PatientInput
from django.db import connection

def save_patient(request):
	if request.method == 'POST':
		if request.POST.get('PatientKey') and request.POST.get('DoctorKey')
		and request.POST.get('FirstName') and request.POST.get('MiddleName')
		and request.POST.get('LastName') and request.POST.get('PhoneNumber'):
			patient_save = PatientInput()
			patient_save.PatientKey = request.POST.get('PatientKey')
			patient_save.DoctorKey = request.POST.get('DoctorKey')
			patient_save.FirstName = request.POST.get('FirstName')
			patient_save.MiddleName = request.POST.get('MiddleName')
			patient_save.LastName = request.POST.get('LastName')
			patient_save.PhoneNumber = request.POST.get('PhoneNumber')
			cursor = connection.cursor()