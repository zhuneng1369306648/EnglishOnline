package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.mapper.SubjectMapper;
import com.zy.po.Tsubject;
import com.zy.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService{
	
	@Autowired
	SubjectMapper subjectMapper;

	public void addSubject(Tsubject subject) {
		subjectMapper.addSubject(subject);
	}

	public List<Tsubject> findAllSubject() {
		return subjectMapper.findAllSubject();
	}

	public Tsubject findSubjectById(int subjectId) {
		return subjectMapper.findSubjectById(subjectId);
	}

	public List<Integer> findAllSubjectId() {
		return subjectMapper.findAllSubjectId();
	}

	public void updateSubject(Tsubject subject) {
		subjectMapper.updateSubject(subject);
	}

	public void deleteSubject(int subjectId) {
		subjectMapper.deleteSubject(subjectId);
	}

	public List<Tsubject> findSubjectBySubjectTitle(String subjectTitle) {
		return subjectMapper.findSubjectBySubjectTitle(subjectTitle);
	}

	public List<Tsubject> randomFindSubject() {
		return subjectMapper.randomFindSubject();
	}

	@Override
	public List<Tsubject> randomOneFindSubject() {
		// TODO Auto-generated method stub
		return subjectMapper.randomOneFindSubject();
	}

}
