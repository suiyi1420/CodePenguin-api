package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysPost;
import com.ruoyi.system.domain.SysUserCreate;

import java.util.List;

/**
 * 岗位信息 数据层
 * 
 * @author ruoyi
 */
public interface SysUserCreateMapper
{

    public List<SysUserCreate> selectUserCreateLimitList(Long user_id);

    public int updateUserLimit(SysUserCreate sysUserCreate);


    public int insertUserLimit(SysUserCreate sysUserCreate);


}
