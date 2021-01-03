package com.mayikt.service.member.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author 蚂蚁课堂创始人-余胜军QQ644064779
 * @title: MemberService
 * @description: 每特教育独创第五期互联网架构课程
 */
public interface MemberService {
    /**
     * 提供我们发布的接口
     *
     * @param userId
     * @return
     */
    /**
     * 提供我们发布的接口
     *
     * @param userId
     * @return
     */
    @GetMapping("/getUser")
    String getUser(@RequestParam("userId") Integer userId);
}
