package com.mayikt;

import feign.RequestInterceptor;
import io.seata.core.rpc.netty.RmMessageListener;
import io.seata.rm.AbstractRMHandler;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.HandlerInterceptor;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: AppOrder
 * @description: 每特教育独创第五期互联网架构课程
 * @date 2020/1/921:48
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@EnableFeignClients
@MapperScan("com.mayikt.mapper")
@EnableTransactionManagement
public class AppOrder {
    public static void main(String[] args) {
//        ApplicationContext applicationContext = new AnnotationConfigApplicationContext(AppOrder.class);
        //RequestInterceptor
        SpringApplication.run(AppOrder.class);
//        RmMessageListener
    }
}
