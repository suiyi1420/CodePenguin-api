package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.service.ISysClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/system/class")
public class SysClassController extends BaseController {
    @Autowired
    private ISysClassService iSysClassService;

    //获取班级列表
    @PreAuthorize("@ss.hasPermi('system:class:list')")
    @PostMapping("/list")
    public TableDataInfo getList(@RequestBody SysQueryDto sysQueryDto)
    {
        startPage();
        List<Map<String,Object>> list=iSysClassService.getClassList(sysQueryDto);
        return getDataTable(list);
    }

    //根据班级查询该班级的课程列表
    @PreAuthorize("@ss.hasPermi('system:class_subject:list')")
    @PostMapping("/list/subject")
    public TableDataInfo getClassSubjectList(@RequestBody SysQueryDto sysQueryDto)
    {
        startPage();
        List<Map<String,Object>> list=iSysClassService.getClassSubjectList(sysQueryDto);
        return getDataTable(list);
    }

    //根据班级id查询班级的学生
    @PreAuthorize("@ss.hasPermi('system:class:list')")
    @PostMapping("/list/student/{id}")
    public TableDataInfo getClassStudentList(@PathVariable(value = "id", required = false) int id)
    {
        startPage();
        List<Map<String,Object>> list=iSysClassService.getClassStudentList(id);
        return getDataTable(list);
    }


    //获取所有学生
    @PreAuthorize("@ss.hasPermi('system:class:list')")
    @PostMapping("/list/student/all")
    public TableDataInfo getClassStudentList(@RequestBody SysQueryDto sysQueryDto)
    {

        List<Map<String,Object>> list=iSysClassService.getAllStudentList(sysQueryDto);
        return getDataTable(list);
    }
    //根据课程详情id获取课程小节
    @PreAuthorize("@ss.hasPermi('system:class:list')")
    @PostMapping("/list/subject/subsection/{id}")
    public TableDataInfo getSubjectSubsectionList(@PathVariable(value = "id", required = false) int id)
    {
        List<Map<String,Object>> list=iSysClassService.getSubjectSubsection(id);
        return getDataTable(list);
    }

    //添加班级
    @PreAuthorize("@ss.hasPermi('system:class:add')")
    @PostMapping("/add")
    public AjaxResult addClass(@Validated @RequestBody SysClass sysClass)
    {
        return toAjax(iSysClassService.insertClass(sysClass));
    }


    //删除班级
    @PreAuthorize("@ss.hasPermi('system:class:delete')")
    @PostMapping("/delete/{id}")
    public AjaxResult deleteClass(@PathVariable(value = "id", required = false) Long id)
    {
        return toAjax(iSysClassService.deleteClassById(id));
    }


    //修改班级
    @PreAuthorize("@ss.hasPermi('system:class:edit')")
    @PostMapping("/edit")
    public AjaxResult editClass(@Validated @RequestBody SysClass sysClass)
    {
        return toAjax(iSysClassService.updateClass(sysClass));
    }


    //编辑班级的课程
    @PreAuthorize("@ss.hasPermi('system:class_subject:edit')")
    @PostMapping("/subject/edit")
    public AjaxResult editClassSubject(@Validated @RequestBody SysClassSubject sysClassSubject)
    {
        return toAjax(iSysClassService.updateClassSubject(sysClassSubject));
    }

    //添加班级的课程
    @PreAuthorize("@ss.hasPermi('system:class_subject:add')")
    @PostMapping("/subject/add")
    public AjaxResult addClassSubject(@Validated @RequestBody SysClassSubject sysClassSubject)
    {
        return toAjax(iSysClassService.insertClassSubject(sysClassSubject));
    }

    //添加班级的学生
    @PreAuthorize("@ss.hasPermi('system:class:add')")
    @PostMapping("/student/add")
    public AjaxResult addClassStudent(@Validated @RequestBody SysClassStudent sysClassStudent)
    {
        return toAjax(iSysClassService.insertClassStudent(sysClassStudent));
    }

    //删除班级学生
    @PreAuthorize("@ss.hasPermi('system:class:delete')")
    @PostMapping("/student/delete/{id}")
    public AjaxResult deleteClassStudent(@PathVariable(value = "id", required = false) Long id,@Validated @RequestBody SysStudentSubject sysStudentSubject)
    {
        return toAjax(iSysClassService.deleteClassStudent(id,sysStudentSubject));
    }

}
