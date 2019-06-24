package com.zy.service;

import com.zy.po.Teacher;

import java.util.List;

/**
 * @author yyy
 * 教师Service层
 */
public interface TeacherService {

    void updateById(Teacher teacher) throws Exception;

    boolean removeById(Integer id) throws Exception;

    List<Teacher> findByPaging(Integer toPageNo) throws Exception;

    int save(Teacher teacher) throws Exception;

    int getCountTeacher() throws Exception;

    Teacher findById(Integer id) throws Exception;

    List<Teacher> findByName(String name) throws Exception;

    List<Teacher> findAll() throws Exception;
}
