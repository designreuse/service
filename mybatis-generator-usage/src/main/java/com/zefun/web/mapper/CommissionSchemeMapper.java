package com.zefun.web.mapper;

import com.zefun.web.entity.CommissionScheme;

public interface CommissionSchemeMapper {
    int deleteByPrimaryKey(Integer commissionId);

    int insert(CommissionScheme record);

    int insertSelective(CommissionScheme record);

    CommissionScheme selectByPrimaryKey(Integer commissionId);

    int updateByPrimaryKeySelective(CommissionScheme record);

    int updateByPrimaryKey(CommissionScheme record);
}