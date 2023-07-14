package com.ruoyi.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.system.domain.SysTrends;

import java.util.List;
import java.util.Map;

public interface ISysTrendsService  {
    List<Map<String,Object>> selectTrendsList(Map<String,Object>map);
    void save(SysTrends sysTrends);
    void delete(Integer id);
}
