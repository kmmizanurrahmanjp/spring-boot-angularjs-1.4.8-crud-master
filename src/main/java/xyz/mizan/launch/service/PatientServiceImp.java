package xyz.mizan.launch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.mizan.launch.entity.Patient;
import xyz.mizan.launch.repository.PatientRepositoryImp;


@Service
public class PatientServiceImp implements PatientService{

	@Autowired
	PatientRepositoryImp patientRepositoryImp;
	
	@Override
	public int insetPatient(Patient patient){
		return patientRepositoryImp.insetPatient(patient);
	}
	
	@Override
	public Patient updatePatient(Patient patient){
		return patientRepositoryImp.updatePatient(patient);
	}
	
	@Override
	public boolean deletePatient(int id){
		return patientRepositoryImp.deletePatient(id);
		
	}
	
	@Override
	public List<Patient> selectAllPatient(){
		return patientRepositoryImp.selectAllPatient();
	}
	
	@Override
	public List<Patient> searchPatientById(int id){
		return patientRepositoryImp.searchPatientById(id);
		
	}
	
	@Override
	public List<Patient> selectPatientByCriteria(Patient patient){
		return patientRepositoryImp.selectPatientByCriteria(patient);
	}
}
