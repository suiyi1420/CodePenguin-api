package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysQueryDto;
import com.ruoyi.system.domain.SysSubject;
import com.ruoyi.system.domain.SysSubjectInfo;
import com.ruoyi.system.domain.SysSubjectType;

import java.util.List;

public interface ISysSubjectService {

    public List<SysSubjectInfo> getSubjectInfo(SysQueryDto sysQueryDto);
    public List<SysSubject> getSubject(String subjectTypeId);

    public List<SysSubjectType> getSubjectTypeList();

    public int updateSubjectInfo(SysSubjectInfo sysSubjectInfo);

    public int insertSubjectInfo(SysSubjectInfo sysSubjectInfo);

}
