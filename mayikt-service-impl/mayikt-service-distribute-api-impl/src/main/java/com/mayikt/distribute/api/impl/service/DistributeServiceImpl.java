package com.mayikt.distribute.api.impl.service;


import com.mayikt.distribute.api.DistributeService;
import com.mayikt.distribute.api.impl.entity.DispatchEntity;
import com.mayikt.distribute.api.impl.mapper.DispatchMapper;
import feign.Param;
import io.seata.core.context.RootContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: DistributeServiceImpl
 * @description: 每特教育独创第五期互联网架构课程
 * @date 2020/2/1314:41
 */
@RestController
@Slf4j
public class DistributeServiceImpl implements DistributeService {
    @Autowired
    private DispatchMapper dispatchMapper;

    @Override
    public String distributeOrder(@Param("orderId") String orderId) {
        String xid = RootContext.getXID();
        log.info("xid:{}", xid);
        DispatchEntity dispatchEntity = new DispatchEntity(orderId, 123456L);
        dispatchMapper.insertDistribute(dispatchEntity);
        return "插入数据成功";
    }
}
