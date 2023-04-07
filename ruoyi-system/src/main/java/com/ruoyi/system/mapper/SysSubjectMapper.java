package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.*;

import java.util.List;
import java.util.Map;

public interface SysSubjectMapper {

    public List<SysSubjectInfo> getSubjectInfo(SysQueryDto sysQueryDto);
    public SysSubjectInfo getSubjectInfoById(int id);
    public List<SysSubject> getSubject(String subjectTypeId);
    public List<SysSubjectType> getSubjectTypeList();
    public List<SysSubjectSubsection> getSubsectionList(SysQueryDto sysQueryDto);

    public int updateSubjectInfo(SysSubjectInfo sysSubjectInfo);
    public int updateSubjectSubsection(SysSubjectSubsection sysSubjectSubsection);
    public int insertSubjectSubsection(SysSubjectSubsection sysSubjectSubsection);
    public int insertSubjectInfo(SysSubjectInfo sysSubjectInfo);

    public int insertSubject(SysSubject sysSubject);
    public int updateSubject(SysSubject sysSubject);
    public int subsectionCloudAddOrUpdate(SysSubsectionFile sysSubsectionFile);
    public int deleteSubject(int id);
    public List<SysSubjectType> getSubjectTypeByUserList(Integer userId);
    public SysSubsectionFile getSubsectionCloudByUserIdAndSubsectionId(SysSubsectionFile sysSubsectionFile);
    public List<SysSubject> getSubjectListByUser(Map<String,Integer> map);
    public List<SysSubjectInfo> getSubjectInfoListByUser(Map<String,Object> map);
    public int deleteSubjectSubsection(int id);
}
