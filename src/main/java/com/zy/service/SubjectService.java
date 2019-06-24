package com.zy.service;

import java.util.List;

import com.zy.po.Tsubject;

public interface SubjectService {

	void addSubject(Tsubject subject);

	List<Tsubject> findAllSubject();

	Tsubject findSubjectById(int subjectId);

	List<Integer> findAllSubjectId();
	
	void updateSubject(Tsubject subject);
	
	void deleteSubject(int subjectId);
	
	List<Tsubject>findSubjectBySubjectTitle(String subjectTitle);
	
	List<Tsubject>randomFindSubject();

	List<Tsubject> randomOneFindSubject();

}
