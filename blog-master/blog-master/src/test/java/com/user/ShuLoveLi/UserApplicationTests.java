package com.user.ShuLoveLi;

import com.user.ShuLoveLi.SystemControl.Config.security.UserDetailsServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.ApplicationContext;

@SpringBootTest
class UserApplicationTests {
    private final TestCustomer testCustomer;
    @Autowired // 字段注入
    ApplicationContext applicationContext;

    /**该注入方式使用方法参数注入 有多个类型时使用@Qualifer指定注入名称*/
    UserApplicationTests(@Qualifier("testCustomerLow") TestCustomer testCustomer) {
        this.testCustomer = testCustomer;
    }
//    @Test
//        // 做测测试学习使用，打印当前IOC容器的全部Bean
//    void contextLoads() {
////        String[] beanDefinitionNames = applicationContext.getBeanDefinitionNames();
////        for (String i : beanDefinitionNames) {
////            System.out.println(i);
////        }
//        System.out.println(applicationContext.getBean(UserDetailsServiceImpl.class)); // 打印字段注入时为空的UserDetailsService Bean
//    }

    @Test
    // 使用具有字父类关系的类测试 Autowired注解的效果
    void testAutowired() {
        String customerType = testCustomer.getCustomerType();
        System.out.println(customerType);
    }


}
