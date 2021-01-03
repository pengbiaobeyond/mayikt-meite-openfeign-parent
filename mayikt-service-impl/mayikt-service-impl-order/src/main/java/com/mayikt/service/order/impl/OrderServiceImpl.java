package com.mayikt.service.order.impl;


import com.mayikt.entity.OrderEntity;
import com.mayikt.mapper.OrderMapper;
import com.mayikt.service.order.openfeign.DistributeServiceFeign;

import feign.RequestInterceptor;
import io.seata.core.context.RootContext;
import io.seata.spring.annotation.GlobalTransactional;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: OrderServiceImpl
 * @description: 每特教育独创第五期互联网架构课程
 * @date 2020/2/1314:22
 */
@RestController
@Slf4j
public class OrderServiceImpl {
    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private DistributeServiceFeign distributeServiceFeign;

    @RequestMapping("/insertOrder")
    @GlobalTransactional
    public String insertOrder(int age) {
        String xid = RootContext.getXID();
        log.info("xid:{}", xid);
        String orderId = System.currentTimeMillis() + "";
        OrderEntity newOrder = createOrder(orderId);
        // 1.向订单数据库表插入数据
        int result = orderMapper.addOrder(newOrder);
        if (result < 0) {
            return "插入订单失败";
        }

        // 2.调用派单服务，实现对该笔订单派单 远程调用派单接口
        String resultDistribute = distributeServiceFeign.distributeOrder(orderId);
        // 判断调用接口失败的代码...
        int j = 1 / age;
        return resultDistribute;
    }

    public OrderEntity createOrder(String orderId) {
        OrderEntity orderEntity = new OrderEntity();
        orderEntity.setName("每特教育第六期平均就业薪资破10万");
        orderEntity.setOrderCreatetime(new Date());
        // 价格是300元
        orderEntity.setOrderMoney(300d);
        // 状态为 未支付
        orderEntity.setOrderState(0);
        Long commodityId = 30L;
        // 商品id
        orderEntity.setCommodityId(commodityId);
        orderEntity.setOrderId(orderId);
        return orderEntity;
    }
}
