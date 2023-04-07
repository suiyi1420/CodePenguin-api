package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.service.ISysClassService;
import com.ruoyi.system.service.ISysSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/system/subject")
public class SysSubjectController extends BaseController {
    @Autowired
    private ISysSubjectService iSysSubjectService;

    @PreAuthorize("@ss.hasPermi('system:subject:add')")
    @PostMapping("/add")
    public AjaxResult addSubject(@Validated @RequestBody SysSubject sysSubject)
    {
        return toAjax(iSysSubjectService.insertSubject(sysSubject));
    }
    @PreAuthorize("@ss.hasPermi('system:subject:edit')")
    @PostMapping("/edit")
    public AjaxResult editSubject(@Validated @RequestBody SysSubject sysSubject)
    {
        return toAjax(iSysSubjectService.updateSubject(sysSubject));
    }
    @PreAuthorize("@ss.hasPermi('system:subject:delete')")
    @PostMapping("/delete/{id}")
    public AjaxResult deleteSubject(@PathVariable(value="id") int id)
    {
        return toAjax(iSysSubjectService.deleteSubject(id));
    }

    @PreAuthorize("@ss.hasPermi('system:subject_info:add')")
    @PostMapping("/subject_info/add")
    public AjaxResult addSubjectInfo(@Validated @RequestBody SysSubjectInfo sysSubjectInfo)
    {
        return toAjax(iSysSubjectService.insertSubjectInfo(sysSubjectInfo));
    }
    @PreAuthorize("@ss.hasPermi('system:subject_info:list')")
    @PostMapping ("/info_list")
    public AjaxResult getInfoList(@RequestBody SysQueryDto sysQueryDto)
    {
        List<SysSubjectInfo> list=iSysSubjectService.getSubjectInfo(sysQueryDto);
        return AjaxResult.success(list);
    }
    @PreAuthorize("@ss.hasPermi('system:subject_info:list')")
    @PostMapping ("/info/{id}")
    public AjaxResult getSubjectInfoById(@PathVariable(value="id") int id)
    {
        SysSubjectInfo sysSubjectInfo=iSysSubjectService.getSubjectInfoById(id);
        return AjaxResult.success(sysSubjectInfo);
    }
    @PreAuthorize("@ss.hasPermi('system:subject:list')")
    @PostMapping("/list")
    public AjaxResult getList(@RequestBody SysQueryDto sysQueryDto)
    {
        List<SysSubject> list=iSysSubjectService.getSubject(sysQueryDto.getId().toString());
        return AjaxResult.success(list);
    }
    @PreAuthorize("@ss.hasPermi('system:subject_subsection:list')")
    @PostMapping("/subsection/list")
    public AjaxResult getSubsectionList(@RequestBody SysQueryDto sysQueryDto)
    {
        List<SysSubjectSubsection> list=iSysSubjectService.getSubsectionList(sysQueryDto);
        return AjaxResult.success(list);
    }

    @PreAuthorize("@ss.hasPermi('system:subject_subsection:edit')")
    @PostMapping("/subsection/edit")
    public AjaxResult updateSubsection(@RequestBody SysSubjectSubsection sysSubjectSubsection)
    {
        return toAjax(iSysSubjectService.updateSubjectSubsection(sysSubjectSubsection));
    }
    @PreAuthorize("@ss.hasPermi('system:subject_subsection:delete')")
    @PostMapping("/subsection/delete/{id}")
    public AjaxResult deleteSubsection(@PathVariable(value="id") int id)
    {
        return toAjax(iSysSubjectService.deleteSubjectSubsection(id));
    }

    @PreAuthorize("@ss.hasPermi('system:subject_subsection:add')")
    @PostMapping("/subsection/add")
    public AjaxResult addSubsection(@RequestBody SysSubjectSubsection sysSubjectSubsection)
    {
        return toAjax(iSysSubjectService.insertSubjectSubsection(sysSubjectSubsection));
    }

    @PreAuthorize("@ss.hasPermi('system:subject_type:list')")
    @GetMapping("/type_list")
    public AjaxResult getTypeList()
    {
        List<SysSubjectType> list=iSysSubjectService.getSubjectTypeList();
        return AjaxResult.success(list);
    }



    @PreAuthorize("@ss.hasPermi('system:subject_info:edit')")
    @PostMapping("/subject_info/edit")
    public AjaxResult editSubjectInfo(@Validated @RequestBody SysSubjectInfo sysSubjectInfo)
    {
        return toAjax(iSysSubjectService.updateSubjectInfo(sysSubjectInfo));
    }




    @PreAuthorize("@ss.hasPermi('system:subject:list')")
    @GetMapping("/user_subject")
    public AjaxResult subjectTypeByUser(@RequestParam Integer userId){
        List<SysSubjectType> list=iSysSubjectService.getSubjectTypeByUserList(userId);
        return AjaxResult.success(list);
    }

    @PreAuthorize("@ss.hasPermi('system:subject:list')")
    @GetMapping("/user_subject_list")
    public AjaxResult subjectListByUser(@RequestParam Integer userId,@RequestParam Integer subjectTypeId){
        List<SysSubject> list=iSysSubjectService.getSubjectListByUser(userId,subjectTypeId);
        return AjaxResult.success(list);
    }
    @PreAuthorize("@ss.hasPermi('system:subject_info:list')")
    @GetMapping("/user_subject_info_list")
    public AjaxResult subjectInfoListByUser(@RequestParam Integer userId,@RequestParam Integer subjectId){
        Map<String,Object> map=new HashMap<>();
        map.put("userId",userId);
        map.put("subjectId",subjectId);
        List<SysSubjectInfo> list=iSysSubjectService.getSubjectInfoListByUser(map);
        return AjaxResult.success(list);
    }

    /**
     * 根据用户id、小节id云端保存sb3
     * @return
     */
    @PostMapping("/subsection/cloud/update")
    public AjaxResult subsectionCloudUpdate(@RequestBody SysSubsectionFile sysSubsectionFile){
        String time=new SimpleDateFormat("YYYY-MM-DD HH:mm:ss").format(new Date());
        sysSubsectionFile.setUpdate_time(time);
        return toAjax(iSysSubjectService.subsectionCloudAddOrUpdate(sysSubsectionFile));
    }

    @PostMapping("/subsection/cloud")
    public AjaxResult getSubsectionCloudByUserIdAndSubsectionId(@RequestBody SysSubsectionFile sysSubsectionFile){
        SysSubsectionFile sysSubsectionFile1=iSysSubjectService.getSubsectionCloudByUserIdAndSubsectionId(sysSubsectionFile);
        return AjaxResult.success(sysSubsectionFile1);
    }

}
