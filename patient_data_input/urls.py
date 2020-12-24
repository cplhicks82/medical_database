from django.urls import path
from . import views

app_name = 'patient_data_input'
urlpatterns = [
	path('', views.save_patient, name='index'),
]