package com.ruoyi.web.controller.system;


import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.SysTrends;
import com.ruoyi.system.service.ISysTrendsService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;



@RestController
@RequestMapping("/trends")
public class SysTrendsController extends BaseController {
    @Autowired
    private ISysTrendsService sysTrendsService;

    @ApiOperation(value = "列表", notes = "列表", httpMethod = "POST")
    @PostMapping("/list" )
    public TableDataInfo list(@RequestBody Map<String,Object>map){
        Integer page= (Integer) map.get("page");
        Integer pageSize= (Integer) map.get("pageSize");
        Integer offset=(page-1)*pageSize;
//        Map<String,Object>map=new HashMap<>();
//        map.put("userId",userId);
//        map.put("isTeacher",isTeacher);
        map.put("offset",offset);
//        startPage();
        List<Map<String,Object>> list = sysTrendsService.selectTrendsList(map);
        return getDataTable(list);

    }

    @ApiOperation(value = "添加", notes = "添加", httpMethod = "POST")
    @PostMapping("/add" )
    public AjaxResult add(@RequestBody SysTrends sysTrends){

        sysTrendsService.save(sysTrends);
        return AjaxResult.success();
    }
//    @ApiOperation(value = "列表", notes = "列表", httpMethod = "POST")
//    @PostMapping("/edit" )
//    public AjaxResult edit(@RequestBody SysTrends sysTrends){
////        sysTrendsService.updateById(sysTrends);
//        return AjaxResult.success();
//    }
    @ApiOperation(value = "删除", notes = "删除", httpMethod = "POST")
    @PostMapping("/delete/{id}" )
    public AjaxResult delete(@PathVariable Integer id){
//        sysTrendsService.removeById(id);
        sysTrendsService.delete(id);
        return AjaxResult.success();
    }


}
