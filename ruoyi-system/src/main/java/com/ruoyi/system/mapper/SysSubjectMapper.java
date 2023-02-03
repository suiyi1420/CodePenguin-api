package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.*;

import java.util.List;

public interface SysSubjectMapper {

    public List<SysSubjectInfo> getSubjectInfo(SysQueryDto sysQueryDto);
    public List<SysSubject> getSubject(String subjectTypeId);
    public List<SysSubjectType> getSubjectTypeList();

    public int updateSubjectInfo(SysSubjectInfo sysSubjectInfo);

    public int insertSubjectInfo(SysSubjectInfo sysSubjectInfo);
}
