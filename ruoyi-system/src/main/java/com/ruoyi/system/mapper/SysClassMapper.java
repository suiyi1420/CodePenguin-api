package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.*;

import java.util.List;
import java.util.Map;

public interface SysClassMapper {

    public List<Map<String,Object>> getClassList(SysQueryDto sysQueryDto);

    public List<Map<String,Object>> getClassSubjectList(SysQueryDto sysQueryDto);
    public List<SysClass> getClassByUser(Long userId);

    public List<Map<String,Object>> getClassStudentList(int id);

    public List<Map<String,Object>> getAllStudentList(SysQueryDto sysQueryDto);
    public List<Map<String,Object>> getSubjectSubsection(int id);

    public int updateClass(SysClass sysClass);
    public int updateClassSubject(SysClassSubject sysClassSubject);

    public int insertClass(SysClass sysClass);
    public int insertClassSubject(SysClassSubject sysClassSubject);
    public int insertClassStudent(SysClassStudent sysClassStudent);
    public int insertStudentSubject(SysStudentSubject sysStudentSubject);

    public int deleteClassById(Long id);
    public int deleteClassStudent(Long id);
    public int deleteStudentSubject(SysStudentSubject sysStudentSubject);


}
