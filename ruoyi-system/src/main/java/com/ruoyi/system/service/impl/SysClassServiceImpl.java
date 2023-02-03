package com.ruoyi.system.service.impl;

import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.mapper.SysClassMapper;
import com.ruoyi.system.service.ISysClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SysClassServiceImpl implements ISysClassService {
    @Autowired
    private SysClassMapper sysClassMapper;

    @Override
    public List<Map<String, Object>> getClassList(SysQueryDto sysQueryDto) {
        return sysClassMapper.getClassList(sysQueryDto);
    }

    public List<Map<String, Object>> getClassSubjectList(SysQueryDto sysQueryDto) {
        return sysClassMapper.getClassSubjectList(sysQueryDto);
    }

    @Override
    public List<SysClass> getClassByUser(Long userId) {
        return sysClassMapper.getClassByUser(userId);
    }

    @Override
    public List<Map<String, Object>> getClassStudentList(int id) {
        return sysClassMapper.getClassStudentList(id);
    }

    @Override
    public List<Map<String, Object>> getAllStudentList(SysQueryDto sysQueryDto) {
        return sysClassMapper.getAllStudentList(sysQueryDto);
    }

    @Override
    public List<Map<String,Object>> getSubjectSubsection(int id){return sysClassMapper.getSubjectSubsection(id);}

    @Override
    public int updateClass(SysClass sysClass) {
        return sysClassMapper.updateClass(sysClass);
    }

    @Override
    public int updateClassSubject(SysClassSubject sysClassSubject) {
        return sysClassMapper.updateClassSubject(sysClassSubject);
    }

    @Override
    public int insertClass(SysClass sysClass) {
        SysUser user = SecurityUtils.getLoginUser().getUser();
        sysClass.setCreater_id(user.getUserId());
        return sysClassMapper.insertClass(sysClass);
    }

    @Override
    public int insertClassSubject(SysClassSubject sysClassSubject) {
        return sysClassMapper.insertClassSubject(sysClassSubject);
    }

    @Override
    public int insertClassStudent(SysClassStudent sysClassStudent) {
        SysQueryDto sysQueryDto = new SysQueryDto();
        sysQueryDto.setId(Long.valueOf(sysClassStudent.getClass_id()));
        List<Map<String, Object>> subjectInfoList = sysClassMapper.getClassSubjectList(sysQueryDto);
        int classStudentInsertSuccess = sysClassMapper.insertClassStudent(sysClassStudent);
        if (classStudentInsertSuccess == 1) {
            for (Map<String, Object> map : subjectInfoList) {
                SysStudentSubject sysStudentSubject = new SysStudentSubject();
                sysStudentSubject.setClass_id(sysClassStudent.getClass_id());
                sysStudentSubject.setSubject_info_id((Integer) map.get("subject_info_id"));
                sysStudentSubject.setUser_id(sysClassStudent.getUser_id());
                this.insertStudentSubject(sysStudentSubject);
            }
            return 1;
        } else {
            return 0;
        }


    }

    @Override
    public int insertStudentSubject(SysStudentSubject sysStudentSubject) {
        return sysClassMapper.insertStudentSubject(sysStudentSubject);
    }

    @Override
    public int deleteClassById(Long id) {
        return sysClassMapper.deleteClassById(id);
    }

    @Override
    public int deleteClassStudent(Long id, SysStudentSubject sysStudentSubject) {
        this.deleteStudentSubject(sysStudentSubject);
        return sysClassMapper.deleteClassStudent(id);
    }

    @Override
    public int deleteStudentSubject(SysStudentSubject sysStudentSubject) {
        return sysClassMapper.deleteStudentSubject(sysStudentSubject);
    }
}
