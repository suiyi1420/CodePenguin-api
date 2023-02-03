package com.ruoyi.system.service.impl;

import com.ruoyi.system.domain.*;
import com.ruoyi.system.mapper.SysClassMapper;
import com.ruoyi.system.mapper.SysSubjectMapper;
import com.ruoyi.system.service.ISysClassService;
import com.ruoyi.system.service.ISysSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    public List<SysSubjectType> getSubjectTypeList() {
        return sysSubjectMapper.getSubjectTypeList();
    }

    @Override
    public int updateSubjectInfo(SysSubjectInfo sysSubjectInfo) {
        return sysSubjectMapper.updateSubjectInfo(sysSubjectInfo);
    }

    @Override
    public int insertSubjectInfo(SysSubjectInfo sysSubjectInfo) {
        return sysSubjectMapper.insertSubjectInfo(sysSubjectInfo);
    }
}
