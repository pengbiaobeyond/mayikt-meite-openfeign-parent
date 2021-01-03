package com.mayikt.distribute.api.impl.mapper;

import com.mayikt.distribute.api.impl.entity.DispatchEntity;
import org.apache.ibatis.annotations.Insert;


public interface DispatchMapper {

    /**
     * 新增派单任务
     */
    @Insert("INSERT into platoon values (null,#{orderId},#{userId});")
    int insertDistribute(DispatchEntity distributeEntity);


}
