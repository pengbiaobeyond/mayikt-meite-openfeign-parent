package com.mayikt.distribute.api;


import feign.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: DistributeService
 * @description: 每特教育独创第五期互联网架构课程
 * @date 2020/2/1314:38
 */
public interface DistributeService {

    /**
     * 根据用户的userId实现派单
     */
    @PostMapping("/distributeOrder")
    String distributeOrder(@Param("orderId") String orderId);
}
