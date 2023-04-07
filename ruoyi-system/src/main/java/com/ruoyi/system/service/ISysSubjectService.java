package com.ruoyi.system.service;

import com.ruoyi.system.domain.*;

import java.util.List;
import java.util.Map;

public interface ISysSubjectService {

    public List<SysSubjectInfo> getSubjectInfo(SysQueryDto sysQueryDto);
    public SysSubjectInfo getSubjectInfoById(int id);
    public List<SysSubject> getSubject(String subjectTypeId);
    public List<SysSubjectSubsection> getSubsectionList(SysQueryDto sysQueryDto);

    public List<SysSubjectType> getSubjectTypeList();

    public int updateSubjectInfo(SysSubjectInfo sysSubjectInfo);
    public int updateSubjectSubsection(SysSubjectSubsection sysSubjectSubsection);
    public int insertSubjectInfo(SysSubjectInfo sysSubjectInfo);
    public int insertSubjectSubsection(SysSubjectSubsection sysSubjectSubsection);
    public int insertSubject(SysSubject sysSubject);
    public int updateSubject(SysSubject sysSubject);
    public int deleteSubject(int id);
    public int subsectionCloudAddOrUpdate(SysSubsectionFile sysSubsectionFile);
    public SysSubsectionFile getSubsectionCloudByUserIdAndSubsectionId(SysSubsectionFile sysSubsectionFile);
    public List<SysSubjectType> getSubjectTypeByUserList(Integer userId);
    public List<SysSubject> getSubjectListByUser(Integer userId,Integer subjectTypeId);
    public List<SysSubjectInfo> getSubjectInfoListByUser(Map<String,Object> map);
    public int deleteSubjectSubsection(int id);

}
