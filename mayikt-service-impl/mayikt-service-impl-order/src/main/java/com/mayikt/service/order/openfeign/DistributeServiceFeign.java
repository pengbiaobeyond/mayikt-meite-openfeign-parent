package com.mayikt.service.order.openfeign;

import com.mayikt.distribute.api.DistributeService;
import org.springframework.cloud.openfeign.FeignClient;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: DistributeServiceFeign
 * @description: 每特教育独创第五期互联网架构课程
 * @date 2020/2/1315:11
 */
@FeignClient("meitemayikt-distribute")
public interface DistributeServiceFeign extends DistributeService {
}
