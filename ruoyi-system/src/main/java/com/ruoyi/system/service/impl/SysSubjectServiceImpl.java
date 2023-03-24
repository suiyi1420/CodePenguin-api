package com.ruoyi.system.service.impl;

import com.ruoyi.system.domain.*;
import com.ruoyi.system.mapper.SysClassMapper;
import com.ruoyi.system.mapper.SysSubjectMapper;
import com.ruoyi.system.service.ISysClassService;
import com.ruoyi.system.service.ISysSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SysSubjectServiceImpl implements ISysSubjectService {
    @Autowired
    private SysSubjectMapper sysSubjectMapper;

    @Override
    public List<SysSubjectInfo> getSubjectInfo(SysQueryDto sysQueryDto) {
        return sysSubjectMapper.getSubjectInfo(sysQueryDto);
    }

    @Override
    public List<SysSubject> getSubject(String subjectTypeId) {
        return sysSubjectMapper.getSubject(subjectTypeId);
    }

    @Override
    public List<SysSubjectSubsection> getSubsectionList(SysQueryDto sysQueryDto) {
        return sysSubjectMapper.getSubsectionList(sysQueryDto);
    }

    @Override
    public List<SysSubjectType> getSubjectTypeList() {
        return sysSubjectMapper.getSubjectTypeList();
    }

    @Override
    public int updateSubjectInfo(SysSubjectInfo sysSubjectInfo) {
        return sysSubjectMapper.updateSubjectInfo(sysSubjectInfo);
    }

    @Override
    public int updateSubjectSubsection(SysSubjectSubsection sysSubjectSubsection) {
        return sysSubjectMapper.updateSubjectSubsection(sysSubjectSubsection);
    }

    @Override
    public int insertSubjectInfo(SysSubjectInfo sysSubjectInfo) {
        return sysSubjectMapper.insertSubjectInfo(sysSubjectInfo);
    }

    @Override
    public int insertSubjectSubsection(SysSubjectSubsection sysSubjectSubsection) {
        return sysSubjectMapper.insertSubjectSubsection(sysSubjectSubsection);
    }

    @Override
    public int insertSubject(SysSubject sysSubject) {
        return sysSubjectMapper.insertSubject(sysSubject);
    }

    @Override
    public int updateSubject(SysSubject sysSubject){
        return sysSubjectMapper.updateSubject(sysSubject);
    }

    @Override
    public int deleteSubject(int id){
        return sysSubjectMapper.deleteSubject(id);
    }


    @Override
    public List<SysSubjectType> getSubjectTypeByUserList(Integer userId) {
        return sysSubjectMapper.getSubjectTypeByUserList(userId);
    }

    ;

    @Override
    public List<SysSubject> getSubjectListByUser(Integer userId,Integer subjectTypeId) {
        Map<String,Integer> map=new HashMap<>();
        map.put("user_id",userId);
        map.put("subject_type_id",subjectTypeId);
        return sysSubjectMapper.getSubjectListByUser(map);
    }

    @Override
    public List<SysSubjectInfo> getSubjectInfoListByUser(Map<String, Object> map) {
        return sysSubjectMapper.getSubjectInfoListByUser(map);
    }

    @Override
    public int deleteSubjectSubsection(int id){
        return sysSubjectMapper.deleteSubjectSubsection(id);
    }
}
