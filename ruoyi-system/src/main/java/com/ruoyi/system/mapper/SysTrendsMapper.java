package com.ruoyi.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.system.domain.SysTrends;

import java.util.List;
import java.util.Map;

public interface SysTrendsMapper {
    List<Map<String,Object>>selectTrendsList(Map<String,Object>map);
    void save(SysTrends sysTrends);
    void delete(Integer id);
}
