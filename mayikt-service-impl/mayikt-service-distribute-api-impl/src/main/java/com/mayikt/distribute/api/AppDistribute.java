package com.mayikt.distribute.api;

import feign.RequestInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: AppDistribute
 * @description: 每特教育独创第五期互联网架构课程
 * @date 2020/2/1314:48
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@MapperScan("com.mayikt.distribute.api.impl.mapper")
public class AppDistribute {
    public static void main(String[] args)
    {
        SpringApplication.run(AppDistribute.class);
    }
}
