package com.zy.mapper;

import java.util.List;

import com.zy.po.Tsubject;

public interface SubjectMapper {

	public List<Tsubject> randomFindSubject();

	public Tsubject findSubjectById(int subjectId);

	public void addSubject(Tsubject subject);

	public List<Tsubject> findAllSubject();

	public List<Integer> findAllSubjectId();

	public void updateSubject(Tsubject subject);

	public void deleteSubject(int subjectId);

	public List<Tsubject> findSubjectBySubjectTitle(String subjectTitle);

	public List<Tsubject> randomOneFindSubject();

}
