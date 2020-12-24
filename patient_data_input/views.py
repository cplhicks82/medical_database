from django.shortcuts import render
from django.db import connection
from django.contrib import messages
from .models import PatientInput

def save_patient(request):
	if request.method == 'POST':
		if request.POST.get('PatientKey') and request.POST.get('DoctorKey')\
		and request.POST.get('FirstName') and request.POST.get('MiddleName')\
		and request.POST.get('LastName') and request.POST.get('PhoneNumber'):
			patient_save = PatientInput()
			patient_save.PatientKey = request.POST.get('PatientKey')
			patient_save.DoctorKey = request.POST.get('DoctorKey')
			patient_save.FirstName = request.POST.get('FirstName')
			patient_save.MiddleName = request.POST.get('MiddleName')
			patient_save.LastName = request.POST.get('LastName')
			patient_save.PhoneNumber = request.POST.get('PhoneNumber')
			
			cursor = connection.cursor()

			cursor.execute("EXECUTE usp_RecordPatient'"+patient_save.PatientKey+"','"+patient_save.DoctorKey+"',\
				'"+patient_save.FirstName+"', '"+patient_save.MiddleName+"', '"+patient_save.LastName+"',\
				'"+patient_save.PhoneNumber+"'")

			messages.success(request, "The patient "+patient_save.FirstName+" "+patient_save.LastName+" was\
			saved successfully.")

			return render(request, 'patient_data_input/index.html')
	else:
			return render(request, 'patient_data_input/index.html')