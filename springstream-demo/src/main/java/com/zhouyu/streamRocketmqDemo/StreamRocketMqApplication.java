package com.zhouyu.streamRocketmqDemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @Description:
 * @Author:zhouyu
 * @Time:2019/4/14 22:11
 */
@SpringBootApplication
@EnableDiscoveryClient
public class StreamRocketMqApplication {
    public static void main(String[] args) {
        SpringApplication.run(StreamRocketMqApplication.class, args);
    }

}
