package com.zy.mapper;

import com.zy.po.StudentCourse;
import com.zy.po.StudentCourseExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentCourseMapper {
    int countByExample(StudentCourseExample example);

    int deleteByExample(StudentCourseExample example);

    int insert(StudentCourse record);

    int insertSelective(StudentCourse record);

    List<StudentCourse> selectByExample(StudentCourseExample example);

    int updateByExampleSelective(@Param("record") StudentCourse record, @Param("example") StudentCourseExample example);

    int updateByExample(@Param("record") StudentCourse record, @Param("example") StudentCourseExample example);
}