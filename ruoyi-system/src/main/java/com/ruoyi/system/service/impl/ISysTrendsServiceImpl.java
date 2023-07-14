package com.ruoyi.system.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.annotation.DataScope;
import com.ruoyi.system.domain.SysTrends;
import com.ruoyi.system.mapper.SysTrendsMapper;
import com.ruoyi.system.service.ISysTrendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class ISysTrendsServiceImpl  implements ISysTrendsService {

    @Resource
    private SysTrendsMapper sysTrendsMapper;

    @Override

    public List<Map<String,Object>> selectTrendsList(Map<String,Object>map){
        return sysTrendsMapper.selectTrendsList(map);
    }

    @Override
    public void save(SysTrends sysTrends) {
        sysTrendsMapper.save(sysTrends);
    }

    @Override
    public void delete(Integer id) {
        sysTrendsMapper.delete(id);
    }


}
