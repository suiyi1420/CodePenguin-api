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

import java.util.List;

@RestController
@RequestMapping("/system/subject")
public class SysSubjectController extends BaseController {
    @Autowired
    private ISysSubjectService iSysSubjectService;

    @PreAuthorize("@ss.hasPermi('system:subject:list')")
    @PostMapping ("/info_list")
    public AjaxResult getInfoList(@RequestBody SysQueryDto sysQueryDto)
    {
        List<SysSubjectInfo> list=iSysSubjectService.getSubjectInfo(sysQueryDto);
        return AjaxResult.success(list);
    }
    @PreAuthorize("@ss.hasPermi('system:subject:list')")
    @PostMapping("/list")
    public AjaxResult getList(@RequestBody SysQueryDto sysQueryDto)
    {
        List<SysSubject> list=iSysSubjectService.getSubject(sysQueryDto.getId().toString());
        return AjaxResult.success(list);
    }
    @PreAuthorize("@ss.hasPermi('system:subject:list')")
    @GetMapping("/type_list")
    public AjaxResult getTypeList()
    {
        List<SysSubjectType> list=iSysSubjectService.getSubjectTypeList();
        return AjaxResult.success(list);
    }
    @PreAuthorize("@ss.hasPermi('system:subject:add')")
    @PostMapping("/add")
    public AjaxResult addClass(@Validated @RequestBody SysSubjectInfo sysSubjectInfo)
    {
        return toAjax(iSysSubjectService.insertSubjectInfo(sysSubjectInfo));
    }



    @PreAuthorize("@ss.hasPermi('system:subject:edit')")
    @PostMapping("/edit")
    public AjaxResult editClass(@Validated @RequestBody SysSubjectInfo sysSubjectInfo)
    {
        return toAjax(iSysSubjectService.updateSubjectInfo(sysSubjectInfo));
    }

}
